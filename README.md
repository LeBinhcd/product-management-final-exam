# Product Management Final Exam

Ứng dụng web quản lý sản phẩm bằng Java Servlet, JSP, JDBC và MySQL.

## Chức năng

- Hiển thị danh sách sản phẩm.
- Thêm sản phẩm.
- Sửa thông tin sản phẩm.
- Xóa sản phẩm có xác nhận.
- Kết nối MySQL bằng JDBC và `PreparedStatement`.

## Cơ sở dữ liệu

Chạy file `schema.sql` trong MySQL. File sẽ tạo database `product_db`, bảng `products` và một số dữ liệu mẫu.

Thông tin kết nối mặc định trong `ProductDAO`:

```text
URL: jdbc:mysql://localhost:3306/product_db?useSSL=false&serverTimezone=UTC
User: root
Password: rỗng
```

Nếu môi trường MySQL khác, cập nhật các hằng số kết nối trong `ProductDAO`.

## Build và chạy

Yêu cầu JDK 17, Maven và Tomcat 10 trở lên:

```bash
mvn clean package
```

Copy file `target/product-management-final-exam.war` vào thư mục `webapps` của Tomcat, khởi động Tomcat và truy cập:

```text
http://localhost:8080/product-management-final-exam/products
```
