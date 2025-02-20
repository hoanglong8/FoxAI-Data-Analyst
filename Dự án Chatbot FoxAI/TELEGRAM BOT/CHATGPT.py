import telebot
from openai import OpenAI
from dotenv import load_dotenv
import os

# Load environment variables from the .env file
load_dotenv()

# Fetch the API keys from the environment variables
telegram_token = os.getenv("TELEGRAM_TOKEN")
openai_api_key = os.getenv("OPEN_AI_TOKEN")

# Initialize the bot and OpenAI client
bot = telebot.TeleBot(telegram_token, parse_mode=None)
client = OpenAI(api_key=openai_api_key)  # Khởi tạo OpenAI client từ OpenAI class

# Lưu trữ lịch sử tin nhắn của người dùng
user_conversations = {}

# Lắng nghe tin nhắn từ người dùng
@bot.message_handler(func=lambda message: True)
def echo_all(message):
    user_message = message.text  # Lấy tin nhắn người dùng
    user_id = message.from_user.id  # Lấy ID của người dùng để phân biệt các cuộc trò chuyện

    print(f"Tin nhắn người dùng {user_id}: {user_message}")

    # Nếu người dùng chưa có cuộc trò chuyện, khởi tạo lịch sử tin nhắn
    if user_id not in user_conversations:
        user_conversations[user_id] = []

    # Lưu tin nhắn của người dùng vào lịch sử cuộc trò chuyện
    user_conversations[user_id].append({"role": "user", "content": user_message})

    # Các tham số của OpenAI
    temp = 0.5  # Nhiệt độ (temperature), điều chỉnh độ ngẫu nhiên
    token = 5000  # Số lượng token tối đa
    topp = 0.9  # Nucleus sampling, xác suất tích lũy của token được xét đến

    # Gửi tin nhắn của người dùng vào OpenAI để lấy phản hồi
    stream = client.chat.completions.create(
        model="gpt-4o-mini",  # Thay "gpt-4o-mini" bằng mô hình bạn muốn sử dụng
        messages=user_conversations[user_id],  # Gửi toàn bộ lịch sử tin nhắn
        stream=True,  # Enable streaming
        temperature=temp,  # Nhiệt độ
        max_tokens=token,  # Số lượng token tối đa
        top_p=topp  # Nucleus sampling
    )

    # Xử lý dữ liệu trả về từ OpenAI trong chế độ stream
    response = ""
    for chunk in stream:
        if chunk.choices[0].delta.content is not None:
            response += chunk.choices[0].delta.content
            print(chunk.choices[0].delta.content, end="")

    # Lưu lại phản hồi của OpenAI vào lịch sử tin nhắn
    user_conversations[user_id].append({"role": "assistant", "content": response})

    signature = (
        "\n\n✨ Trân trọng,\n"
        "🚀 FoxAI Chat | Một sản phẩm của Công ty Cổ phần Công nghệ FoxAI\n"
        "🌍 Website: https://fox.ai.vn/\n"
        "🏢 Địa chỉ: Tầng 29, Tòa Đông, Lotte Center Hà Nội, 54 Liễu Giai, Ba Đình, Hà Nội\n"
        "☎️ Tổng đài: 0246 254 4578 | 📧 Email: info@fox.ai.vn\n"
        "📞 Hotline CSKH: 0973 712 390\n"
        "📌 Fanpage: https://facebook.com/foxai.vn"
    )

    bot.reply_to(message, response + signature)

# Bắt đầu chạy bot Telegram
bot.infinity_polling()
