import os
import base64
import fitz  # PyMuPDF for extracting text from PDFs
import openai  # OpenAI SDK

def configure_openai(openai_api_key):
    """Khởi tạo OpenAI client với API key."""
    if not openai_api_key:
        raise ValueError("⚠️ OPENAI_API_KEY chưa được thiết lập trong biến môi trường!")
    
    client = openai.OpenAI(api_key=openai_api_key)
    return client

# ✅ Hàm xử lý tin nhắn văn bản
def get_openai_response(client, user_id, user_message, user_conversations):
    """
    Nhận tin nhắn văn bản từ người dùng, gửi tới OpenAI, 
    và trả về phản hồi dưới dạng chuỗi.
    """
    if user_id not in user_conversations:
        user_conversations[user_id] = []

    # Thêm tin nhắn người dùng vào lịch sử
    user_conversations[user_id].append({"role": "user", "content": user_message})

    # Gọi API OpenAI
    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=user_conversations[user_id],
        temperature=0.5,
        max_tokens=1500,
        top_p=0.9
    )

    # Lấy nội dung phản hồi
    reply = response.choices[0].message.content
    # Lưu vào lịch sử hội thoại
    user_conversations[user_id].append({"role": "assistant", "content": reply})

    return reply

# ✅ Hỗ trợ đọc ảnh
def encode_image(image_path):
    """Chuyển đổi ảnh sang base64 để gửi đến OpenAI."""
    if not os.path.exists(image_path):
        raise FileNotFoundError(f"❌ Ảnh không tồn tại: {image_path}")
    
    with open(image_path, "rb") as f:
        image_binary = f.read()
    base64_image = base64.b64encode(image_binary).decode("utf-8")
    return f"data:image/png;base64,{base64_image}"

def get_openai_image_response(client, user_id, image_path, user_conversations):
    """Gửi ảnh đến OpenAI GPT-4o để phân tích."""
    if user_id not in user_conversations:
        user_conversations[user_id] = []
    
    data_url = encode_image(image_path)
    
    system_message = {
        "role": "system",
        "content": "Bạn là một AI có khả năng phân tích hình ảnh với GPT-4o."
    }
    
    user_message = {
        "role": "user",
        "content": [
            {"type": "text", "text": "Analyze this image."},
            {"type": "image_url", "image_url": {"url": data_url}}
        ]
    }
    
    user_conversations[user_id].append(system_message)
    user_conversations[user_id].append(user_message)
    
    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=user_conversations[user_id],
        temperature=0.5,
        max_tokens=1500,
        top_p=0.9
    )
    
    reply = response.choices[0].message.content
    user_conversations[user_id].append({"role": "assistant", "content": reply})
    return reply

# ✅ Hỗ trợ đọc PDF
def extract_text_from_pdf(pdf_path):
    """Trích xuất văn bản từ file PDF."""
    if not os.path.exists(pdf_path):
        raise FileNotFoundError(f"❌ Lỗi: File PDF không tồn tại! Kiểm tra đường dẫn: {pdf_path}")

    text = ""
    try:
        with fitz.open(pdf_path) as doc:
            for page in doc:
                text += page.get_text("text") + "\n"
    except Exception as e:
        raise ValueError(f"🚨 Lỗi khi đọc PDF: {str(e)}")
    
    return text[:5000]  # Giới hạn 5000 ký tự để tránh quá tải token

def get_openai_pdf_response(client, user_id, pdf_path, user_conversations):
    """Đọc nội dung PDF, gửi lên GPT để tóm tắt hoặc phân tích."""
    pdf_text = extract_text_from_pdf(pdf_path)

    if user_id not in user_conversations:
        user_conversations[user_id] = []

    user_message = {
        "role": "user",
        "content": f"Đây là nội dung của file PDF:\n\n{pdf_text}\n\nVui lòng tóm tắt tài liệu này."
    }
    
    user_conversations[user_id].append(user_message)

    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=user_conversations[user_id],
        temperature=0.7,
        max_tokens=900,
        top_p=0.9
    )

    reply = response.choices[0].message.content
    user_conversations[user_id].append({"role": "assistant", "content": reply})
    return reply

if __name__ == "__main__":
    openai_api_key = os.getenv("OPENAI_API_KEY")
    client = configure_openai(openai_api_key)
    user_conversations = {}
    user_id = "user_123"

    # 🖼️ Test đọc ảnh
    image_path = "C:/Users/Admin/Pictures/Camera Roll/sample_image.jpg"
    
    try:
        image_response = get_openai_image_response(client, user_id, image_path, user_conversations)
        print("Assistant's Reply (Image Analysis):\n", image_response)
    except Exception as e:
        print("🚨 Lỗi xử lý ảnh:", e)

    # 📄 Test đọc PDF
    pdf_path = "C:/Users/ADMIN/Downloads"
    
    try:
        pdf_response = get_openai_pdf_response(client, user_id, pdf_path, user_conversations)
        print("Assistant's Reply (PDF Analysis):\n", pdf_response)
    except Exception as e:
        print("🚨 Lỗi xử lý PDF:", e)
