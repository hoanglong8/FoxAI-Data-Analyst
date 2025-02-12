# [FoxAI] Tài liệu hướng dẫn public tài liệu file .md lên GitHub Pages

Phương pháp: sử dụng `MkDocs` để public tài liệu trên GitHub Pages từ `repository` của bạn. Dưới đây là hướng dẫn từng bước chi tiết:

## 1. Cài đặt MkDocs và Theme Material
Trước tiên, cần đảm bảo bạn đã cài MkDocs và theme Material for MkDocs.

### Cài đặt MkDocs
Cài đặt Python và pip, sau đó, chạy lệnh trong Git Bash:
```bash
pip install mkdocs
```
### Cài đặt Theme Material
```bash
pip install mkdocs-material
```

## 2. Cấu trúc thư mục dự án
Tạo cấu trúc thư mục sau trong repository, ví dụ như FoxAI-Data-Analyst:

```bash
FoxAI-Data-Analyst/
│── docs/
│   ├── index.md  # Trang chính
│   ├── chatbot_sap.md  # Nội dung chatbot SAP
│   ├── other_page.md   # Các trang khác
│── mkdocs.yml  # File cấu hình MkDocs
```

* `docs/`: Chứa tất cả các tệp .md của tài liệu.
* `mkdocs.yml`: Cấu hình giao diện và navigation.

