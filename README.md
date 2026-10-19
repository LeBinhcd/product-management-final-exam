# Product Management Final Exam

Ứng dụng web quản lý sản phẩm được xây dựng bằng Java Servlet, JSP, JDBC và MySQL, có thể đóng gói thành file WAR để triển khai trên Apache Tomcat.

## Chức năng

- Hiển thị danh sách sản phẩm.
- Thêm sản phẩm mới.
- Sửa thông tin sản phẩm.
- Xóa sản phẩm và có xác nhận trước khi xóa.
- Lưu trữ dữ liệu bằng MySQL thông qua JDBC.

## Cấu trúc dự án

Dự án được tổ chức rõ ràng theo mô hình đơn giản:

```text
product-management-final-exam/
├── pom.xml                         # Cấu hình Maven và dependency
├── schema.sql                      # Tạo database, bảng và dữ liệu mẫu
├── README.md                       # Hướng dẫn cài đặt và chạy dự án
└── src/main/
    ├── java/com/codegym/product/
    │   ├── controller/
    │   │   └── ProductServlet.java # Điều hướng và xử lý request
    │   ├── dao/
    │   │   └── ProductDAO.java     # Truy vấn database bằng JDBC
    │   └── model/
    │       └── Product.java        # Đối tượng sản phẩm
    └── webapp/
        ├── css/style.css           # Giao diện
        └── WEB-INF/
            ├── views/
            │   ├── list.jsp        # Danh sách sản phẩm
            │   └── form.jsp        # Form thêm/sửa
            └── web.xml              # Cấu hình web application
```

## Quản lý dependency bằng Maven

Dự án sử dụng Maven thông qua file `pom.xml` để quản lý các dependency:

- `jakarta.servlet-api`: xây dựng Servlet và Web application.
- `mysql-connector-j`: kết nối MySQL bằng JDBC.
- `maven-war-plugin`: đóng gói dự án thành file WAR.

Build dự án bằng lệnh:

```bash
mvn clean package
```

## Cơ sở dữ liệu

Chạy file `schema.sql` trong MySQL. File sẽ tạo database `product_db`, bảng `products` và dữ liệu mẫu.

```bash
mysql -u root -p < schema.sql
```

Thông tin kết nối mặc định trong `ProductDAO`:

```text
URL: jdbc:mysql://localhost:3306/product_db?useSSL=false&serverTimezone=UTC
User: root
Password: rỗng
```

Nếu thông tin MySQL khác, cập nhật các hằng số kết nối trong `ProductDAO.java`.

## Triển khai trên Apache Tomcat

Yêu cầu:

- JDK 17 trở lên.
- Maven.
- MySQL.
- Apache Tomcat 10 trở lên.

Sau khi build thành công, file WAR được tạo tại:

```text
target/product-management-final-exam.war
```

Copy file WAR vào thư mục `webapps` của Tomcat, khởi động Tomcat và truy cập:

```text
http://localhost:8080/product-management-final-exam/products
```

## Cam kết về nguồn mã

Mã nguồn trong dự án được tự xây dựng cho bài kiểm tra này dựa trên yêu cầu đề bài và kiến thức đã học. Dự án không sao chép mã nguồn từ nguồn bên ngoài mà không trích dẫn rõ ràng.
