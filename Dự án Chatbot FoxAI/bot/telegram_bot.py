import os
import json
from datetime import datetime
import telebot
# Không cần load_dotenv() nữa vì config.py đã làm điều đó
from config import telegram_token, gemini_token, openai_api_key, deepseek_token

# ----------------------------- PHẦN QUẢN LÝ CUỘC HỘI THOẠI -----------------------------
CONVERSATION_FILE = "user_conversations.json"

def load_conversations():
    """Đọc toàn bộ cuộc hội thoại của tất cả user từ file JSON."""
    if not os.path.exists(CONVERSATION_FILE):
        return {}
    try:
        with open(CONVERSATION_FILE, "r", encoding="utf-8") as f:
            return json.load(f)
    except json.JSONDecodeError:
        return {}

def save_conversations(conversations):
    """Ghi toàn bộ cuộc hội thoại của tất cả user vào file JSON."""
    with open(CONVERSATION_FILE, "w", encoding="utf-8") as f:
        json.dump(conversations, f, ensure_ascii=False, indent=4)

def get_user_conversation(user_id):
    """Lấy lịch sử hội thoại của một user cụ thể (dạng list)."""
    all_conversations = load_conversations()
    return all_conversations.get(str(user_id), [])

def update_user_conversation(user_id, conversation):
    """Cập nhật lịch sử hội thoại cho user_id, rồi lưu lại toàn bộ."""
    all_conversations = load_conversations()
    all_conversations[str(user_id)] = conversation
    save_conversations(all_conversations)
# -----------------------------------------------------------------------------------

# Import các hàm từ models
from models.GEMINI import configure_gemini, get_gemini_response
from models.OPENAI import configure_openai, get_openai_response, get_openai_image_response, get_openai_pdf_response
from models.DEEPSEEK import configure_deepseek, get_deepseek_response

# Import hàm lưu log từ logger.py (ở cùng package bot)
from .logger import save_message

# Khởi tạo bot Telegram
bot = telebot.TeleBot(telegram_token)

# Khởi tạo các mô hình AI
gemini_model = configure_gemini(gemini_token)
openai_client = configure_openai(openai_api_key)
deepseek_client = configure_deepseek(deepseek_token)

# Lưu trạng thái người dùng và lịch sử hội thoại tạm thời cho OpenAI
user_states = {}
openai_conversations = {}

# Gửi menu lựa chọn mô hình
def send_welcome(message):
    welcome_message = (
        "🌟 Chào mừng bạn đến với Fox-AI Chatbot! 🌟\n\n"
        "Chúng tôi có 3 mô hình AI mạnh mẽ để bạn lựa chọn:\n"
        "- *Gemini*   *OpenAI*    *DeepSeek*\n\n"
        "👉 Cách sử dụng bot:\n"
        "1. Chọn mô hình AI: Bấm vào một trong 3 nút dưới đây để chọn.\n"
        "2. Gửi tin nhắn hoặc file: Bạn có thể gửi văn bản, ảnh hoặc PDF.\n"
        "3. Nhận phản hồi: Bot sẽ trả lời ngay lập tức.\n\n"
        "🔄 Gõ /reset để chọn lại mô hình.\n\n"
        "---\n"
        "🚀 FoxAI Chat | Một sản phẩm của Công ty Cổ phần Công nghệ FoxAI\n"
        "☎️ Tổng đài: 0246 254 4578 | 📧 Email: info@fox.ai.vn\n"
        "📞 Hotline CSKH: 0973 712 390\n"
        "📌 Fanpage: https://facebook.com/foxai.vn"
    )
    
    markup = telebot.types.InlineKeyboardMarkup()
    item1 = telebot.types.InlineKeyboardButton("Gemini", callback_data='Gemini')
    item2 = telebot.types.InlineKeyboardButton("OpenAI", callback_data='OpenAI')
    item3 = telebot.types.InlineKeyboardButton("DeepSeek", callback_data='DeepSeek')
    markup.add(item1, item2, item3)

    bot.send_message(message.chat.id, welcome_message, reply_markup=markup)

# Xử lý lựa chọn mô hình
@bot.callback_query_handler(func=lambda call: True)
def handle_query(call):
    user_id = call.from_user.id
    bot.answer_callback_query(call.id, "⏳ Đang xử lý...")

    if call.data == 'Gemini':
        user_states[user_id] = "gemini"
        bot.send_message(call.message.chat.id, "📌 Bạn đã chọn mô hình: Gemini!")
    elif call.data == 'OpenAI':
        user_states[user_id] = "openai"
        bot.send_message(call.message.chat.id, "📌 Bạn đã chọn mô hình: OpenAI!")
    elif call.data == 'DeepSeek':
        user_states[user_id] = "deepseek"
        bot.send_message(call.message.chat.id, "📌 Bạn đã chọn mô hình: DeepSeek!")

    bot.send_message(call.message.chat.id, f"📌 Bạn đang sử dụng mô hình: {user_states[user_id]}")

