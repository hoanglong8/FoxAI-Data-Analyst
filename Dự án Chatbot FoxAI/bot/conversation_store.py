import json
import os

CONVERSATION_FILE = "user_conversations.json"

def load_conversations():
    if not os.path.exists(CONVERSATION_FILE):
        return {}
    try:
        with open(CONVERSATION_FILE, "r", encoding="utf-8") as f:
            return json.load(f)
    except json.JSONDecodeError:
        return {}

def save_conversations(conversations):
    with open(CONVERSATION_FILE, "w", encoding="utf-8") as f:
        json.dump(conversations, f, ensure_ascii=False, indent=4)

def get_user_conversation(user_id):
    all_conversations = load_conversations()
    return all_conversations.get(str(user_id), [])

def update_user_conversation(user_id, conversation):
    all_conversations = load_conversations()
    all_conversations[str(user_id)] = conversation
    save_conversations(all_conversations)
