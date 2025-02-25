## Tài liệu tham khảo

1. **API của OpenAI**:  
   [API OpenAI](https://platform.openai.com/docs/api-reference/chat/create)

2. **Tài liệu về prompt**:  
   [ChatGPT Prompt Engineering](https://learn.deeplearning.ai/courses/chatgpt-prompt-eng/lesson/jtmdv/chatbot)

3. **Tài liệu về TelegramBot API**:  
   [Telegram Bot API Documentation](https://github.com/eternnoir/pyTelegramBotAPI)

---

## Một số tính năng cần phát triển trên Chatbot FoxAI

[Chatbot FoxAI trên GPT Stores](https://chatgpt.com/g/g-6780c0bb3d4481919022c62333bb8046-foxai-chat)

- **Sử dụng các mô hình có sẵn**: Mượn các mô hình từ Gemini, ChatGPT, Deepseek, v.v. để tạo ra bot hỗ trợ khách hàng. (ĐÃ HOÀN THÀNH)
  
- **Đưa thông tin vào bot**: Tích hợp các thông tin quan trọng vào bot để bot có thể đọc, hiểu và lấy dữ liệu từ đó để trả lời.

- **Khả năng trả lời đa dạng**: Bot cần có khả năng trả lời từ văn bản đến hình ảnh, âm thanh và có thể đưa thông tin dưới nhiều dạng khác nhau.

- **Nhớ dữ liệu cuộc hội thoại**: Bot cần lưu trữ và sử dụng dữ liệu từ các cuộc hội thoại trước đây để cung cấp các câu trả lời phù hợp hơn. (TẠM THỜI)

- **Training mô hình**: Có máy chủ lưu trữ lịch sử chat của khách hàng nhằm đưa vào mô hình nhằm vector hoá dữ liệu. Tiến hành training thêm vào các file dữ liệu để mô hình hoạt động mạnh mẽ hơn và có thể trả lời theo ý tưởng của người lập trình.

## Một số Chatbot tham khảo

1.[Gein AI](https://app.gein.ai/)

2.[LovinBot AI](https://app.lovinbot.ai/)

3.[Chatbase](https://www.chatbase.co/dashboard/nguyn-hong-longs-team/chatbot/CC7ZcOJ9n_t-yX6INSSlI)

```
<script>
(function(){if(!window.chatbase||window.chatbase("getState")!=="initialized"){window.chatbase=(...arguments)=>{if(!window.chatbase.q){window.chatbase.q=[]}window.chatbase.q.push(arguments)};window.chatbase=new Proxy(window.chatbase,{get(target,prop){if(prop==="q"){return target.q}return(...args)=>target(prop,...args)}})}const onLoad=function(){const script=document.createElement("script");script.src="https://www.chatbase.co/embed.min.js";script.id="CC7ZcOJ9n_t-yX6INSSlI";script.domain="www.chatbase.co";document.body.appendChild(script)};if(document.readyState==="complete"){onLoad()}else{window.addEventListener("load",onLoad)}})();
</script>
```

4.[Genspark AI](https://www.genspark.ai/agents?type=moa_chat)

5.[Monica](https://monica.im/en/bots)
Có tính năng tạo bot, nhận diện hình ảnh giống như ChatGPT


