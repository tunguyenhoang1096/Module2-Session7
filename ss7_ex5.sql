-- EX5: View phục vụ phân quyền truy cập
SELECT * FROM employees;
-- Tạo view hiển thị: mã nv, họ tên, phòng ban
CREATE VIEW view_emplyoee_public AS
    SELECT emp_id,full_name,department
    FROM employees;

SELECT * FROM view_emplyoee_public;