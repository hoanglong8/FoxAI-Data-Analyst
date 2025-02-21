import google.generativeai as genai

# Cấu hình Gemini API
def configure_gemini(gemini_token):
    genai.configure(api_key=gemini_token)
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
    return model

def get_gemini_response(model, user_message):
    chat_session = model.start_chat(
        history=[{"role": "user", "parts": [user_message]}]
    )
    return chat_session.send_message(user_message).text
