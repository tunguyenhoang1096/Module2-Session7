-- EX2: View từ nhiều bảng
-- Tạo bảng customers, orders và thêm dữ liệu vào bảng
CREATE TABLE customers(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL
);
INSERT INTO customers(customer_name)
VALUES ('Tuấn'),
       ('Linh'),
       ('Mạnh'),
       ('Nhàn'),
       ('Thương');
CREATE TABLE orders(
    order_id VARCHAR(10) PRIMARY KEY,
    order_date DATE NOT NULL ,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO orders
VALUES ('OD01','2025-01-03',1),
       ('OD02','2025-01-04',2),
       ('OD03','2025-01-05',3),
       ('OD04','2025-01-06',4);
-- Tạo view hiện thị: mã đơn hàng, ngày đặt hàng, tên khách hàng
CREATE VIEW view_order_info AS
SELECT order_id,order_date,customer_name
FROM orders o JOIN customers c ON o.customer_id = c.customer_id;

SELECT * FROM view_order_info;