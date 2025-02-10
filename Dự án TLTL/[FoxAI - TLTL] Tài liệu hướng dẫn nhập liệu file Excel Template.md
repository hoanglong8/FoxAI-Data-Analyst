# TÀI LIỆU GIẢI PHÁP KỸ THUẬT

<img src="https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/Image/Logo-Since1957-THANGLONG%202021%20(1).png" alt="Hình ảnh" width="30%" />

**Đơn vị triển khai**: *Công ty CP Công nghệ FoxAI*  
**Tính năng**: *Nhập liệu Excel*  
**Ngày ban hành**: *10/02/2025*  

![Phiên_bản](https://img.shields.io/badge/Phiên_bản-1.0-brightgreen)
![Bản_quyền](https://img.shields.io/badge/Bản_quyền-FoxAI-blue)
![Tình trạng](https://img.shields.io/badge/Tình_trạng-Đang_soạn_thảo-darkorange)
![Hỗ trợ](https://img.shields.io/badge/Hỗ_trợ_247-Chatbot-purple)
![Hotline](https://img.shields.io/badge/Liên_hệ-info@foxai.vn-red)
---

## 1. MỤC ĐÍCH TÀI LIỆU
- Tài liệu này nhằm mô tả chi tiết **cách nhập liệu** mà **Công ty cổ phần công nghệ FoxAI** cung cấp cho **Công ty thuốc lá Thăng Long**.  
- Hướng dẫn cho các **phòng ban** liên quan đến việc nhập thông tin vào *Excel*.  

---

## 2. PHẠM VI VÀ ĐỐI TƯỢNG SỬ DỤNG
- **Phạm vi**: Áp dụng cho dự án triển khai giải pháp quản trị dữ liệu/phần mềm tại đơn vị **Công ty thuốc lá Thăng Long**.  
- **Đối tượng sử dụng**:  
  I. Đội ngũ kỹ thuật / phòng CNTT.  
  II. Các phòng ban liên quan.  
  
---

## 3. GIỚI THIỆU TỔNG QUAN GIẢI PHÁP
- Database Replication là bản sao của cơ sở dữ liệu chính, được duy trì để cải thiện hiệu suất và tính sẵn sàng cao.
- Mục tiêu cốt lõi của Database Replication là phân tán tải công việc đọc, tăng cường khả năng chịu lỗi và đảm bảo tính sẵn sàng liên tục cho hệ thống. Nó cho phép sao lưu dữ liệu, phục hồi nhanh chóng khi gặp sự cố, và thực hiện phân tích mà không làm ảnh hưởng đến hoạt động của cơ sở dữ liệu chính.

---

## 4. KIẾN TRÚC VÀ CÔNG NGHỆ
### 4.1 Mô hình tổng quan

```mermaid
---
title: Mô hình giải pháp nhân bản dữ liệu
---
flowchart LR
    1_SAP --> REP
    2_IBOSS_KT --> REP
    3_IBOSS_NS --> REP
    REP --> 4_DB_REP --> ETL --> BI
    Excel --> ETL
```


### 4.2 Thành phần hệ thống trong sơ đồ
- **1_SAP**: Các dữ liệu từ phần mềm SAP
- **2_IBOSS_KT**: Các dữ liệu từ phần mềm IBOSS liên quan đến kế toán
- **3_IBOSS_NS**: Các dữ liệu từ phần mềm IBOSS liên quan đến nhân sự
- **Excel**: Dữ liệu từ các file Excel của các phòng ban liên quan
- **REP**: Replication (Sao chép dữ liệu) là quá trình sao chép và duy trì các bản sao đồng nhất của dữ liệu giữa nhiều máy chủ hoặc cơ sở dữ liệu khác nhau.
- **4_DB_REP**: Dữ liệu bản sao là một bản sao của dữ liệu từ cơ sở dữ liệu nguồn (Primary Database), được duy trì và đồng bộ hóa để phục vụ các mục đích như cải thiện hiệu suất, tăng cường khả năng sẵn sàng và đảm bảo tính dự phòng của hệ thống.
- **ETL**: Extract, Transform, Load (Trích xuất, Chuyển đổi, Nạp), là một quy trình trong lĩnh vực xử lý dữ liệu dùng để chuyển đổi và hợp nhất dữ liệu từ nhiều nguồn khác nhau vào một hệ thống đích, ở đây là phần mềm phân tích dữ liệu Power BI.
- **BI**: Power BI công cụ dùng để phân tích và trực quan hóa dữ liệu từ các dữ liệu đã làm sạch ở **ETL**.

### 4.3 Công nghệ sử dụng 
- **Cơ sở dữ liệu**: SQL Server
- **Phần mềm**: AutoHotKey, Unikey, Anaconda,Jupyter Notebook
- **Ngôn ngữ**: Ngôn ngữ SQL, Python
  
---
### 4.4. Quản lý dữ liệu Excel
- Bộ phận công nghệ thông tin bố trí thư mục trên máy chủ 4 (DB_REP)
- Xây dựng quy định về cách thức cập nhập:
  
  |Tên file báo cáo Excel| Tần suất cập nhập | Bộ phận gửi báo cáo | Thư mục lưu trữ | Cách ghi (Nối tiếp/Ghi đè)
  |----------------------|----------------------|----------------------|----------------------|----------------------|
  | | | | | |
  
## 5. Lợi ích của giải pháp Database Replication
### 5.1 Đồng bộ hóa dữ liệu

- **Sao chép đồng bộ (Synchronous Replication)**:
  - Đồng bộ hóa dữ liệu một cách tức thời 
  - Phù hợp với các hệ thống yêu cầu độ tin cậy cao
- **Sao chép không đồng bộ (Asynchronous Replication):**
  - Dữ liệu được sao chép với độ trễ cho phép.
  - Phù hợp với hệ thống yêu cầu hiệu suất cao hơn tính đồng nhất dữ liệu ngay lập tức.

### 5.2. Hỗ trợ các mô hình sao chép

- **Master-Slave Replication**
  - Một cơ sở dữ liệu chính (Master) xử lý các thao tác ghi, còn các cơ sở dữ liệu phụ (Slave) xử lý thao tác đọc.
- **Snapshot Replication**
  - Sao chép dữ liệu tại một thời điểm cụ thể (thời điểm cập nhập là 1 giờ sáng hàng ngày).

### 5.3. Ghi lại nhật ký giao dịch

- **Ghi lại nhật ký giao dịch (Transaction Logs)**
  - Sử dụng nhật ký giao dịch để theo dõi và sao chép các thay đổi trong cơ sở dữ liệu giúp người dùng dễ dàng kiểm tra nhật ký giao dịch.
  
### 5.4. Khả năng phục hồi và dự phòng

- **Hệ thống sao lưu tự động**
  - Bản sao đóng vai trò dự phòng để đảm bảo tính liên tục của dịch vụ trong trường hợp lỗi hệ thống chính.

- **Khôi phục sau thảm họa (Disaster Recovery)**
    - Nhanh chóng khôi phục dữ liệu từ bản sao trong trường hợp mất dữ liệu hoặc sự cố.

### 5.5. Bảo mật dữ liệu

- **Mã hóa dữ liệu**
  - Bảo vệ dữ liệu trong quá trình sao chép bằng mã hóa.

- **Kiểm soát truy cập**
  - Quản lý quyền truy cập vào bản sao để đảm bảo chỉ các vai trò được cấp phép mới có thể truy cập.
 
## 6. CẤU HÌNH MÁY CHỦ KHUYẾN NGHỊ

| Tên VM      | vCPU        | Memory(GB)  |  SDD(GB)    |Hệ điều hành| Băng thông mạng |
|-------------|-------------|-------------|-------------|------------|-----------------|
| Application Server                           | 16   | 64   | 1000|Windows Server |15 Mbps|
| Database Server                              | 16   | 64   | 1000 | Windows Server | 15 Mbps|
| Ổ cứng back up data cho Application Server   |    |   | 300 | |
| Ổ cứng back up data cho Database Server      |    |   | 300 | |

---
## 7. KẾT LUẬN  
Giải pháp nhân bản dữ liệu do Công ty Cổ phần Công nghệ FoxAI cung cấp giúp Công ty thuốc lá Thăng Long có các lợi ích sau:
- **Tăng hiệu suất:** Đảm bảo hệ thống hoạt động liên tục, giảm gián đoạn và tăng tốc độ xử lý.
- **Cải thiện quản trị dữ liệu:** Dễ dàng sao lưu, phục hồi và quản lý dữ liệu an toàn.
- **Tối ưu phân tích:** Kết nối Power BI và các công cụ phân tích, hỗ trợ ra quyết định nhanh chóng và chính xác.
- **Bảo mật toàn diện:** Tuân thủ tiêu chuẩn Microsoft, bảo vệ dữ liệu hiệu quả.
- **Hỗ trợ mở rộng:** Linh hoạt đáp ứng nhu cầu phát triển hệ thống trong tương lai.
Giải pháp không chỉ tập trung vào việc nâng cao hiệu suất kỹ thuật mà còn đảm bảo tính an toàn, minh bạch và khả năng ứng dụng thực tiễn trong các hoạt động vận hành và phân tích của doanh nghiệp. 

---
## 8. PHỤ LỤC
### 8.1 Phụ lục 1:
- Để phục vụ nhu cầu phân tích và báo cáo quản trị trên Power BI, dữ liệu từ hệ thống IBOSS sẽ được trích xuất và xử lý nhằm đảm bảo tính chính xác, đầy đủ và khả năng trực quan hóa. Quy trình thực hiện như sau:
  - Cài đặt Python
  - Cài đặt Jupyter Notebook/Anaconda
  - Mở Jupyter Notebook
  - Tải file Python [Lay_BaoCaoIBOSS](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/docs/LayThemDanhMucTaiKhoanIBOSS.ipynb)
  - Sử dụng Jupiter Notebook để chạy file code Python ở trên
  - Dữ liệu sẽ được tự động chuyển về file Excel
### 8.2 Phụ lục 2
- Việc chuyển mã văn bản thủ công từ TCVN3 sang Unicode bằng Unikey có thể tốn thời gian nếu xử lý nhiều dữ liệu. Sử dụng AutoHotKey (AHK), có thể tự động hóa quy trình này, giúp tiết kiệm thời gian và giảm thiểu sai sót:
  - Cài đặt Unikey
  - Cài đặt Autohotkey
  - Tải file [ChuyenMaUnicodeTuDong.ahk](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/docs/ChuyenMaUnicodeTuDong.ahk)
  - Chạy file [ChuyenMaUnicodeTuDong.ahk](https://github.com/hoanglong8/FoxAI-Data-Analyst/blob/main/docs/ChuyenMaUnicodeTuDong.ahk)
<img src="https://fox.ai.vn/wp-content/uploads/2024/07/Logo_Original-1.png" alt="Hình ảnh" width="30%" />

> **Thông tin liên hệ:**  **Công ty cổ phần công nghệ FoxAI**  

> **Địa chỉ:** Tầng 3, tòa nhà N03-T3, khu đô thị mới Ngoại giao Đoàn, Bắc Từ Liêm, Tp.Hà Nội

> **Điện thoại:** 0246 254 4578

> **Email:** info@fox.ai.vn 

