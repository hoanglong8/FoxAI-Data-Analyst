import google.generativeai as genai
import telebot
import os
from dotenv import load_dotenv

# Load environment variables from the .env file
load_dotenv()

# Fetch the API keys from the environment variables
telegram_token = os.getenv("TELEGRAM_TOKEN")
gemini_token = os.getenv("GEMINI_TOKEN")

# Configure Gemini API key
genai.configure(api_key=gemini_token)

# Create the model
generation_config = {
    "temperature": 1,
    "top_p": 0.95,
    "top_k": 40,
    "max_output_tokens": 8192,
    "response_mime_type": "text/plain",
}

model = genai.GenerativeModel(
    model_name="gemini-2.0-flash",
    generation_config=generation_config,
)

# Initialize Telegram bot
bot = telebot.TeleBot(telegram_token)

# Start a chat session
def start_chat():
    return model.start_chat(
        history=[
            {
                "role": "user",
                "parts": ["Chào bạn\n"],
            },
            {
                "role": "model",
                "parts": ["Chào bạn! Rất vui được trò chuyện với bạn. Bạn có gì cần mình giúp không?\n"],
            },
        ]
    )

chat_session = start_chat()

# Handler for text messages
@bot.message_handler(func=lambda message: True)
def handle_message(message):
    user_message = message.text
    print(f"Tin nhắn người dùng: {user_message}")

    # Send message to Gemini model and get response
    response = chat_session.send_message(user_message)
    
    # Send the response back to the user
    bot.reply_to(message, response.text)

# Handler for when a user sends a photo
@bot.message_handler(content_types=['photo'])
def handle_photo(message):
    file_info = bot.get_file(message.photo[-1].file_id)
    file_url = f'https://api.telegram.org/file/bot{telegram_token}/{file_info.file_path}'
    
    # For now, we'll simply acknowledge receiving the image and send a placeholder response
    bot.reply_to(message, "Ảnh đã được nhận. Đang phân tích...")

    # Here you can add logic to process the image using Gemini or another model

# Start polling for messages
bot.infinity_polling()
