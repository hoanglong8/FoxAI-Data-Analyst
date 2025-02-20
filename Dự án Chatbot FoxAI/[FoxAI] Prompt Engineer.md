# Prompt Engineering

## Cấu trúc 1 prompt đầy đủ dạng UI (giao diện người dùng)

![Hình ảnh 1](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Prompt_UI.png)

## Cấu trúc 1 prompt dạng lệnh code qua API

![Hình ảnh 2](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Prompt_API.png)

* **Temperature:** Mức độ sáng tạo và tính ngẫu nhiên của mô hình (t = 0 là không sáng tạo, t = 2 là sáng tạo tối đa).

* **Max token output:** Giới hạn số token đầu ra tối đa cho 1 lần phản hồi để tránh ảnh hưởng tới hệ thống, thường từ 2.000 - 5.000 token (khoảng 4.000 từ tiếng Việt).

* **Top-p:** Điều chỉnh xác suất dự đoán cho từ (token) tiếp theo, p càng cao càng giúp tạo ra phản hồi đa dạng, trôi chảy và tự nhiên hơn (p ~ 100% là tự do, đa dạng lựa chọn nhất, thường để p = 0,95).

* **Top-k:** Giới hạn số lượng lựa chọn cho từ (token) tiếp theo, giúp tăng tốc quá trình tạo và có thể cải thiện chất lượng của văn bản được tạo (k thường để mặc định từ 40-50 lựa chọn cho từ tiếp theo).

* **Repetition Penalty (lỗi lặp lại):** Thường đặt = 1 để giảm khả năng lặp lại hoặc bị kẹt trong vòng lặp phản hồi.

* **stop:** Phản hồi sẽ dừng lại khi gặp ký tự nào, ví dụ: dấu kết thúc câu `<｜end▁of▁sentence｜>`.

* **role:** Vai trò của mô hình, ví dụ như là 1 chuyên gia về lĩnh vực ...

* **stream=True:** Phản hồi được viết ra liên tục giống như đang có người gõ chữ.

# Cấu trúc 1 prompt đầy đủ, dạng giao diện chat

* **Ngữ cảnh:** Tình trạng hiện tại, tôi là ai, tôi đang có những gì…

* **Mục tiêu:** Tôi cần gì, tôi muốn đi đến đâu…

* **Vai trò:** Bạn là một chuyên gia trong lĩnh vực…

* **Hành động:** Tìm kiếm thông tin (fact, không thêm, không bịa), sáng tạo (creative, tính mới), phân tích (analyst, giải thích lý do), tư vấn (advice, dự báo), tóm tắt, tổng hợp...

* **Đầu ra:** Định dạng (markdown, văn bản, bảng), độ dài ký tự, phong cách…

![Hình ảnh](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Prompt_Engineer_1.png)

## Một số ví dụ về prompt chi tiết: [Vidtools.online](https://vidtools.online/prompt/?fbclid=IwY2xjawH52xNleHRuA2FlbQIxMAABHQmUnsLgM-KtlYNExUHshjohNp7ldi_waccPqsetSl14KGrD4tP5HgdQLg_aem__6ueV2_du0xoyIEVOOC-IA)

## Sản phẩm
```
Vui lòng cung cấp danh sách chi tiết các tiêu đề quảng cáo sáng tạo sẽ thu hút sự chú ý trên phương tiện truyền thông xã hội cho sản phẩm [[TÊN SẢN PHẨM]]. Hãy cân nhắc đến đối tượng mục tiêu [[ĐỐI TƯỢNG MỤC TIÊU]], xu hướng hiện tại [[XU HƯỚNG HIỆN TẠI]] và các điểm bán hàng độc đáo của sản phẩm [[ĐIỂM BÁN HÀNG ĐỘC ĐÁO]]. Các tiêu đề phải hấp dẫn, sáng tạo và phù hợp với các nền tảng như Facebook, Instagram hoặc Twitter. Bao gồm một lời giải thích ngắn gọn cho mỗi tiêu đề về lý do tại sao nó sẽ có hiệu quả trong việc thu hút sự quan tâm của đối tượng.
```
```
Tạo chiến dịch thương mại điện tử cho sản phẩm A của thương hiệu B – đây là một thương hiệu mới được đẩy lên trên thương mại điện tử. Bạn hãy đề xuất các biện pháp phù hợp để xây dựng chiến dịch, bao gồm các chiến lược tăng nhận thức về thương hiệu, thu hút khách hàng tiềm năng, và tạo niềm tin từ người tiêu dùng. Các biện pháp có thể bao gồm: tối ưu hóa trang sản phẩm trên các nền tảng thương mại điện tử, sử dụng quảng cáo trả tiền (PPC), tiếp thị qua mạng xã hội, các chương trình khuyến mãi, và xây dựng các chương trình khách hàng thân thiết để thúc đẩy doanh số bán hàng.
```

## Khách hàng
```
Gợi ý cho tôi [số] biện pháp hiệu quả để thu hút nhóm đối tượng khách hàng tiềm năng cho sản phẩm A. Mỗi biện pháp nên được mô tả chi tiết, bao gồm cách thức triển khai và lý do tại sao nó phù hợp với nhóm đối tượng mục tiêu. Các biện pháp cần sáng tạo và dễ áp dụng, từ chiến lược marketing trực tuyến đến các hoạt động quảng bá ngoại tuyến, nhằm tối ưu hóa sự thu hút và tăng khả năng chuyển đổi khách hàng.
```
```
Nghiên cứu chân dung khách hàng phù hợp với sản phẩm A. Bạn cần xác định các đặc điểm chính của khách hàng tiềm năng bao gồm độ tuổi, giới tính, thu nhập, sở thích, thói quen mua sắm, và các yếu tố tâm lý ảnh hưởng đến quyết định mua hàng. Nghiên cứu cũng cần đề xuất các kênh marketing và thông điệp phù hợp để tiếp cận nhóm khách hàng này hiệu quả nhất. Từ đó, xây dựng các chiến lược tiếp thị nhắm đến đối tượng mục tiêu, nhằm tối ưu hóa khả năng chuyển đổi và tăng trưởng doanh số.
```