# Xử lý lệnh reset
@bot.message_handler(commands=['reset'])
def reset(message):
    user_id = message.from_user.id
    user_states[user_id] = None
    bot.send_message(message.chat.id, "🔄 Đã đặt lại mô hình. Vui lòng chọn lại.")
    send_welcome(message)

# ------------------------- XỬ LÝ TIN NHẮN VĂN BẢN -------------------------
@bot.message_handler(func=lambda message: True, content_types=['text'])
def handle_message(message):
    user_message = message.text
    user_id = message.from_user.id

    # Lưu log tin nhắn người dùng
    save_message(user_id, "user", user_message)

    if user_id not in user_states or user_states[user_id] is None:
        send_welcome(message)
        return

    # Lấy conversation của user từ file JSON (nếu dùng)
    conversation = get_user_conversation(user_id)
    conversation.append({"role": "user", "content": user_message})

    current_model = user_states[user_id]
    response = "⚠️ Không có mô hình hợp lệ."

    if current_model == "gemini":
        response = get_gemini_response(gemini_model, user_message)
    elif current_model == "openai":
        response = get_openai_response(openai_client, user_id, user_message, openai_conversations)
    elif current_model == "deepseek":
        response = get_deepseek_response(deepseek_client, user_message)

    # Lưu log phản hồi của bot
    save_message(user_id, "assistant", response)

    conversation.append({"role": "assistant", "content": response})
    update_user_conversation(user_id, conversation)

    bot.reply_to(message, response)

# ----------------------------- XỬ LÝ ẢNH -----------------------------
@bot.message_handler(content_types=['photo'])
def handle_photo(message):
    """Nhận ảnh từ Telegram, gửi đến OpenAI để phân tích."""
    user_id = message.from_user.id

    if user_id not in user_states or user_states[user_id] is None:
        send_welcome(message)
        return

    if user_states[user_id] != "openai":
        bot.reply_to(message, "⚠️ Phân tích ảnh chỉ hỗ trợ khi chọn OpenAI. Vui lòng chọn OpenAI!")
        return

    file_id = message.photo[-1].file_id  
    file_info = bot.get_file(file_id)
    downloaded_file = bot.download_file(file_info.file_path)

    temp_image_path = f"temp_{user_id}.jpg"
    with open(temp_image_path, 'wb') as new_file:
        new_file.write(downloaded_file)

    # Lưu log ảnh (đường dẫn file)
    save_message(user_id, "photo", temp_image_path)

    try:
        response = get_openai_image_response(openai_client, user_id, temp_image_path, openai_conversations)
        bot.reply_to(message, response)
    except Exception as e:
        bot.reply_to(message, f"❌ Lỗi khi phân tích ảnh: {str(e)}")
    finally:
        if os.path.exists(temp_image_path):
            os.remove(temp_image_path)

# ----------------------------- XỬ LÝ PDF -----------------------------
@bot.message_handler(content_types=['document'])
def handle_document(message):
    """Nhận file PDF từ Telegram, trích xuất văn bản và gửi đến OpenAI để phân tích."""
    user_id = message.from_user.id

    if user_id not in user_states or user_states[user_id] is None:
        send_welcome(message)
        return

    if message.document.mime_type != "application/pdf":
        bot.reply_to(message, "⚠️ Hiện tại chỉ hỗ trợ tệp PDF. Vui lòng gửi đúng định dạng!")
        return

    file_id = message.document.file_id
    file_info = bot.get_file(file_id)
    downloaded_file = bot.download_file(file_info.file_path)

    temp_pdf_path = f"temp_{user_id}.pdf"
    with open(temp_pdf_path, 'wb') as new_file:
        new_file.write(downloaded_file)

    # Lưu log file PDF
    save_message(user_id, "pdf", temp_pdf_path)

    try:
        response = get_openai_pdf_response(openai_client, user_id, temp_pdf_path, openai_conversations)
        bot.reply_to(message, response)
    except Exception as e:
        bot.reply_to(message, f"❌ Lỗi khi phân tích PDF: {str(e)}")
    finally:
        if os.path.exists(temp_pdf_path):
            os.remove(temp_pdf_path)

# ---------------------------------------------------------------------

# Chạy bot
bot.infinity_polling()
