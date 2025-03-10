# 1.Chiến lược xây dựng sản phẩm Chatbot FoxAI
**1.1.Nguyên tắc xây dựng sản phẩm:** 

`Đứng trên vai những người khổng lồ`, tức là sử dụng lõi LLMs của các nhà phát triển lớn (OpenAI, Google, Meta, Anthropic...), xây dựng thêm các tính năng vệ tinh trên đó để tạo giá trị gia tăng cho từng nhóm khách hàng cụ thể.

**1.2.Giá trị mục tiêu của sản phẩm:** 

Vừa đảm bảo `hỗ trợ công việc` cho các bộ phận trong Doanh nghiệp, vừa đảm bảo phân quyền `bảo mật thông tin` dữ liệu khách hàng.

Như vậy để đáp ứng được `mục tiêu` và `nguyên tắc` trên, dựa trên `mức độ chia sẻ thông tin`, FoxAI đang nghiên cứu xây dựng 2 sản phẩm Chatbot AI là [Public (công khai)](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/docs/Chi%E1%BA%BFn%20l%C6%B0%E1%BB%A3c%20chatbot%20AI.png) và [Private (Bảo mật)](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Workflow_Chatbot_Private.png), chi tiết xem [tại đây:](https://hoanglong8.github.io/FoxAI-Data-Analyst/Chien_luoc_chatbot_FoxAI.html)

![Hình ảnh:](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/docs/Chi%E1%BA%BFn%20l%C6%B0%E1%BB%A3c%20chatbot%20AI.png)

* **Chatbot Public:** Có thể sử dụng cho nhiều người dùng bên ngoài doanh nghiệp, không bị hạn chế truy cập. Với chức năng chính là hướng dẫn người dùng các tính năng và cách khắc phục các lỗi phổ biến khi sử dụng sản phẩm, từ đó giúp bộ phận bảo trì - dịch vụ KH giảm thiểu thời gian, công sức hỗ trợ.
![Mô hình Public](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Chatbot_Public_GPTStores.png)

📌 Đặc điểm:

 ✅ Truy cập mở, ai cũng có thể sử dụng

 ✅ Không cần dữ liệu nhạy cảm, chỉ cung cấp thông tin chung

 ✅ Thường triển khai trên Website, app Mobile, Messenger, Zalo, Telegram, WhatsApp...

📌 Ứng dụng:
* Hỗ trợ khách hàng tự động (FAQ, hướng dẫn sử dụng sản phẩm)
* Chatbot bán hàng, tư vấn
* Tư vấn tài chính, giáo dục, y tế...

📌 Một số phương pháp huấn luyện cho Public Chatbot:
|Phương pháp huấn luyện|	Mô tả	|Khi nào nên dùng|
|---|---|---|
|LangChain + GPT-4o (Truy xuất dữ liệu real-time)	|Chatbot có thể tìm kiếm thông tin từ API, website	|Khi cần chatbot cập nhật dữ liệu mới nhất (tỷ giá, giá vàng, sản phẩm mới)|
|n8n + GPT (No-Code/Low-Code)	|Tạo chatbot dễ dàng mà không cần code|	Khi doanh nghiệp muốn chatbot nhanh chóng tích hợp với CRM, Google Sheets|
|Fine-tuning ChatGPT	|Tạo chatbot có phong cách phản hồi riêng biệt|	Khi muốn chatbot học theo cách nói và phản hồi riêng của thương hiệu|
|Chatbot Messenger/Zalo/Telegram|	Tích hợp chatbot vào nền tảng nhắn tin phổ biến|	Khi cần chatbot phục vụ khách hàng 24/7|
|Tích hợp chatbot vào website (Gradio, Streamlit, FastAPI)	|Tạo chatbot trên website|	Khi muốn chatbot hỗ trợ khách hàng trên trang web|
|Chatbot với Rasa (NLP nâng cao)|	Chatbot AI có thể hiểu ngữ cảnh, hội thoại|	Khi cần chatbot xử lý nhiều câu hỏi phức tạp hơn FAQ thông thường|

* **Chatbot Private:** Chỉ dùng nội bộ doanh nghiệp, có phân quyền, bảo mật dữ liệu. Với chức năng chính là hỗ trợ các bộ phận trong doanh nghiệp thực hiện các tác vụ chuyên sâu và có tính bảo mật thông tin cao như doanh thu, chi phí, lãi lỗ, công nợ, tồn kho... (xem chi tiết trong phần 2).
![Mô hình Private](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Workflow_Chatbot_Private.png)

📌 Đặc điểm:

✅ Chỉ nhân viên có quyền truy cập mới sử dụng

✅ Truy vấn dữ liệu nhạy cảm (hợp đồng, dữ liệu tài chính, thông tin nhân sự, báo cáo kinh doanh...)

✅ Thường triển khai dưới dạng ứng dụng nội bộ (Web App, API, Slack, Microsoft Teams...)

✅ Cần bảo mật cao (có phân quyền truy cập, mã hóa dữ liệu)

📌 Ứng dụng:
* Chatbot tìm kiếm tài liệu nội bộ (báo cáo doanh thu, hợp đồng, kế hoạch sản xuất)
* Chatbot hỗ trợ quy trình doanh nghiệp (tạo báo cáo, đặt hàng, quản lý nhân sự)
* Chatbot hỗ trợ lập trình viên DevOps (tự động hóa quy trình CI/CD)

📌 Một số phương pháp huấn luyện cho Private Chatbot:
|Phương pháp huấn luyện|	Mô tả|	Khi nào nên dùng|
|---|---|---|
|LangChain + GPT-4o + Vector Database (FAISS, Pinecone, ChromaDB)	|Tìm kiếm tài liệu nội bộ bằng AI	|Khi cần chatbot tra cứu tài liệu nội bộ nhanh chóng|
|Chatbot nội bộ với SQL Database|	Chatbot kết nối trực tiếp với MySQL, PostgreSQL	|Khi nhân viên cần truy vấn dữ liệu kinh doanh (kho hàng, doanh thu, khách hàng)|
|LLaMA 2 / Mistral (Chạy mô hình AI nội bộ)	|Triển khai chatbot AI mà không gửi dữ liệu ra ngoài|	Khi doanh nghiệp không muốn sử dụng GPT-4 trên cloud vì bảo mật dữ liệu|
|Tích hợp chatbot vào Slack, Microsoft Teams	|Chatbot dành cho nhân viên công ty	|Khi muốn chatbot hỗ trợ nội bộ (HR, IT, hỗ trợ kỹ thuật)|
|Rasa (On-Premise NLP)	|Chatbot có thể xử lý hội thoại nội bộ, không gửi dữ liệu ra cloud	|Khi cần bảo mật cao, dữ liệu không được phép ra khỏi hệ thống nội bộ|

# 2.Các tác vụ chuyên sâu Chatbot Private có thể hỗ trợ đối với từng bộ phận trong Doanh Nghiệp

| **Bộ phận**            | **Giải pháp Chatbot hỗ trợ**                                  | **Công cụ triển khai**                                      | **% Tự động hóa so với trước đây** |
|------------------------|------------------------------------------------|---------------------------------------------------|----------------------------------|
| **Marketing**          | Viết bài, tối ưu nội dung SEO, đăng bài tự động | OpenAI API, Facebook API, LinkedIn API, Zalo API  | 80%                              |
| **Sales (Bán hàng)**   | Kiểm tra tồn kho, tạo đơn hàng, tra cứu thông tin khách hàng | SAP Service Layer, Zalo API, Telegram API         | 70%                              |
| **Hỗ trợ khách hàng**  | Trả lời câu hỏi, hỗ trợ sản phẩm, gửi phản hồi tự động | OpenAI API, Zalo API, Facebook Messenger API      | 90%                              |
| **Mua hàng**           | Theo dõi đơn đặt hàng, quản lý nhà cung cấp, kiểm tra hàng tồn kho | SAP Service Layer, Google Sheets API             | 75%                              |
| **Giao nhận (Shipper)**| Theo dõi trạng thái đơn hàng, tối ưu tuyến đường | Google Maps API, Zalo API                         | 85%                              |
| **Thiết kế**           | Gợi ý xu hướng, kiểm tra ý tưởng thiết kế, lưu trữ dữ liệu thiết kế | OpenAI API, Google Drive API                      | 60%                              |
| **Quản lý dự án**      | Theo dõi tiến độ, giao nhiệm vụ, nhắc nhở deadline | Trello API, Jira API, SAP Project Management      | 80%                              |
| **Nhân sự**           | Quản lý chấm công, theo dõi KPI, trả lời câu hỏi nhân sự | SAP HR Module, Google Sheets API, Zalo API        | 75%                              |
| **Tài chính - Kế toán**| Kiểm tra công nợ, tạo báo cáo tài chính, theo dõi hóa đơn | SAP Service Layer, SendGrid API                   | 70%                              |
| **Quản lý tài liệu**   | Tìm kiếm tài liệu nội bộ, hướng dẫn sử dụng hệ thống, đào tạo nhân viên | Google Drive API, SharePoint API, OpenAI API      | 85%                              |

Như vậy, Chatbot Private có thể giúp doanh nghiệp **tự động hóa từ 60% - 90%** công việc, giảm thời gian xử lý thủ công và tăng hiệu suất làm việc.

# 3.Lộ trình xây dựng 2 dòng sản phẩm Chatbot FoxAI

**3.1. Đối với sản phẩm Chatbot Public**

Hiện nay, FoxAI đã xây dựng xong chatbot trên GPT Stores [tại địa chỉ sau](https://chatgpt.com/g/g-6780c0bb3d4481919022c62333bb8046-foxai-chat)

![Hình ảnh 1](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/ChatGPT_Stores.png)

Chatbot này sẽ hỗ trợ khách hàng sử dụng SAP, giúp tự động hóa các yêu cầu phổ biến, hướng dẫn người dùng thao tác trên hệ thống, xử lý sự cố và hỗ trợ các vấn đề liên quan đến quy trình nghiệp vụ. Chatbot được huấn luyện dựa trên những tài liệu được FoxAI nạp vào và thông qua giao tiếp với người dùng. 

Ngoài ra, **càng nhiều người sử dụng chatbot này** sẽ tăng thứ hạng trên GPT Stores, tăng độ nhận diện của thương hiệu FoxAI.

**3.2.Đối với sản phẩm Chatbot Private**

Chatbot Private đòi hỏi tính bảo mật, do đó có sự phân quyền đối với từng người dùng, có tự động hóa với N8N Automation, giao tiếp truy vấn dữ liệu có cấu trúc qua API và truy vấn dữ liệu phi cấu trúc trên localhost với RAG (Retrieval-Augmented Generation).

Mindmap [tại đây](https://hoanglong8.github.io/FoxAI-Data-Analyst/Chatbot_SAP.html)

![Hình ảnh](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Chatbot_SAP.png)

| **Giai đoạn**                     | **Thời gian** | **Chi tiết công việc**                                                                                                                                  | **Công cụ triển khai**                                 | **Nhân lực cần thiết**              |
|---|---|---|---|---|
| **1. Chuẩn hóa cấu hình kiến thức**      | Tuần 1     | - Thu thập câu hỏi thường gặp của khách hàng (FAQ)  <br>- Xác định kênh chatbot (Zalo, Facebook, Telegram, Website, App Mobile...)  <br>- Chuẩn hóa quy trình CSKH, bảo trì hỗ trợ SP | Google Forms (khảo sát), Docs , Excel, Pdf, SAP Community...              | 2 NV tư vấn triển khai <br>2 Nhân viên bảo trì <br>1 Kỹ sư thiết kế hệ thống|
| **2. Xây dựng kịch bản hội thoại**     | Tuần 2       | - Xây dựng kịch bản hội thoại chatbot <br>- Phân loại khách hàng theo nhóm vấn đề <br>- Xác định API cần tích hợp (SAP API, Zalo API, OpenAI API...)        | Vẽ luồng hội thoại (Lucidchart, Draw.io), Viết tài liệu thiết kế (Notion, GitHub) | 1 Prompt Engineer <br>1 Nhân viên bảo trì <br>1 Kỹ sư thiết kế hệ thống| 
| **3. Hoàn thiện giải pháp Back-end**    | Tuần 3     | - Lập trình chatbot kết nối OpenAI API, SAP Service Layer API, N8N, Pincore...  <br>- Kiểm thử với các tình huống câu hỏi bằng ngôn ngữ tự nhiên <br>- Test dữ liệu trả về json với dữ liệu demo giả lập            | Python, Flask/FastAPI, OpenAI API, SAP Service Layer, N8N... | 1 Lập trình viên back-end <br> 1 Nhân viên kiểm thử (QA) |
| **4. Hoàn thiện giải pháp Front-end**           | Tuần 4     | - Xây dựng giao diện người dùng (giai đoạn đầu thì chỉ cần phản hồi 2 chiều bằng text <br>- Lập trình chatbot kết nối OpenAI API với Telegram API (giai đoạn 1)...)<br>- Tối ưu tốc độ phản hồi <br>Tùy chỉnh ngữ cảnh, giọng điều phản hồi  | Postman (Test API), Zalo, Fb, Telegram, HTML, Google Sheets (Thu thập feedback) | 1 Lập trình viên front-end <br>1 QA <br>1 Nhân viên bảo trì  |
| **5. Triển khai dùng thử**        | Tuần 5       | - Điều chỉnh kịch bản hội thoại <br>- Hướng dẫn khách hàng sử dụng <br>- Viết tài liệu hướng dẫn                           | Google Docs, GitHub (hướng dẫn sử dụng), Notion (FAQs) | 1 NV tư vấn triển khai, 1 Nhân viên bảo trì |
| **6. Cải tiến & nâng cấp**         | Tuần 6 trở đi   | - Thu thập phản hồi từ khách hàng thực tế để cập nhật kịch bản hội thoại <br>- Cập nhật giao diện còn lại (Zalo, Fb, Website, Mobile App...), tích hợp ngôn ngữ tiếng Anh, Lào, Thái... <br>- Tích hợp tính năng cho phép phản hồi 2 chiều bằng Image, Voice... <br>- Cho phép người dùng có thể thay đổi mô hình LLMs khác như Claude, Gemini, DeepSeek...| Google Analytics (theo dõi chatbot), SAP        | 1 Nhân viên bảo trì, 1 Dev Back, 1 Dev Front  |

**Tóm lại:**

✅ **Tích hợp AI Agent để tự động hóa**: Các Agent AI như N8N, Make, Zapier... đóng vai trò là trợ lý giám sát giúp tự động hóa workflow. 

✅ **Xử lý ngôn ngữ tự nhiên (NLP)**: Các LLMs như ChatGPT, Claude, LLaMA... chính là bộ não phiên dịch để hiểu được câu hỏi của người dùng một cách linh hoạt và trả lời đầy đủ, chính xác.

✅ **Truy xuất dữ liệu thông minh**: Phương thức Vector Database như Pincore, FAISS, ChromaDB, Weaviate... giúp truy xuất các đoạn văn bản có liên quan từ dữ liệu có cấu trúc và phi cấu trúc.  

✅ **Bảo mật dữ liệu khách hàng**: Sử dụng "Xác thực OAuth2"/"JWT" để kiểm tra danh tính, ngăn chặn người ngoài DN; RBAC (Role-Based Access Control) để phân quyền Admin, Manager, Nhân viên... trong công ty; Mã hóa dữ liệu nhạy cảm AES-256/Hashing...

![Hình ảnh n8n](https://lh7-rt.googleusercontent.com/docsz/AD_4nXc_O_ATF-L1_OMa2uhbmSleibIbGf87Swg9jp5tjRAjsGVdZJztFXwVjEqODpS0X1aLZFiEH1JUJi35FU6wl3mygDDHTe8kqtWQHRrMAEcF3s-FdIDqaGCSVMw9XzpPTnCyDhpQ?key=jkRWBvulaU0mlb-0kab9IZfI)

Trong ảnh trên:

* **Giao diện người dùng:** Tất cả tin nhắn do người dùng gửi từ thanh bên trò chuyện của trợ lý đều được gửi đến **"Web AI Service"**, đây là một dịch vụ web riêng biệt được lưu trữ nội bộ/công khai.
* **Web AI Service:** Xử lý xác thực cho các yêu cầu đến và gọi n8n webhook cùng với xác thực để đảm bảo chỉ chấp nhận thực thi các yêu cầu từ Web AI Service, đặt giới hạn thực hiện tối đa n lệnh/phút để tránh nghẽn server.
* **Luồng công việc:** Luồng công việc chính (Gateway) chấp nhận các cuộc gọi webhook và định tuyến đến một tác nhân cụ thể, dựa trên yêu cầu của người dùng. Tiếp theo có bốn tác nhân riêng biệt xử lý các trường hợp cụ thể, việc định tuyến được thực hiện bằng nút Chuyển đổi của n8n đến một trong bốn tác nhân trên. Nhược điểm duy nhất của workflow này là sau khi một tác nhân đã bắt đầu trò chuyện với người dùng, nó không thể chuyển sang tác nhân khác, do đó người dùng cần phải bắt đầu 1 phiên chat mới.

Tham khảo cách triển khai cho từng nghiệp vụ [tại đây](https://chatgpt.com/share/67a95a4e-b5e8-8012-802d-c7bc49bca848)

Tham khảo cách bảo mật dữ liệu [tại đây](https://chatgpt.com/c/67a99d9c-1bcc-8012-b032-146e50f14235)

![Hình ảnh n8n](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdcsobtdG4fsXiwAFIjm0TGSCKaxSFe7_nY6qzsTUBAoKdDODrgXsStieQ4ff4_5u2O1p5CIWIexce-NdeSnktxVOqaCrx9-mTSJK-RVW8fr1c8mmOTLXr3UnSIQjLh0DQp8QL7wg?key=jkRWBvulaU0mlb-0kab9IZfI)

Trong ảnh trên:

* **Chat model:** Bộ não để xử lý ngôn ngữ tự nhiên, có thể thay thế bằng các LLMs khác như Claude, Gemini, DeepSeek...
* **Memory:** Bộ nhớ đoạn chat trò chuyện của mô hình, có thể sử dụng các công cụ để lưu trữ như Redis, ChromaDB...
* **Tool:** Thiết lập mô hình tìm kiếm thông tin Retrieval Augmented Generation (RAG) trong Documents (tài liệu đã vector hóa), Forum (Diễn đàn kiến thức trên internet), current workflow... để tạo phản hồi.


# 4.Cập nhật tiến độ sản phẩm
## Chatbot public

### Fine-tuning (tinh chỉnh) mô hình GPT-4o

![Hình ảnh](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Fine%20Tuning.png)

**4.1.Giao diện Chatbot trên Website**

  * Link [Website](https://fox.ai.vn/) (hiện đã có thể nhận diện hình ảnh, bộ nhớ tạm thời của history chat đang lưu trên Cache của trình duyệt website => Nghiên cứu tool tự động lưu về máy chủ <=> Cho phép FoxAI sử dụng dữ liệu để huấn luyện).

![Hình ảnh](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Chatbot%20FoxAI%201.png)


**4.2.Giao diện Chatbot trên Telegram**

  * Link [Telegram](https://t.me/foxaichatbot) (Chatbot đã có thể nhận diện hình ảnh, máy chủ đã tự động lưu trữ history chat theo từng ID người dùng, nghiên cứu dùng các extension, plugin api để cập nhật `các thông tin realtime`: tỷ giá, lãi suất, giá vàng, giá dầu,thời tiết...)
![Hình ảnh](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Chatbot%20FoxAI%204.png)

**4.3.Giao diện Chatbot trên Zalo**

  * Link [OA Zalo](https://oa.zalo.me/1274288992880251848) (hiện mới chỉ chat với Official Account, chưa thể add chatbot vào group chat, bổ sung 3 nút link tới Website, Telegram và Hotline).

![Hình ảnh](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Chatbot%20FoxAI%203.png)


**4.4.Giao diện Chatbot app Mobile**

  * ... Đang cập nhật

**4.5.Giao diện Add-on trên SAP B1**

  * ... Đang cập nhật

## Chatbot Private

**4.1.Workflow AI Agent**

```mermaid
graph TD;
    User_hỏi --> 1.Truy_vấn_dữ_liệu_SQL --> 2.Truy_vấn_trong_data_vector --> 3.Hỏi_chatbot_public --> Phản_hồi

```

**4.2.Luồng truy vấn dữ liệu SQL**

![Hình ảnh](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Workflow%20truy%20v%E1%BA%A5n%20SQL.jpg)

**4.3.Luồng truy vấn dữ liệu phi cấu trúc**


**4.4.Luồng call API chatbot public**


Thông tin các ứng dụng chatbot khác để tham khảo [tại đây](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/D%E1%BB%B1%20%C3%A1n%20Chatbot%20FoxAI/%5BFoxAI%5D%20T%C3%A0i%20li%E1%BB%87u%20tham%20kh%E1%BA%A3o%20v%C3%A0%20tin%20t%E1%BB%A9c%20Chatbot.md)
