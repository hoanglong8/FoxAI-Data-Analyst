import telebot
from openai import OpenAI
from dotenv import load_dotenv
import os

# Nạp các biến từ file .env
load_dotenv()

# Lấy API key từ các biến môi trường
TELEGRAM_API = os.getenv("TELEGRAM_TOKEN")
DEEPSEEK_API = os.getenv("DEEPSEEK_TOKEN")

# Khởi tạo bot Telegram
bot = telebot.TeleBot(TELEGRAM_API, parse_mode=None)

# Cấu hình API DeepSeek
client = OpenAI(api_key=DEEPSEEK_API, base_url="https://api.deepseek.com/v1")

# Hàm xử lý văn bản (text)
@bot.message_handler(func=lambda message: message.text is not None)
def handle_text(message):
    user_message = message.text  # Lấy tin nhắn người dùng
    print(f"Tin nhắn người dùng: {user_message}")
    
    try:
        # Gửi câu hỏi người dùng vào DeepSeek API để phân tích
        response = client.chat.completions.create(
            model="deepseek-chat",  # Sử dụng model deepseek-chat của DeepSeek
            messages=[
                {"role": "system", "content": "You are a helpful assistant"},
                {"role": "user", "content": user_message},
            ],
            stream=False  # Không sử dụng stream
        )

        # Lấy câu trả lời từ DeepSeek
        answer = response.choices[0].message.content
        bot.reply_to(message, answer)
    except Exception as e:
        bot.reply_to(message, f"Đã có lỗi xảy ra khi trả lời câu hỏi: {e}")

# Bắt đầu chạy bot Telegram
bot.infinity_polling()
