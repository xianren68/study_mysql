# 1. 查询员工的姓名，部门号和年薪，并按照年薪降序排列，如果年薪相同，则按照部门号升序排列
SELECT last_name,department_id,salary * 12 年薪
FROM employees 
ORDER BY 年薪 DESC,department_id ASC;

# 2. 查询工资不在8000到17000的员工的姓名和工资，按工资降序排列，显示第21-40位的数据
SELECT last_name,salary
FROM employees
WHERE salary NOT BETWEEN 8000 AND 17000
ORDER BY salary DESC
LIMIT 20 OFFSET 20;

# 3. 查询邮箱中包含e的员工信息，并先按邮箱的字节数降序，再按部门号升序
SELECT *
FROM employees
WHERE email LIKE '%e%'
ORDER BY LENGTH(email) DESC,department_id ASC;