# Kỹ thuật Prompt Engineering để tối ưu hóa phản hồi trên các mô hình ngôn ngữ lớn LLM

## Nội dung

1.[Prompt](https://github.com/hoanglong8/FoxAI-Data-Analyst/edit/main/D%E1%BB%B1%20%C3%A1n%20Chatbot%20FoxAI/%5BFoxAI%5D%20Prompt%20Engineer.md) và các khái niệm liên quan

2.Các dạng [cấu trúc](https://github.com/hoanglong8/FoxAI-Data-Analyst/edit/main/D%E1%BB%B1%20%C3%A1n%20Chatbot%20FoxAI/%5BFoxAI%5D%20Prompt%20Engineer.md) của 1 prompt

3.Một số [ví dụ](https://github.com/hoanglong8/FoxAI-Data-Analyst/edit/main/D%E1%BB%B1%20%C3%A1n%20Chatbot%20FoxAI/%5BFoxAI%5D%20Prompt%20Engineer.md) tham khảo

4.[Thực hành](https://github.com/hoanglong8/FoxAI-Data-Analyst/edit/main/D%E1%BB%B1%20%C3%A1n%20Chatbot%20FoxAI/%5BFoxAI%5D%20Prompt%20Engineer.md)

## 1.Prompt và các khái niệm liên quan (token, temperature...)

### 1.1. Khái niệm Prompt

Prompt là lời nhắc, câu lệnh hoặc câu hỏi mà người dùng nhập vào để tương tác với mô hình ngôn ngữ lớn (LLM - Large Language Model) như ChatGPT. Nói cách khác, prompt là cách bạn hướng dẫn AI để nhận được câu trả lời mong muốn.

Ví dụ:

👉 Prompt đơn giản: "Hãy giải thích khái niệm AI là gì?"

👉 Prompt nâng cao: "Hãy giải thích AI theo cách dễ hiểu cho một học sinh lớp 10, sử dụng ví dụ thực tế."

💡 Lưu ý: Cùng một câu hỏi, nhưng cách đặt prompt khác nhau có thể dẫn đến các câu trả lời hoàn toàn khác!

### 1.2. Cơ chế LLMs nhận diện và phản hồi Prompt

Mô hình ngôn ngữ như ChatGPT hoạt động dựa trên dự đoán `từ tiếp theo`, và quá trình phản hồi prompt lại trải qua các bước như sau:

🔹 Bước 1: Nhận diện và mã hóa Prompt thành Token

Token là đơn vị nhỏ nhất mà mô hình xử lý khi phân tích văn bản. Một token có thể là một từ, một phần của từ, hoặc một ký tự. Khi bạn nhập một prompt, LLM sẽ chuyển đổi câu hỏi thành token (đơn vị xử lý ngôn ngữ).

Ví dụ, bạn nhập:

👉 "Tóm tắt bài viết về trí tuệ nhân tạo."

Mô hình sẽ tách thành các token, ví dụ:

["Tóm", " tắt", " bài", " viết", " về", " trí", " tuệ", " nhân", " tạo", "."]

🔹 Bước 2: Phân tích ngữ cảnh
Dựa trên các token, mô hình sẽ:
Xác định loại yêu cầu (tóm tắt, giải thích, tạo nội dung, v.v.).
Hiểu từ khóa chính trong câu (ví dụ: trí tuệ nhân tạo).
Định hướng phản hồi dựa trên yêu cầu của prompt (ví dụ: tóm tắt thay vì mô tả chi tiết).
📌 Nếu prompt thiếu ngữ cảnh, mô hình có thể đoán sai hoặc đưa ra câu trả lời không mong muốn.

💡 Ví dụ:
❌ "Tóm tắt bài viết." → Quá mơ hồ, AI không biết bài viết nào.
✅ "Tóm tắt bài viết về trí tuệ nhân tạo trong 100 từ." → Rõ ràng hơn.

🔹 Bước 3: Truy vấn bộ nhớ ngữ cảnh (Context Window)
LLM sử dụng bộ nhớ ngữ cảnh (Context Window) để nhớ nội dung trước đó trong cuộc trò chuyện.
GPT-4 có thể ghi nhớ khoảng 8.000 token (~6.000 từ), GPT-4 Turbo có thể lên đến 128.000 token.
Điều này giúp mô hình:
Nhớ những gì bạn đã hỏi trước đó.
Duy trì mạch logic của cuộc hội thoại.
📌 Lưu ý: Nếu prompt quá dài và vượt quá giới hạn token, mô hình có thể "quên" thông tin ban đầu.

🔹 Bước 4: Dự đoán và tạo phản hồi
Dựa trên ngữ cảnh của prompt, LLM tính toán xác suất của từ tiếp theo có thể xuất hiện.
Ví dụ:
Nếu prompt là: "Trí tuệ nhân tạo là"
Mô hình có thể dự đoán các từ tiếp theo như:
"một lĩnh vực khoa học máy tính..." (80% xác suất)
"một công nghệ tiên tiến..." (15% xác suất)
"rất quan trọng trong thời đại số..." (5% xác suất)
Mô hình chọn câu trả lời có xác suất cao nhất.
🔹 Bước 5: Tối ưu hóa phản hồi (Temperature, Top-k, Top-p)
Temperature: Quyết định độ sáng tạo của câu trả lời.
0.0 → Logic, ít sáng tạo.
1.0 → Đa dạng, sáng tạo hơn.
Top-k Sampling: Giới hạn số lượng từ dự đoán để tránh câu trả lời không hợp lý.
Top-p Sampling (Nucleus Sampling): Chỉ chọn những từ có xác suất cộng dồn cao hơn một ngưỡng nhất định.
💡 Ví dụ:

Với Temperature = 0.2 → "AI là một công nghệ giúp máy tính học hỏi từ dữ liệu."
Với Temperature = 1.0 → "AI là bộ não kỹ thuật số giúp con người sáng tạo ra những điều tuyệt vời."
🔹 Bước 6: Kiểm tra và điều chỉnh đầu ra
Sau khi tạo phản hồi, LLM sẽ kiểm tra:
Có lỗi logic không?
Có phù hợp với prompt không?
Có vi phạm chính sách không?
Nếu cần, mô hình có thể điều chỉnh lại câu trả lời trước khi hiển thị cho người dùng.
3. Cách tối ưu Prompt để có phản hồi tốt nhất
1️⃣ Rõ ràng, cụ thể:

❌ "Viết bài về AI."
✅ "Viết bài 500 từ về lịch sử và ứng dụng AI trong y tế."
2️⃣ Cung cấp ngữ cảnh:

❌ "Dịch đoạn văn này."
✅ "Dịch đoạn văn này sang tiếng Anh với giọng văn trang trọng."
3️⃣ Sử dụng định dạng hướng dẫn:

📌 "Tạo danh sách 5 lợi ích của AI, mỗi lợi ích không quá 20 từ."
4️⃣ Kết hợp vai trò và phong cách viết:

📌 "Bạn là một chuyên gia AI, hãy giải thích AI như đang giảng dạy cho sinh viên năm nhất."
5️⃣ Yêu cầu định dạng đầu ra:

📌 "Tóm tắt bài viết thành một bảng gồm 3 cột: Ý chính, Giải thích, Ví dụ."


## 2.Cấu trúc 1 prompt đầy đủ dạng UI (giao diện người dùng)

Sử dụng mô hình DeepSeek R1 [tại đây](https://www.together.ai/models/deepseek-r1)

![Hình ảnh 1](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Prompt_UI.png)

## 2.Cấu trúc 1 prompt dạng lệnh code qua API

![Hình ảnh 2](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Prompt_API.png)

* **Temperature:** Mức độ sáng tạo và tính ngẫu nhiên của mô hình (t = 0 là không sáng tạo, t = 2 là sáng tạo tối đa).

* **Max token output:** Giới hạn số token đầu ra tối đa cho 1 lần phản hồi để tránh ảnh hưởng tới hệ thống, thường từ 2.000 - 5.000 token (khoảng 4.000 từ tiếng Việt).

* **Top-p:** Điều chỉnh xác suất dự đoán cho từ (token) tiếp theo, p càng cao càng giúp tạo ra phản hồi đa dạng, trôi chảy và tự nhiên hơn (p ~ 100% là tự do, đa dạng lựa chọn nhất, thường để p = 0,95).

* **Top-k:** Giới hạn số lượng lựa chọn cho từ (token) tiếp theo, giúp tăng tốc quá trình tạo và có thể cải thiện chất lượng của văn bản được tạo (k thường để mặc định từ 40-50 lựa chọn cho từ tiếp theo).

* **Repetition Penalty (lỗi lặp lại):** Thường đặt = 1 để giảm khả năng lặp lại hoặc bị kẹt trong vòng lặp phản hồi.

* **stop:** Phản hồi sẽ dừng lại khi gặp ký tự nào, ví dụ: dấu kết thúc câu `<｜end▁of▁sentence｜>`.

* **role:** Vai trò của mô hình, ví dụ như là 1 chuyên gia về lĩnh vực ...

* **stream=True:** Phản hồi được viết ra liên tục giống như đang có người gõ chữ.

## 3.Cấu trúc 1 prompt đầy đủ

* **Ngữ cảnh:** Tình trạng hiện tại, tôi là ai, tôi đang có những gì…

* **Mục tiêu:** Tôi cần gì, tôi muốn đi đến đâu…

* **Vai trò:** Bạn là một chuyên gia trong lĩnh vực…

* **Hành động:** Tìm kiếm thông tin (fact, không thêm, không bịa), sáng tạo (creative, tính mới), phân tích (analyst, giải thích lý do), tư vấn (advice, dự báo), tóm tắt, tổng hợp...

* **Đầu ra:** Định dạng (markdown, văn bản, bảng), độ dài ký tự, phong cách…

![Hình ảnh](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Prompt_Engineer_1.png)

## 4.Tham khảo một số prompt mẫu

1.[Vidtools.online](https://vidtools.online/prompt/?fbclid=IwY2xjawH52xNleHRuA2FlbQIxMAABHQmUnsLgM-KtlYNExUHshjohNp7ldi_waccPqsetSl14KGrD4tP5HgdQLg_aem__6ueV2_du0xoyIEVOOC-IA)

Lĩnh vực marketing - bán hàng
```
Vui lòng cung cấp danh sách chi tiết các tiêu đề quảng cáo sáng tạo sẽ thu hút sự chú ý trên phương tiện truyền thông xã hội cho sản phẩm [[TÊN SẢN PHẨM]]. Hãy cân nhắc đến đối tượng mục tiêu [[ĐỐI TƯỢNG MỤC TIÊU]], xu hướng hiện tại [[XU HƯỚNG HIỆN TẠI]] và các điểm bán hàng độc đáo của sản phẩm [[ĐIỂM BÁN HÀNG ĐỘC ĐÁO]]. Các tiêu đề phải hấp dẫn, sáng tạo và phù hợp với các nền tảng như Facebook, Instagram hoặc Twitter. Bao gồm một lời giải thích ngắn gọn cho mỗi tiêu đề về lý do tại sao nó sẽ có hiệu quả trong việc thu hút sự quan tâm của đối tượng.
```
```
Tạo chiến dịch thương mại điện tử cho sản phẩm A của thương hiệu B – đây là một thương hiệu mới được đẩy lên trên thương mại điện tử. Bạn hãy đề xuất các biện pháp phù hợp để xây dựng chiến dịch, bao gồm các chiến lược tăng nhận thức về thương hiệu, thu hút khách hàng tiềm năng, và tạo niềm tin từ người tiêu dùng. Các biện pháp có thể bao gồm: tối ưu hóa trang sản phẩm trên các nền tảng thương mại điện tử, sử dụng quảng cáo trả tiền (PPC), tiếp thị qua mạng xã hội, các chương trình khuyến mãi, và xây dựng các chương trình khách hàng thân thiết để thúc đẩy doanh số bán hàng.
```
```
Gợi ý cho tôi [số] biện pháp hiệu quả để thu hút nhóm đối tượng khách hàng tiềm năng cho sản phẩm A. Mỗi biện pháp nên được mô tả chi tiết, bao gồm cách thức triển khai và lý do tại sao nó phù hợp với nhóm đối tượng mục tiêu. Các biện pháp cần sáng tạo và dễ áp dụng, từ chiến lược marketing trực tuyến đến các hoạt động quảng bá ngoại tuyến, nhằm tối ưu hóa sự thu hút và tăng khả năng chuyển đổi khách hàng.
```
```
Nghiên cứu chân dung khách hàng phù hợp với sản phẩm A. Bạn cần xác định các đặc điểm chính của khách hàng tiềm năng bao gồm độ tuổi, giới tính, thu nhập, sở thích, thói quen mua sắm, và các yếu tố tâm lý ảnh hưởng đến quyết định mua hàng. Nghiên cứu cũng cần đề xuất các kênh marketing và thông điệp phù hợp để tiếp cận nhóm khách hàng này hiệu quả nhất. Từ đó, xây dựng các chiến lược tiếp thị nhắm đến đối tượng mục tiêu, nhằm tối ưu hóa khả năng chuyển đổi và tăng trưởng doanh số.
```

2.[Prompts.chat](https://prompts.chat/)
