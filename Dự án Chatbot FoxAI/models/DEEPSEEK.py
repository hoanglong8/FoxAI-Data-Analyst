from openai import OpenAI

def configure_deepseek(deepseek_token):
    client = OpenAI(api_key=deepseek_token, base_url="https://api.deepseek.com/v1")
    return client

def get_deepseek_response(client, user_message):
    response = client.chat.completions.create(
        model="deepseek-chat",
        messages=[{"role": "system", "content": "You are a helpful assistant"}, {"role": "user", "content": user_message}],
        stream=False
    )
    return response.choices[0].message.content
