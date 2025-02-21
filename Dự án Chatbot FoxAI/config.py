import os
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

# Fetch the API keys from the environment variables
telegram_token = os.getenv("TELEGRAM_TOKEN")
gemini_token = os.getenv("GEMINI_TOKEN")
openai_api_key = os.getenv("OPEN_AI_TOKEN")
deepseek_token = os.getenv("DEEPSEEK_TOKEN")

