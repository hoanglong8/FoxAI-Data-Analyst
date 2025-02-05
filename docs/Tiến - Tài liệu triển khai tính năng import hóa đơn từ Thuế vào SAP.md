# Hướng Dẫn Xuất Danh Sách Hóa Đơn Mua hàng Từ gdt.gov.vn Sang .csv Để Import Vào SAP

## 1. Giới Thiệu
- Mục đích của tài liệu.
- Đối tượng áp dụng (kế toán, quản trị hệ thống SAP, nhân viên IT).
- Tổng quan về quy trình.

## 2. Điều Kiện & Chuẩn Bị
### 2.1. Tài Khoản & Quyền Truy Cập
- Yêu cầu có tài khoản truy cập vào **gdt.gov.vn**.
- Quyền hạn cần thiết để tải dữ liệu hóa đơn.

### 2.2. Công Cụ Hỗ Trợ
- Trình duyệt web (**Chrome, Firefox**).
- Phần mềm hỗ trợ đọc và chỉnh sửa file `.csv` hoặc `.txt ` (**Excel, Notepad++, VS Code**).
- SAP Business One Workbend có hỗ trợ import hóa đơn.

## 3. Hướng Dẫn Xuất Danh Sách Hóa Đơn Trên gdt.gov.vn
### 3.1. Đăng Nhập Hệ Thống
- Truy cập **[https://hoadondientu.gdt.gov.vn](https://hoadondientu.gdt.gov.vn)**.
- Đăng nhập bằng **Tài khoản MST** hoặc **Chữ ký số**.

### 3.2. Truy Vấn Danh Sách Hóa Đơn
- Vào menu **Quản lý hóa đơn** → **Tra cứu hóa đơn**.
- Chọn **Khoảng thời gian** cần xuất dữ liệu.
- Lọc hóa đơn theo các tiêu chí (**MST người bán, trạng thái hóa đơn, loại hóa đơn**).

### 3.3. Xuất Dữ Liệu Hóa Đơn
- Nhấn ... copy link...
- Lưu file trên máy tính dưới dạng `.csv` hoặc `.txt`.
- Chọn **Encoding: UTF-8** để tránh lỗi font tiếng Việt.

## 5. Import Danh Sách Hóa Đơn Vào SAP
### 5.1. Kiểm Tra Cấu Trúc File CSV Đúng Chuẩn
- File CSV cần có các cột theo thứ tự:
  1. Số hóa đơn
  2. Ngày hóa đơn
  3. MST người mua
  4. MST người bán
  5. Tổng tiền
  6. Thuế GTGT
  7. Mô tả sản phẩm/dịch vụ

### 5.2. Import Dữ Liệu Vào SAP Business One
- Vào **Modules** → **Kế Toán** → **Import hóa đơn**.
- Chọn **File CSV** và tiến hành nhập dữ liệu.
- Kiểm tra và xác nhận dữ liệu sau khi import.

## 6. Kiểm Tra Và Xử Lý Lỗi
### 6.1. Lỗi Trong File CSV
- Dữ liệu bị sai định dạng số, ngày tháng.
- Thiếu hoặc dư cột dữ liệu.

### 6.2. Lỗi Khi Import Vào SAP
- Thông báo lỗi về mã hóa UTF-8.
- Lỗi trùng số hóa đơn đã tồn tại trong SAP.
- Lỗi quyền truy cập khi import.

## 8. Phụ Lục
- 02 Mẫu file CSV đúng chuẩn để import vào SAP.
- 01 Mẫu file Excel gốc từ gdt.gov.vn.

