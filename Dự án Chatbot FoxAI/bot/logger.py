import json
import os
from datetime import datetime

LOG_FILE_PATH = "chat_logs.json"

def save_message(user_id, role, content):
    """
    Lưu tin nhắn hoặc file gửi đến vào file log JSON.
    - user_id: ID người dùng
    - role: 'user' hoặc 'assistant'
    - content: Nội dung tin nhắn hoặc đường dẫn file
    """
    log_entry = {
        "user_id": user_id,
        "role": role,
        "content": content,
        "timestamp": datetime.now().isoformat()
    }
    
    if not os.path.exists(LOG_FILE_PATH):
        with open(LOG_FILE_PATH, "w", encoding="utf-8") as f:
            json.dump([log_entry], f, ensure_ascii=False, indent=4)
    else:
        with open(LOG_FILE_PATH, "r+", encoding="utf-8") as f:
            try:
                logs = json.load(f)
            except json.JSONDecodeError:
                logs = []
            logs.append(log_entry)
            f.seek(0)
            json.dump(logs, f, ensure_ascii=False, indent=4)
