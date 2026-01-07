-- EX3:  Làm quen với Index (Một cột)
-- Tạo bảng employees và thêm dữ liệu
CREATE TABLE employees(
    emp_id VARCHAR(10) PRIMARY KEY ,
    full_name VARCHAR(100) NOT NULL ,
    department VARCHAR(100) NOT NULL ,
    salary DECIMAL(5,2),
    id_number INT
);
INSERT INTO employees
VALUES ('E001', 'Nguyễn Văn An', 'Nhân sự', 35.00, 100001),
       ('E002', 'Trần Thị Bình', 'Kế toán', 42.50, 100002),
       ('E003', 'Lê Minh Cường', 'CNTT', 50.00, 100003),
       ('E004', 'Phạm Thị Dung', 'Marketing', 38.75, 100004),
       ('E005', 'Hoàng Văn Em', 'Kinh doanh', 45.00, 100005),
       ('E006', 'Vũ Quốc Huy', 'CNTT', 52.00, 100006),
       ('E007', 'Đặng Thị Lan', 'Nhân sự', 36.25, 100007),
       ('E008', 'Bùi Văn Minh', 'Kế toán', 41.00, 100008),
       ('E009', 'Ngô Thị Nga', 'Marketing', 39.50, 100009),
       ('E010', 'Phan Văn Quân', 'Kinh doanh', 47.00, 100010);
-- Tạo index tìm kiếm nhân viên theo phòng ban
CREATE INDEX department_idx
ON employees(department);
-- Tìm kiếm nhân viên theo index
SELECT *
FROM employees
WHERE department='CNTT';
SHOW INDEXES FROM employees;