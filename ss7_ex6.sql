-- EX6: Index phục vụ tìm kiếm theo nhiều điều kiện
CREATE TABLE orders_ex6(
    order_id VARCHAR(10) PRIMARY KEY ,
    order_date DATE,
    order_status BIT DEFAULT 1,
    total DECIMAL(10,2)
);
INSERT INTO orders_ex6
VALUES ('O001', '2024-01-05', 1, 120.50),
       ('O002', '2024-01-08', 1, 75.00),
       ('O003', '2024-01-12', 0, 45.30),
       ('O004', '2024-01-15', 1, 210.00),
       ('O005', '2024-01-20', 1, 98.75),
       ('O006', '2024-02-01', 0, 150.00),
       ('O007', '2024-02-05', 1, 320.40),
       ('O008', '2024-02-10', 1, 60.00),
       ('O009', '2024-02-18', 0, 180.90),
       ('O010', '2024-02-25', 1, 250.00);
SELECT * FROM orders_ex6;
-- Tạo index lọc theo trạng thái và ngày đặt hàng
CREATE INDEX order_status_date_idx
ON orders_ex6(order_status,order_date);
SHOW INDEXES FROM orders_ex6;