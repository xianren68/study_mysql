# 1. 查询工资不在5000到12000之间的员工信息
SELECT employee_id,last_name,salary
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;
# WHERE salary < 5000 OR salary > 12000;

# 2. 查询在20或50号部门工作的员工姓名及部门号
SELECT last_name,department_id
FROM employees
# WHERE department_id IN (20,50);
WHERE department_id = 20 OR department_id = 50;

# 3. 查询公司中没有管理者的员工姓名及job_id
SELECT last_name,job_id
FROM employees
# WHERE manager_id <=> NULL;
# WHERE manager_id IS NULL;
WHERE ISNULL(manager_id);

# 4. 查询公司中有奖金的员工姓名,工资和奖金级别
SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct IS NOT NULL;

# 5. 查询名字中第三个字母为a的员工姓名
SELECT last_name FROM employees
WHERE last_name LIKE '__a%';   

# 6. 查询姓名中有a和k的员工姓名
SELECT last_name FROM employees
WHERE last_name LIKE '%a%' AND last_name LIKE '%k%';

# 7. 查询出表中first_name以e结尾的员工信息
SELECT * FROM employees
WHERE first_name LIKE '%e';
# WHERE first_name REGEXP 'e$';

# 8. 查询出部门编号在80-100之间的员工的姓名,工种
SELECT last_name,job_id
FROM employees
WHERE department_id BETWEEN 80 AND 100;

# 9. 查询表employees中manager_id是100,101,110的员工姓名,工资,以及管理者id
SELECT last_name,salary,manager_id
FROM employees
WHERE manager_id IN (100,101,110);
