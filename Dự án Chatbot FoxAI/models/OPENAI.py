from openai import OpenAI

def configure_openai(openai_api_key):
    client = OpenAI(api_key=openai_api_key)
    return client

def get_openai_response(client, user_id, user_message, user_conversations):
    if user_id not in user_conversations:
        user_conversations[user_id] = []
    user_conversations[user_id].append({"role": "user", "content": user_message})

    stream = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=user_conversations[user_id],
        stream=True,
        temperature=0.5,
        max_tokens=5000,
        top_p=0.9
    )
    response = ""
    for chunk in stream:
        if chunk.choices[0].delta.content:
            response += chunk.choices[0].delta.content
    user_conversations[user_id].append({"role": "assistant", "content": response})
    return response
