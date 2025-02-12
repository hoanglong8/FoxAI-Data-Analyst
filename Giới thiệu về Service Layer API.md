**Tổng quan về Service Layer API**

Service Layer API trong SAP Business One là một giao diện lập trình ứng dụng (API) mạnh mẽ cho phép người dùng và ứng dụng bên ngoài giao tiếp và tương tác với hệ thống SAP Business One thông qua các dịch vụ web RESTful. Service Layer API giúp tích hợp SAP Business One với các ứng dụng khác, tạo ra sự linh hoạt cao trong việc truy xuất và quản lý dữ liệu mà không cần can thiệp trực tiếp vào cơ sở dữ liệu.

Service Layer API cung cấp một lớp trung gian giữa ứng dụng bên ngoài và hệ thống SAP Business One. Với Service Layer, người dùng có thể thực hiện các thao tác CRUD (Create, Read, Update, Delete) trên các đối tượng dữ liệu trong SAP B1 mà không cần trực tiếp truy cập vào cơ sở dữ liệu. Mục tiêu chính của Service Layer API là hỗ trợ các tích hợp và mở rộng hệ thống SAP B1, giúp doanh nghiệp cải thiện hiệu quả công việc và mở rộng khả năng tương tác.

Service Layer API sử dụng giao thức HTTP/HTTPS và dựa trên chuẩn REST (Representational State Transfer). Các yêu cầu API được gửi qua các HTTP method như GET, POST, PUT và DELETE, giúp thực hiện các thao tác với dữ liệu trong SAP B1. Dữ liệu được trả về theo định dạng JSON hoặc XML, dễ dàng tích hợp với các ứng dụng web hoặc di động.

**Đường dẫn tham khảo cách lấy Service Layer API**

Truy cập đường dẫn chính thức Tại đây:
https://help.sap.com/doc/056f69366b5345a386bb8149f1700c19/10.0/en-US/Service%20Layer%20API%20Reference.html

**Hướng dẫn sử dụng cơ bản:**

**1. Chuẩn bị môi trường:**

Trước khi bắt đầu sử dụng Service Layer API, bạn cần đảm bảo môi trường của SAP Business One đã được cài đặt và cấu hình đúng:

Cài đặt SAP Business One: Đảm bảo rằng bạn đã cài đặt SAP Business One (HANA hoặc SQL Server) và cấu hình đúng hệ thống.
Cài đặt Service Layer: Cần cài đặt và cấu hình Service Layer trên server SAP B1 để có thể thực hiện các gọi API.
Bảo mật và quyền truy cập: Đảm bảo rằng các quyền truy cập và bảo mật cho API được thiết lập chính xác.

**2. Cấu hình và kết nối với Service Layer API:**

Service Layer API sử dụng HTTP/HTTPS để giao tiếp với các ứng dụng bên ngoài, do đó bạn cần thực hiện kết nối qua URL của Service Layer.

URL cơ bản của Service Layer:
Đối với SAP B1 HANA: https://<SAP_B1_SERVER>:50000/b1s/v1/
Đối với SAP B1 SQL Server: https://<SAP_B1_SERVER>:50000/b1s/v1/

**3. Xác thực (Authentication):**

Trước khi gọi các API, bạn cần xác thực người dùng. Dưới đây là cách thức xác thực cơ bản:

POST yêu cầu đăng nhập:
Gửi yêu cầu HTTP POST để đăng nhập và lấy phiên làm việc.

Request:

POST https://<SAP_B1_SERVER>:50000/b1s/v1/Login
Content-Type: application/json
Authorization: Basic <Base64 encoded username:password>

{
  "CompanyDB": "Your_Company_DB",
  "UserName": "username",
  "Password": "password"
}

**Response**: Khi đăng nhập thành công, bạn sẽ nhận được **session ID** dùng để thực hiện các cuộc gọi tiếp theo.

**4. Các phương thức HTTP chính:**

GET: Lấy dữ liệu từ SAP B1.
POST: Tạo mới bản ghi trong SAP B1.
PUT: Cập nhật bản ghi đã có trong SAP B1.
DELETE: Xóa bản ghi trong SAP B1.

**5. Ví dụ về các API call cơ bản:**

Lấy danh sách khách hàng (GET)
Để lấy danh sách tất cả các khách hàng trong SAP B1:

Request:

GET https://<SAP_B1_SERVER>:50000/b1s/v1/BusinessPartners
Authorization: Bearer <session_id>
Response: Dữ liệu trả về là danh sách các khách hàng dưới dạng JSON, ví dụ:


{
  "value": [
    {
      "CardCode": "C10000",
      "CardName": "Customer A",
      "CardType": "C"
    },
    {
      "CardCode": "C10001",
      "CardName": "Customer B",
      "CardType": "C"
    }
  ]
}

**Tạo mới khách hàng (POST)**

Để tạo mới một khách hàng trong SAP B1:

Request:


POST https://<SAP_B1_SERVER>:50000/b1s/v1/BusinessPartners
Authorization: Bearer <session_id>
Content-Type: application/json

{
  "CardCode": "C10002",
  "CardName": "New Customer",
  "CardType": "C"
}

Response: Dữ liệu trả về xác nhận việc tạo khách hàng mới.

Cập nhật khách hàng (PUT)
Để cập nhật thông tin khách hàng:

Request:


PUT https://<SAP_B1_SERVER>:50000/b1s/v1/BusinessPartners('C10002')
Authorization: Bearer <session_id>
Content-Type: application/json

{
  "CardName": "Updated Customer"
}
Response: Xác nhận thông tin khách hàng đã được cập nhật thành công.

Xóa khách hàng (DELETE)
Để xóa khách hàng:

Request:

DELETE https://<SAP_B1_SERVER>:50000/b1s/v1/BusinessPartners('C10002')
Authorization: Bearer <session_id>
Response: Xác nhận việc xóa khách hàng đã thành công.

**6. Các bước kết thúc phiên làm việc:**
   
Sau khi hoàn thành các thao tác với Service Layer API, bạn cần đăng xuất để kết thúc phiên làm việc.

Request:


POST https://<SAP_B1_SERVER>:50000/b1s/v1/Logout
Authorization: Bearer <session_id>
Response: Phiên làm việc sẽ kết thúc và bạn không thể thực hiện các yêu cầu API tiếp theo mà không đăng nhập lại.

**7. Xử lý lỗi và phản hồi:**
   
Khi gọi API, bạn có thể nhận được mã lỗi nếu có vấn đề gì xảy ra. Ví dụ:

401 Unauthorized: Lỗi xác thực, có thể là sai tên người dùng hoặc mật khẩu.
400 Bad Request: Yêu cầu không hợp lệ, có thể thiếu tham số bắt buộc.
500 Internal Server Error: Lỗi từ phía máy chủ.
Ví dụ thông báo lỗi:


{
  "error": {
    "code": -1,
    "message": "Invalid username or password."
  }
}
