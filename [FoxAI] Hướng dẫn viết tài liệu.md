# BỘ QUY TẮC, CÔNG CỤ GIÚP SOẠN THẢO TÀI LIỆU NHANH CHÓNG, CHUYÊN NGHIỆP

<img src="https://fox.ai.vn/wp-content/uploads/2024/07/Logo_Original-1.png" alt="Hình ảnh" width="30%" />

![Phiên_bản](https://img.shields.io/badge/Phiên_bản-1.0-brightgreen)
![Bản_quyền](https://img.shields.io/badge/Bản_quyền-FoxAI-blue)
![Tình trạng](https://img.shields.io/badge/Tình_trạng-Đã_ban_hành-darkorange)
![Hỗ trợ](https://img.shields.io/badge/Hỗ_trợ_247-Chatbot-purple)
![Hotline](https://img.shields.io/badge/Liên_hệ-info@foxai.vn-red)

# Nội dung
1. [Công cụ và ngôn ngữ soạn thảo](#1-CÁC-CÔNG-CỤ-SOẠN-THẢO-TÀI-LIỆU)
   * [Markdown](#1-1-Ngôn-ngữ-Markdown)
   * [HTML](#1-2-Ngôn-ngữ-HTML)
   * [StackEdit](https://stackedit.io/app#)
   * [Glasp](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Transcript%20and%20Summary.png)
2. [Công cụ trực quan hóa](#2-CÁC-CÔNG-CỤ-TRỰC-QUAN-HÓA)
   * [Mermaid](#2-1-Công-cụ-Mermaid)
   * [Planttext](https://planttext.com/)
   * [Markmap](#2-2-Công-cụ-Markmap)
   * [Kroki](#2-4-Công-cụ-Kroki)
3. [Công cụ xuất bản tài liệu](#3-TỰ-ĐỒNG-BỘ-TẠO-BOOK-ONLINE)
   * [GitBook](#Công-cụ-GitBook)
   * [Badge](#2-3-Công-cụ-Badge)
4. [Công cụ hỗ trợ thuyết trình](#4-TỰ-ĐỒNG-BỘ-TẠO-SLIDE)
   * [Napkin](#Công-cụ-Napkin)
   * [HackMD](#Công-cụ-HackMD)
5. [Công cụ lưu trữ, quản lý tài liệu](#5-QUẢN-LÝ-TÀI-LIỆU)
    * [GitHub](#Công-cụ-GitHub)
    * [GitLab](https://about.gitlab.com/)
    * [Sharepoint](#Công-cụ-Sharepoint)

## Đối tượng sử dụng
Tài liệu này được thiết kế dành cho nhân viên của FoxAI khi cần thực hiện các công việc như:
* Viết tài liệu đào tạo để chuyển giao cho khách hàng;
* Tạo slide thuyết trình sản phẩm hoặc kế hoạch kinh doanh;
* Xây dựng tài liệu, quy trình, quy định để đào tạo nội bộ.

Giúp nâng cao năng suất, thực hiện một cách dễ dàng, chuyên nghiệp, và hiệu quả.

## Mục tiêu

Người dùng sau khi đọc tài liệu này có thể:
1. **Biết được** cách dùng [Markdown](#1-1-Ngôn-ngữ-Markdown), [HTML](#1-2-Ngôn-ngữ-HTML)... để ghi chú, soạn thảo nội dung một cách nhanh chóng, dễ chỉnh sửa, dễ truyền tải.
2. **Nắm được** các công cụ [Mermaid](#2-1-Công-cụ-Mermaid), [Markmap](#2-2-Công-cụ-Markmap), [Badge](#2-3-Công-cụ-Badge), [Kroki](#2-4-Công-cụ-Kroki)... để vẽ biểu đồ, workflow giúp trực quan hóa tài liệu.
3. **Thực hành được** cách đồng bộ tự động nội dung trên GitHub sang [GitBook](#Công-cụ-GitBook) để xuất bản sách hướng dẫn nhanh, dễ dàng chia sẻ cho khách hàng, luôn đảm bảo update mà không phải sửa thủ công.
4. **Biết cách** cập nhật nội dung từ GitHub sang [HackMD](#Công-cụ-HackMD) để tạo slide trình chiếu chuyên nghiệp, nhanh chóng.
5. **Hiểu được** cách thức lưu trữ thông qua công cụ [Git](#Công-cụ-Git) đảm bảo tính nhất quán, tránh xung đột khi nhiều nhân viên cùng tham gia chỉnh sửa hoặc cập nhật.

---

## Quy trình thực hiện

```mermaid
graph TD;
    1.Soạn_thảo_nội_dung --> 2.Trực_quan_hóa --> 3.Xuất_bản_tài_liệu --> 4.Thuyết_trình --> 5.Lưu_trữ_tài_liệu

```

## 1-CÁC CÔNG CỤ SOẠN THẢO TÀI LIỆU
[⬆️](#nội-dung)

### 1-1-Ngôn ngữ Markdown
- **Markdown** là **ngôn ngữ đánh dấu** đơn giản, cho phép viết tài liệu nhanh chóng, gọn nhẹ. Định dạng đuôi là `.md`.
- Kết hợp với GitHub, GitBook, HackMD… bạn dễ dàng tạo **trang doc**, **slide**, **blog** mà **không cần** các công cụ soạn thảo nặng nề.

#### a.Cú pháp Markdown
- **Tiêu đề**:  
  ```markdown
  # Tiêu đề cấp 1
  ## Tiêu đề cấp 2
  ### Tiêu đề cấp 3

- Đoạn văn in đậm, in nghiêng:
    ```markdown
    Đây là **chữ in đậm** và *chữ in nghiêng*.
    
- Danh sách:
    ```markdown
    - Gạch đầu dòng 1
    - Gạch đầu dòng 2
    1. Mục thứ nhất
    2. Mục thứ hai

- Chèn link, hình ảnh, trích dẫn:
    ```markdown
    [Link đến Google](https://google.com)
    ![Mô tả ảnh](https://link-den-anh.jpg)

- Chèn ảnh động .gif /video với kích thước tùy chỉnh thì sử dụng cú pháp HTML:
    ```html
    #1.Tải ảnh lên thư mục Image của GitHub
    #2.Chèn Ảnh với Kích Thước 50%
    <img src="Image/example.gif" width="50%" />

- Dòng code lệnh:
    ```markdown
    ```python
    print("Hello World")

- Dòng kẻ/ngăn cách trang slide:
    ```markdown
    ---

Xem thêm tại: [Basic writing and formatting syntax](https://docs.github.com/en/get-started/writing-on-github/basic-writing-and-formatting-syntax)

#### b.Thao tác trên GitHub

* Tạo repository / file Markdown
* Đăng nhập GitHub → Tạo repo mới (hoặc mở repo sẵn có).
* Tạo file .md (ví dụ: README.md, doc-tong-quan.md).
* Viết nội dung Markdown, commit lên repo. Mọi thay đổi (commit) trong file .md sẽ được Git lưu lại.

### 1-2-Ngôn ngữ HTML
- **HTML** là ngôn ngữ thường dùng để viết tài liệu có cấu trúc rõ ràng, thường viết bằng công cụ như Visual Studio Code VSCode để dễ dàng kiểm tra nội dung.

- Khi mở file `.html` trên GitHub, mã HTML sẽ hiển thị dưới dạng văn bản chứ không được render thành trang web, do vậy để xem thì phải render thông qua GitHub Pages.

- Ngôn ngữ HTML thường kết hợp Markdown để tăng tính tương tác trong tài liệu, ví dụ HTML hỗ trợ tốt các tính năng như: thay đổi font, màu sắc, kích thước ảnh...

Xem thêm:
- [Hướng dẫn sử dụng GitHub Pages](https://docs.github.com/en/pages)  
- [HTML cơ bản - W3Schools](https://www.w3schools.com/html/)  
- [Markdown trên GitHub](https://guides.github.com/features/mastering-markdown/)  

### 1-3-Công cụ StackEdit

[StackEdit](https://stackedit.io/app#) là một công cụ Markdown mạnh mẽ, giúp bạn viết, chỉnh sửa, đồng bộ và xuất bản nội dung một cách chuyên nghiệp.

Kết quả đầu ra:

![Ảnh](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Stackedit.png)

### 1-4-Công cụ Glasp - Transcript & Summary

[Glasp](https://chromewebstore.google.com/detail/chatgpt-youtube-summary-b/cdjifpfganmhoojfclednjdnnpooaojb?hl=vi&utm_source=ext_sidebar) là 1 plugin extensions của Chrome giúp trích xuất sub và tổng hợp nội dung của các video trên Youtube. Từ đó giúp bạn nhanh chóng nắm bắt được nội dung, ý tưởng chính của tác giả, giúp nâng cao hiệu suất học tập và làm việc.

Bạn có thể copy transcript vào ChatGPT để tóm tắt nội dung chính, trả về kết quả dưới dạng mã Markdown rồi copy vào công cụ [Markmap](https://markmap.js.org/repl) (ở phần 2) để trực quan hóa thành sơ đồ Mindmap.

![Hình ảnh](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Transcript%20and%20Summary.png)

## 2-CÁC CÔNG CỤ TRỰC QUAN HÓA
[⬆️](#nội-dung)

Nhằm giúp thông tin dễ hiểu hơn, hấp dẫn hơn, và hỗ trợ người đọc nắm bắt ý chính nhanh chóng, chúng ta thường dùng các cách thức như: vẽ biểu đồ workflow, đồ thị chart, sơ đồ mindmap, chèn hình ảnh minh họa và biểu tượng icon, infographic và kết hợp đa phương tiện như video, âm thanh, hoặc liên kết (link) đến tài liệu khác.

### 2-1-Công cụ Mermaid

[Mermaid](https://mermaid.js.org/intro/) là nền tảng giúp bạn vẽ nhanh các diagram nhanh chóng và có thể chèn trực tiếp vào Markdown mà không cần xuất ra ảnh để chèn vào tài liệu.

Các bước thực hiện:
* Lựa chọn dạng biểu đồ: Flowchart, Sequent Diagram, Hierachy, TopDown hay LeftRight...
* Viết code biểu đồ ```mermaid
* Copy code sang GitHub, chú ý bổ sung ``` ở cuối dòng
  ```markdown
  ```mermaid
    graph LR;
    Markdown --> Mermaid --> GitHub --> GitBook --> HackMD ```
  ```
Biểu đồ sẽ có dạng như sau:

```mermaid
graph LR;
    Markdown --> Mermaid --> GitHub --> GitBook --> HackMD

```

<img src="https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Mermaid.gif" width="100%" />

Ngoài ra, [Mermaid](https://mermaid.live) cũng hỗ trợ tạo sơ đồ Mindmap như sau:

```mermaid
mindmap
  root((So sánh Phương án Kinh doanh Chatbot AI))
    Localhost
      Chi phí
        Cao: 5-7 tỷ VNĐ
        Phí triển khai ban đầu lớn
      Thời gian
        6-9 tháng triển khai
        Tập trung vào phát triển và tối ưu hóa nội bộ
      Đối tượng khách hàng
        Doanh nghiệp lớn, yêu cầu bảo mật cao
        Ngành: tài chính, ngân hàng, y tế, giáo dục
    API
      Chi phí
        Thấp: 2-4 tỷ VNĐ
        Phí sử dụng linh hoạt theo tháng
      Thời gian
        3-5 tháng triển khai
        Nhanh chóng nhờ tích hợp API có sẵn
      Đối tượng khách hàng
        Doanh nghiệp vừa và nhỏ
        Ngành: bán lẻ, dịch vụ, thương mại điện tử
```

### 2-2-Công cụ Planttext
[Planttext](https://planttext.com/) là nền tảng giúp chuyển đổi code plantUML thành dạng biểu đồ giúp trực quan hóa mô hình.

```
@startuml
title Sơ đồ phả hệ gia đình

' Định nghĩa các cá nhân
A - B : Kết hôn
A --|> C : Con
B --|> C : Con
A --|> D : Con
B --|> D : Con
E --|> A : Em trai

' Định dạng hiển thị
A : Cha
B : Mẹ
C : Con trai
D : Con gái
E : Em trai của A

@enduml
```
Kết quả đầu ra:

![Ảnh](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Planttext%20UML.png)

### 2-3-Công cụ Markmap

[Markmap.js](https://markmap.js.org/repl) là một nền tảng giúp chuyển đổi Markdown thành **mindmap (sơ đồ tư duy)** trực quan và tương tác, sử dụng trực tiếp trên trình duyệt (dưới dạng HTML).

Giao diện website được chia làm 2 phần:
![Minh họa](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Markmap.gif)

**Khung bên trái:**
* Nơi bạn nhập nội dung Markdown. Nội dung này sẽ được chuyển thành mindmap.
Ví dụ:
```markdown
# Tài liệu Hướng Dẫn Sử Dụng

## Giới thiệu
- Tổng quan về phần mềm
- Mục đích sử dụng

## Sử dụng
- Tạo tài liệu mới
- Chỉnh sửa tài liệu
  - Thêm nội dung
  - Xóa nội dung
- Xuất tài liệu
  - PDF
  - HTML

## Tài liệu tham khảo
  - Hướng dẫn sử dụng chi tiết
  - FAQ

## Ghi chú
- Thường xuyên cập nhật phần mềm
- Lưu ý bảo mật tài liệu
```

**Khung bên phải:**
* Hiển thị sơ đồ mindmap tương tác được tạo từ nội dung Markdown bạn nhập.

Bạn có thể tải file mindmap về dưới dạng .html, rồi tải lên [**GitHub Pages**](https://hoanglong8.github.io/FoxAI-Data-Analyst/markmap.html) để xem trực tiếp trong tài liệu.

<img src="https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Markmap.png" alt="Hình ảnh" width="70%" />

### 2-4-Công cụ Kroki

[Kroki](https://kroki.io/) là nền tảng cho phép bạn tạo URL để nhúng sơ đồ PlantUML, GraphViz... bằng cách dán mã Markdown để tạo hình ảnh dưới dạng .png, .jpg, .svg, .pdf, .txt hoặc	base64. Điểm mạnh so với Mermaid là có thể tạo đa dạng sơ đồ hơn nhưng hạn chế là không thể chỉnh sửa trực tiếp ngay trong GitHub.

Các bước thực hiện:

**Bước 1:** Vào trang [PlantUML](https://plantuml.com/) để tạo cú pháp tạo mindmap, ví dụ như:
```
@startmindmap
*[#Orange] Colors
**[#lightgreen] Green
**[#FFBBCC] Rose
**[#lightblue] Blue
@endmindmap
```

**Bước 2:** Vào trang [Kroki](https://kroki.io/) để tạo url, ví dụ như:
```
https://kroki.io/plantuml/svg/eNpzKC5JLCrJzcxLyU0s4NKKVvYvSsxLT41VcM7PyS8q5tICCuVkpmeUpBelpubFKriDKLCom5uTk7NzrEJQfnEqQllSTilQsxOQ5HJIBRoKNRgAE0MiXw==
```

**Bước 3:** Cập nhật vào tài liệu trên GitHub bằng cú pháp:
```
![Mindmap](https://kroki.io/plantuml/png/[encoded_url])
```
![Mindmap](https://kroki.io/plantuml/svg/eNpzKC5JLCrJzcxLyU0s4NKKVvYvSsxLT41VcM7PyS8q5tICCuVkpmeUpBelpubFKriDKLCom5uTk7NzrEJQfnEqQllSTilQsxOQ5HJIBRoKNRgAE0MiXw==)


## 3-CÔNG CỤ XUẤT BẢN TÀI LIỆU
[⬆️](#nội-dung)

### 3-1-Công cụ GitBook
[GitBook](https://www.gitbook.com/) là nền tảng giúp bạn tạo trang tài liệu/sách online chuyên nghiệp, có thể mời người khác cộng tác chỉnh sửa và chia sẻ cho khách hàng.

GitBook có thể sync từ file Markdown từ GitHub, khi chỉnh sửa trên GitHub thì GitBook tự động cập nhật theo.

Các bước thực hiện:
* Tạo Space trên GitBook
* Thêm Page và sync đồng bộ từ GitHub
* Edit changes, chia sẻ và publish to web.

Kết quả đầu ra:

![1](https://img.shields.io/badge/Xem_demo-orange) [here](https://foxai-data-analyst.gitbook.io/tai-lieu-dong-bo-tu-github-foxai)

<img src="https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/GitBook.gif" width="100%" />

### 3-2-Công cụ Badge

[Badge](https://shields.io/) là các biểu tượng/huy hiệu hiển thị trạng thái, thông tin hoặc số liệu quan trọng, thường được sử dụng trong `README.md` để cung cấp thông tin nhanh (ví dụ: tình trạng dự án, phiên bản của tài liệu, cấp độ bảo mật, license...) và tăng tính chuyên nghiệp, dễ đọc, hiện đại và bắt mắt hơn.

Ví dụ:
### [FoxAI] Tài liệu triển khai dự án ABC...
![Version](https://img.shields.io/badge/Version-1.0-blue)
![License](https://img.shields.io/badge/License-MIT-yellow)
![Build Status](https://img.shields.io/badge/Build-Passing-brightgreen)
![GitHub stars](https://img.shields.io/github/stars/<username>/<repo>)
![Codecov](https://img.shields.io/codecov/c/github/<username>/<repo>)

## 4-CÔNG CỤ HỖ TRỢ THUYẾT TRÌNH
[⬆️](#nội-dung)

### 4-1-Công cụ HackMD
[HackMD](https://hackmd.io/) là nền tảng soạn thảo Markdown online, hỗ trợ chế độ trình chiếu (Slide mode) dựa trên Reveal.js.
Bạn có thể dán file Markdown (copy/paste) hoặc sync một phần với GitHub (chức năng “Import from GitHub” hoặc “Publish to GitHub”).

### Các bước thực hiện:
* Đăng nhập bằng GitHub account, thực hiện sync
* Chọn “New Note” → “Import from GitHub Gist / GitHub repo”
* Chọn file .md trong repo.
* Mọi thay đổi trên GitHub sẽ được sync với HackMD
(Hoặc bạn có thể copy/paste nội dung Markdown từ GitHub sang HackMD).

### Tạo slide trình chiếu:
* Chỉnh sửa nội dung Markdown đã có trên HackMD (nếu cần)
* Thêm --- để chia slide.
* Bấm Menu → Slide mode (hoặc “Present Slides”).
* Nếu muốn tùy chỉnh theme, transition, CSS… → sử dụng YAML front matter (khóa reveal Options).

### Kết quả đầu ra:

![1](https://img.shields.io/badge/Bookview-brightgreen) [here](https://foxai-data-analyst.gitbook.io/tai-lieu-dong-bo-tu-github-foxai)

![2](https://img.shields.io/badge/Slideview-blue) [here](https://hackmd.io/@DCs5idhtQRK_cmFBAVRcSw/B1WDl3NPyl#/)

<img src="https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/HackMD.gif" width="100%" />

### 4-2-Công cụ Napkin AI
[Napkin](https://www.napkin.ai/) là công cụ hỗ trợ ghi chú ý tưởng và tư duy sáng tạo thông qua AI, giúp người dùng ghi chú, sắp xếp và kết nối thông tin một cách thông minh.

### Các bước thực hiện:
* Đăng ký & Đăng nhập Napkin
* Viết ghi chú ngắn gọn, nhập ý tưởng hoặc tải tài liệu lên
* AI gợi ý cách kết nối ý tưởng và mở rộng nội dung
* Tạo bản đồ tư duy từ các ý tưởng

### Kết quả đầu ra:
![4](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Napkin.gif)

## 5-CÔNG CỤ QUẢN LÝ TÀI LIỆU, DỰ ÁN
[⬆️](#nội-dung)

### 5-1-Công cụ GitHub

[Git](https://git-scm.com/) là Hệ thống Quản lý Phiên bản VCS (Version Control System) giúp quản lý tài liệu, theo dõi phiên bản thay đổi, chia sẻ việc sửa cho nhóm và giữ được lịch sử chỉnh sửa tài liệu thông qua một số nền tảng: GitHub, GitLab, hoặc Bitbucket.

**1.Các thao tác với kho lưu trữ từ xa (Remote Repository)**

- Liên kết kho lưu trữ từ xa bằng link online hoặc GitHub Desktop
- Tải tài liệu lên kho lưu trữ Repo
- Thành viên trong team có thể tải hàng loạt tài liệu bằng lệnh `Git clone`:
```
git clone https://github.com/username/repository-name.git
```
**2.Quản lý phiên bản**

- Tạo nhánh (fork) để chỉnh sửa mà không ảnh hưởng đến tài liệu gốc
- Tạo Commit history sau mỗi lần chỉnh sửa
- Tạo Pull request để gửi yêu cầu phê duyệt tài liệu
- Hợp nhất thay đổi (merge) hoặc phê duyệt thay đổi tài liệu
- Nếu nhiều người cùng chỉnh sửa một file, Git sẽ báo xung đột để tạo ra 2 phiên bản khác

### 5-2-Công cụ GitLab
[GitLab](https://gitlab.com/) là một nền tảng mã nguồn mở cung cấp giải pháp quản lý mã nguồn, CI/CD (Tích hợp liên tục & Triển khai liên tục) cho phép localhost, bảo mật và cộng tác nhóm phát triển phần mềm, giúp:

* Tối ưu hóa quy trình phát triển phần mềm nhờ CI/CD mạnh mẽ.
* Cộng tác hiệu quả giữa các nhóm lập trình viên, QA, DevOps.
* Bảo mật chặt chẽ với các công cụ kiểm tra mã nguồn tự động.
* Giải pháp all-in-one thay thế các công cụ riêng lẻ như GitHub, Jenkins, Jira.

Một số quy tắc quản lý tài liệu:
* Quy định rõ cấu trúc tài liệu (ví dụ: đặt tên file, thư mục).
* Quy định cách ghi chú thay đổi (changelog).
* Thông báo email khi có thay đổi các phiên bản tài liệu.
* Gửi tài liệu mới đến các bên liên quan (Lập trình viên, Tư vấn, Kinh doanh, Khách hàng...)

## Tóm tắt
Với tài liệu hướng dẫn này, các nhân viên FoxAI sẽ có công cụ và quy trình rõ ràng để tạo ra những tài liệu chuyên nghiệp, hiệu quả và luôn được cập nhật. Điều này không chỉ nâng cao chất lượng dịch vụ mà còn cải thiện khả năng hỗ trợ khách hàng và đào tạo nội bộ.

[⬆️ Quay lại đầu trang](#nội-dung)
