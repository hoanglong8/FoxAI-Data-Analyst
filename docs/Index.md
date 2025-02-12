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

## 3. Tạo file cấu hình mkdocs.yml
Tạo file `mkdocs.yml` tại thư mục gốc (main) của repository với nội dung sau:

```yaml
site_name: FoxAI Data Analyst Docs
theme:
  name: material
  palette:
    primary: indigo
    accent: blue
  features:
    - navigation.tabs
    - navigation.instant
    - navigation.tracking

nav:
  - Home: index.md
  - Chatbot SAP: chatbot_sap.md
  - Other Page: other_page.md

repo_url: https://github.com/hoanglong8/FoxAI-Data-Analyst
edit_uri: edit/main/docs/
```

* `site_name`: Tên của trang web tài liệu.
* `theme`: Sử dụng Material Theme.
* `nav`: Định nghĩa menu và đường dẫn tới các file markdown trong `docs/`.
* `repo_url`: Liên kết về repository trên GitHub.

## 4. Chạy thử tài liệu trên localhost
Bạn có thể kiểm tra giao diện trước khi public bằng cách chạy:

```bash
mkdocs serve
```

Sau đó mở trình duyệt và vào `http://127.0.0.1:8000/` để xem tài liệu.

## 5. Deploy (Đẩy) tài liệu lên GitHub Pages
Sau khi kiểm tra xong, chạy lệnh sau để build và deploy tài liệu lên GitHub Pages:

```bash
mkdocs gh-deploy
```

Lệnh này sẽ:
* Build tài liệu vào thư mục site/
* Đẩy nội dung lên branch gh-pages của repository
* GitHub sẽ tự động host tài liệu tại:
📌 https://hoanglong8.github.io/FoxAI-Data-Analyst/

## 6. Bật GitHub Pages trong Repository
Sau khi chạy lệnh `mkdocs gh-deploy`, vào GitHub:

* Vào Settings → Pages.
* Chọn Source là gh-pages branch.
* Lưu lại.

## 7. Cập nhật tài liệu
Khi bạn muốn cập nhật tài liệu, chỉ cần:

```bash
git pull
# Chỉnh sửa file .md trong docs/
mkdocs gh-deploy
```

Kiểm tra tài liệu tại:
🔗 https://hoanglong8.github.io/FoxAI-Data-Analyst/

Nếu bạn cần thêm bố cục đẹp hơn, có thể tuỳ chỉnh theme hoặc thêm `Markdown Extensions` vào `mkdocs.yml`. 
