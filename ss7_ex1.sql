CREATE DATABASE session07DB;
USE session07DB;
-- EX1: Làm quen với View (Một bảng)
-- Tạo bảng students và thêm dữ liệu
CREATE TABLE students(
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL ,
    birth_year YEAR NOT NULL ,
    class VARCHAR(20) NOT NULL ,
    address VARCHAR(100)
);
INSERT INTO students(full_name, birth_year, class, address)
VALUES ('Nguyễn Văn An', 2002, 'CNTT01', 'Hà Nội'),
       ('Trần Thị Bình', 2003, 'CNTT01', 'Hải Phòng'),
       ('Lê Minh Cường', 2001, 'QTKD02', 'Đà Nẵng'),
       ('Phạm Thị Dung', 2002, 'KT03', 'Nam Định'),
       ('Hoàng Văn Em', 2003, 'CNTT02', 'TP. Hồ Chí Minh');
SELECT * FROM students;
-- Tạo view hiển thị: mã sv, họ tên, lớp học
CREATE VIEW view_student_basic AS
SELECT student_id,full_name,class
FROM students;
SELECT * FROM view_student_basic;