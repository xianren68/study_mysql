# 1. 查询员工12个月的工资总和,并取类型别名为 ANNUAL SALARY
SELECT salary *(1 + IFNULL(commission_pct, 0)) * 12 AS "ANNUAL SALARY"
FROM employees;
# 2. 查询employees表中,去掉job_id重复值后的数据
SELECT DISTINCT job_id  
FROM employees;
# 3. 查询工资大于12000的员工工资和姓名
SELECT salary, first_name, last_name 
FROM employees
WHERE salary > 12000;
# 4. 查询工号为176的员工姓名和部门id
SELECT first_name,last_name, department_id
FROM employees
WHERE employee_id = 176;
# 5. 显示departments表结构,并展示表中所有数据
DESC departments;
SELECT *
FROM departments;