## 1.Tài liệu tham khảo

1. **API của OpenAI**:  
   [API OpenAI](https://platform.openai.com/docs/api-reference/chat/create)

2. **Tài liệu về prompt**:  
   [ChatGPT Prompt Engineering](https://learn.deeplearning.ai/courses/chatgpt-prompt-eng/lesson/jtmdv/chatbot)

3. **Tài liệu về TelegramBot API**:  
   [Telegram Bot API Documentation](https://github.com/eternnoir/pyTelegramBotAPI)

4. **Tài liệu về Deepseek API**
   [https://api-docs.deepseek.com/]
---

## 2.Một số tính năng cần phát triển trên Chatbot FoxAI

[Chatbot FoxAI trên GPT Stores](https://chatgpt.com/g/g-6780c0bb3d4481919022c62333bb8046-foxai-chat)

- **Sử dụng các mô hình có sẵn**: Mượn các mô hình từ Gemini, ChatGPT, Deepseek, v.v. để tạo ra bot hỗ trợ khách hàng. (ĐÃ HOÀN THÀNH)
  
- **Đưa thông tin vào bot**: Tích hợp các thông tin quan trọng vào bot để bot có thể đọc, hiểu và lấy dữ liệu từ đó để trả lời.

- **Khả năng trả lời đa dạng**: Bot cần có khả năng trả lời từ văn bản đến hình ảnh, âm thanh và có thể đưa thông tin dưới nhiều dạng khác nhau.

- **Nhớ dữ liệu cuộc hội thoại**: Bot cần lưu trữ và sử dụng dữ liệu từ các cuộc hội thoại trước đây để cung cấp các câu trả lời phù hợp hơn. (TẠM THỜI)

- **Training mô hình**: Có máy chủ lưu trữ lịch sử chat của khách hàng nhằm đưa vào mô hình nhằm vector hoá dữ liệu. Tiến hành training thêm vào các file dữ liệu để mô hình hoạt động mạnh mẽ hơn và có thể trả lời theo ý tưởng của người lập trình.

## 3.Một số Chatbot tham khảo

1.[Gein AI](https://app.gein.ai/)

2.[LovinBot AI](https://app.lovinbot.ai/)

3.[Chatbase](https://www.chatbase.co/dashboard/nguyn-hong-longs-team/chatbot/CC7ZcOJ9n_t-yX6INSSlI)

```
<script>
(function(){if(!window.chatbase||window.chatbase("getState")!=="initialized"){window.chatbase=(...arguments)=>{if(!window.chatbase.q){window.chatbase.q=[]}window.chatbase.q.push(arguments)};window.chatbase=new Proxy(window.chatbase,{get(target,prop){if(prop==="q"){return target.q}return(...args)=>target(prop,...args)}})}const onLoad=function(){const script=document.createElement("script");script.src="https://www.chatbase.co/embed.min.js";script.id="CC7ZcOJ9n_t-yX6INSSlI";script.domain="www.chatbase.co";document.body.appendChild(script)};if(document.readyState==="complete"){onLoad()}else{window.addEventListener("load",onLoad)}})();
</script>
```

4.[Genspark AI](https://www.genspark.ai/agents?type=moa_chat)

![Hình ảnh](https://lnm.vn/wp-content/uploads/2025/02/479733843_1991307984698998_8110658406358291341_n-750x450.jpg)

5.[Monica](https://monica.im/en/bots)
Có tính năng tạo bot, nhận diện hình ảnh giống như ChatGPT

![Hình ảnh](https://assets.monica.im/low-code/img/ai-chat-f322e278-0fb6-45e2-9bdc-947df953120b.jpg)

6.[POE](https://poe.com/)
Có tính năng tạo bot, nhận diện hình ảnh giống như ChatGPT

![Hình ảnh](https://www.cdotrends.com/sites/default/files/2024-04/pasted_image_20240417171648.png)

7.[Merlin](https://www.getmerlin.in/chat)

![Hình ảnh](https://www.fahimai.com/wp-content/uploads/2024/08/Fahim-AI-32.png)

8.[Openrouter chat](https://openrouter.ai/chat)

9.[Fastbots.ai](https://fastbots.ai/)

10.[nweb.ai](https://nweb.ai/) của Việt Nam

11.[Chatsimple](https://www.chatsimple.ai/)

12.[Chatbot.com](https://www.chatbot.com/) không trả lời được bằng tiếng Việt

13.[HuggingFace chat](https://huggingface.co/chat)

14.[Gemini DeepSearch](https://gemini.0est.com/)

15.[Rasa](https://github.com/RasaHQ/rasa) Mã nguồn mở và không sử dụng core LLMs

16.[DeepClaude](https://deepclaude.com/chat) Kết hợp khả năng suy luận của DeepSeek và khả năng code/sáng tạo của Claude (yêu cầu phải có API của cả 2 mới dùng được).

## 4.Tin tức về AI
- Ngày 26/02/2025: Google Gemini ra mắt chức năng 'branching' vào AI Studio. 
   * Tác dụng: khi chat quá dài AI thường bị lú nên user phải copy ngữ cảnh ở đầu đoạn chat để nhắc AI. Có branching thì không cần làm thế. Sau khi cho nó xem ngữ cảnh có thể tách chat thành các nhánh nhỏ để chat về một `khía cạnh` cụ thể. Sau đó quay lại chat ban đầu và tạo thêm nhánh mới nếu cần chat cụ thể. Ngữ cảnh ban đầu kiểu được `pin` vào bộ nhớ của Gemini.

- Ngày 26/02/2025: Claude 3.7 Sonnet là phiên bản mới nhất trong gia đình Claude 3, hỗ trợ hai chế độ chính:
   * Standard mode: Phù hợp với các tác vụ thông dụng: tạo nội dung, viết code cơ bản, chatbot hỗ trợ,…
Mô hình cho ra kết quả cuối cùng mà không hiển thị “luồng suy luận” nội bộ.
   * Extended thinking mode (chế độ suy luận mở rộng): Cho phép Claude hiển thị quá trình suy luận trước khi đưa ra câu trả lời cuối.
Đặc biệt hữu ích khi bạn cần phân tích sâu, kiểm chứng logic, hoặc tối ưu hoá nhiều ràng buộc phức tạp.

- Ngày 26/02/2025: OpenAI vừa mở tính năng File Search cho Assistants API, tương tự như RAG. Chức năng này dùng o3-mini và o1.
SO SÁNH  FILE SEARCH VS RAG:
Cả hai hệ thống này đều sử dụng tri thức bên ngoài để cung cấp các câu trả lời chính xác và phù hợp hơn. 
   * File Search cho Assistants: 
      - Tri Thức Bên Ngoài: Nâng cao khả năng của trợ lý bằng cách tích hợp thông tin từ các tài liệu do người dùng cung cấp hoặc dữ liệu độc quyền.
      - Cơ Chế Tìm Kiếm: Sử dụng cả tìm kiếm từ khóa và tìm kiếm ngữ nghĩa để lấy ra các đoạn thông tin liên quan từ các tài liệu đã lưu trữ.
      - Tạo Nội Dung: Kết hợp nội dung được truy xuất vào câu trả lời của mô hình để trả lời các câu hỏi của người dùng một cách hiệu quả hơn.
   * Hệ Thống RAG:
      - Tri Thức Bên Ngoài: Tích hợp các nguồn dữ liệu bên ngoài, vd cơ sở dữ liệu hoặc tài liệu, vào quá trình tạo nội dung.
      - Cơ Chế Tìm Kiếm: Kết hợp các cơ chế tìm kiếm (ví dụ: tìm kiếm từ khóa, tìm kiếm ngữ nghĩa) để tìm ra thông tin liên quan.
      - Tạo Nội Dung: Kết hợp thông tin được truy xuất với đầu ra của mô hình để cung cấp các câu trả lời giàu ngữ cảnh và chính xác.
    
- Ngày 25/02/2025: Anthopic mới ra Claude Sonnet 3.7, đây không phải là model mang tính đột phá và nó thể hiện trong cách đánh số version (từ 3.5 lên 3.7) mà nó khẳng định vị trí số 1 trong lĩnh vực coding của Anthopic và được các nhà lập trình ưa thích dùng trong Codium, Bolt.new AIDE, CodeGPT,....
Đây cũng là model hybrid cho việc kết hợp fast thinking và slow thiking (thuật ngữ của Daniel Kahneman ).
Ngoài ra, nó cũng khá tốt trong việc bám sát instruction. Lấy ví dụ một prompt "Creat a comprehensive and advance ebook on prompt engineering technique" và kết quả là một câu trả lời
      - Lần 1 khoảng hơn 3800 từ
      - Lần 2 khoảnng 2600
Tổng cộng là 6420 từ tiếng Anh, tương đương có một ebook Advanced Prompt Engineering Techniques tầm 45 trang A4.

Prompt ở dưới đây:
```
----
<instruction>
Create a comprehensive and advanced ebook on prompt engineering techniques, incorporating best practices, systematic approaches, and sophisticated strategies. The content should follow a logical progression from foundational concepts to advanced applications.
</instruction>
<role>
Expert prompt engineering instructor and technical writer with deep expertise in AI language model capabilities and limitations
</role>
<context>
The ebook should synthesize cutting-edge prompt engineering techniques while maintaining practical applicability for real-world implementation.
</context>
<output_format>
<ebook_structure>
<title>Advanced Prompt Engineering Techniques</title>
<book_parameters>
```

- Ngày 27/02/2025: Giao thức tương tác nói chuyện giữa 2 LLM trên 2 điện thoại ([GGwave](https://github.com/ggerganov/ggwave))

- Ngày 25/02/2025: Open-source [Scira search](https://github.com/zaidmukaddam/scira) like Grok2

- Ngày 24/02/2025: Trang web của Trung Quốc [Wingzero](https://tools.wingzero.tw/article/sn/3231) chuyên tổng hợp các AI tiêu biểu

- Ngày 21/02/2025: Trình biên dịch [ComfyUI workflow](https://github.com/pydn/ComfyUI-to-Python-Extension) từ Python

- Ngày 22/02/2025: Tự tạo chatbot bằng RAG ([Drop-Rag](https://github.com/bangoc123/drop-rag))

- Ngày 26/02/2025: Trình đọc [OCR](https://github.com/allenai/olmocr) quang học

- Ngày 27/02/2025: AI Agent tự động viết bài [Omnitool](https://github.com/microsoft/OmniParser/tree/master/omnitool) của Microsoft

- 
