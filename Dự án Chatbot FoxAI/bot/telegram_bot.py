import telebot
from models.GEMINI import configure_gemini, get_gemini_response
from models.OPENAI import configure_openai, get_openai_response
from models.DEEPSEEK import configure_deepseek, get_deepseek_response
import os
from dotenv import load_dotenv

# Nạp các biến môi trường
load_dotenv()

# Lấy API key từ các biến môi trường
telegram_token = os.getenv("TELEGRAM_TOKEN")
gemini_token = os.getenv("GEMINI_TOKEN")
openai_api_key = os.getenv("OPEN_AI_TOKEN")
deepseek_token = os.getenv("DEEPSEEK_TOKEN")

# Khởi tạo bot Telegram
bot = telebot.TeleBot(telegram_token)

# Khởi tạo biến toàn cục
current_model = None
user_states = {}  # Dùng để lưu trạng thái người dùng (đã chọn mô hình hay chưa)

# Cấu hình các mô hình
gemini_model = configure_gemini(gemini_token)
openai_client = configure_openai(openai_api_key)
deepseek_client = configure_deepseek(deepseek_token)

# Lưu trữ cuộc trò chuyện người dùng
openai_conversations = {}

# Tạo bảng chào mừng và bàn phím Inline để lựa chọn mô hình
def send_welcome(message):
    welcome_message = (
        "🌟 **Chào mừng bạn đến với Bot phân tích thông minh!** 🌟\n\n"
        "Chúng tôi hỗ trợ 3 mô hình AI mạnh mẽ để bạn lựa chọn:\n"
        "- **Gemini**: Phân tích dữ liệu và tạo phản hồi thông minh.\n"
        "- **OpenAI**: Tạo ra các phản hồi sáng tạo từ các mô hình mạnh mẽ nhất.\n"
        "- **DeepSeek**: Phân tích và giải thích các nội dung phức tạp.\n\n"
        "👉 **Cách sử dụng bot**:\n"
        "1. **Chọn mô hình AI**: Bấm vào một trong ba nút dưới đây để chọn mô hình bạn muốn sử dụng.\n"
        "2. **Gửi tin nhắn**: Bạn có thể gửi tin nhắn văn bản hoặc hình ảnh cho bot.\n"
        "3. **Nhận phản hồi**: Bot sẽ trả lời câu hỏi hoặc phân tích ảnh bạn gửi.\n\n"
        "🔄 **Lệnh /reset**: Nếu bạn muốn chọn lại mô hình, bấm **/reset** để bắt đầu lại.\n"
        "📝 **Ví dụ**: Bạn có thể hỏi bot những câu hỏi như 'Ngày hôm nay thế nào?' hoặc gửi một bức ảnh và yêu cầu bot phân tích nó.\n\n"
        "Chúc bạn có một trải nghiệm thú vị! 🎉"
    )
    markup = telebot.types.InlineKeyboardMarkup()
    item1 = telebot.types.InlineKeyboardButton("Gemini", callback_data='Gemini')
    item2 = telebot.types.InlineKeyboardButton("OpenAI", callback_data='OpenAi')
    item3 = telebot.types.InlineKeyboardButton("DeepSeek", callback_data='Deepseek')
    markup.add(item1, item2, item3)

    bot.send_message(message.chat.id, welcome_message, reply_markup=markup)

# Xử lý lựa chọn của người dùng
@bot.callback_query_handler(func=lambda call: True)
def handle_query(call):
    global current_model  # Đảm bảo sử dụng biến toàn cục
    user_id = call.from_user.id
    if call.data == 'Gemini':
        bot.answer_callback_query(call.id, "Bạn đã chọn Gemini!")
        current_model = "gemini"  # Cập nhật chính xác tên mô hình
    elif call.data == 'OpenAi':
        bot.answer_callback_query(call.id, "Bạn đã chọn OpenAI!")
        current_model = "openai"  # Cập nhật chính xác tên mô hình
    elif call.data == 'Deepseek':
        bot.answer_callback_query(call.id, "Bạn đã chọn DeepSeek!")
        current_model = "deepseek"  # Cập nhật chính xác tên mô hình
    
    user_states[call.from_user.id] = current_model  # Lưu lại trạng thái người dùng (đã chọn mô hình)
    bot.send_message(call.message.chat.id, f"Đang sử dụng mô hình: {current_model}")

# Lệnh reset: Cho phép người dùng chọn lại mô hình
@bot.message_handler(commands=['reset'])
def reset(message):
    user_id = message.from_user.id
    user_states[user_id] = None  # Đặt lại trạng thái người dùng
    bot.send_message(message.chat.id, "Mô hình đã được đặt lại. Hãy chọn lại mô hình bạn muốn sử dụng.")
    send_welcome(message)  # Gửi bảng chào mừng để người dùng chọn lại mô hình

# Xử lý tin nhắn của người dùng và hiển thị bảng chào mừng (nếu chưa chọn mô hình)
@bot.message_handler(func=lambda message: True)
def handle_message(message):
    global current_model  # Đảm bảo sử dụng biến toàn cục
    user_message = message.text
    user_id = message.from_user.id
    print(f"Tin nhắn người dùng {user_id}: {user_message}")
    
    # Gửi bảng chào mừng ngay khi người dùng gửi bất kỳ tin nhắn nào nếu chưa chọn mô hình
    if user_id not in user_states or user_states[user_id] is None:
        send_welcome(message)  # Gửi bảng chào mừng
        return  # Dừng lại và chờ người dùng chọn mô hình
    
    # Lấy phản hồi từ mô hình đã chọn
    if current_model == "gemini":
        response = get_gemini_response(gemini_model, user_message)
    elif current_model == "openai":
        response = get_openai_response(openai_client, user_id, user_message, openai_conversations)
    elif current_model == "deepseek":
        response = get_deepseek_response(deepseek_client, user_message)
    else:
        response = "Có lỗi xảy ra trong quá trình xử lý mô hình."
    
    # Kiểm tra xem response có trống không
    if not response.strip():  # Nếu response là chuỗi trống hoặc chỉ chứa khoảng trắng
        response = "Xin lỗi, tôi không thể hiểu yêu cầu của bạn. Hãy thử lại với một câu hỏi khác."

    # Kiểm tra nếu response vẫn trống, tránh gửi tin nhắn trống
    if response:
        bot.reply_to(message, response)
    else:
        bot.reply_to(message, "Có lỗi trong việc xử lý yêu cầu. Vui lòng thử lại sau.")

# Bắt đầu chạy bot
bot.infinity_polling()