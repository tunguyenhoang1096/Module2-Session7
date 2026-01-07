-- EX4: Index kết hợp (Nhiều cột)
-- Tạo bảng products và thêm dữ liệu
CREATE TABLE products(
    product_id VARCHAR(50) PRIMARY KEY ,
    product_name VARCHAR(100) NOT NULL UNIQUE ,
    product_type VARCHAR(50) NOT NULL ,
    product_price DECIMAL(4,2) NOT NULL
);
INSERT INTO products
VALUES ('P001', 'Bút bi Thiên Long', 'Văn phòng phẩm', 1.50),
       ('P002', 'Vở 200 trang', 'Văn phòng phẩm', 3.20),
       ('P003', 'Chuột máy tính', 'Thiết bị điện tử', 15.99),
       ('P004', 'Bàn phím cơ', 'Thiết bị điện tử', 45.50),
       ('P005', 'Tai nghe có dây', 'Thiết bị điện tử', 12.75),
       ('P006', 'USB 32GB', 'Thiết bị lưu trữ', 18.00),
       ('P007', 'Sạc điện thoại', 'Phụ kiện', 9.90),
       ('P008', 'Bình nước inox', 'Gia dụng', 8.60),
       ('P009', 'Đèn bàn học', 'Gia dụng', 22.40),
       ('P010', 'Balo laptop', 'Phụ kiện', 35.00);
-- Tạo index lọc theo loại sản phẩm và giá bán
CREATE INDEX type_price_idx
ON products(product_type,product_price);
-- Lọc theo loại sản phẩm
SELECT *
FROM products
WHERE product_type LIKE 'T%';
-- Lọc theo giá bán
SELECT *
FROM products
WHERE product_price > 20;

SHOW INDEXES FROM products;
