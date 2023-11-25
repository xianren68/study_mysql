# 1. 显示所有员工的姓名和部门号以及部门名称
SELECT e.last_name,d.department_id,d.department_name
FROM employees e LEFT JOIN departments d
ON e.department_id=d.department_id;

# 2. 查询90号部门员工的job_id和90号部门的location_id
SELECT job_id,d.location_id
FROM employees e JOIN departments d
ON e.department_id=d.department_id
JOIN locations l
ON d.location_id=l.location_id
WHERE d.department_id=90;

# 3. 查询所有有奖金员工的last_name,department_name,location_id和city
SELECT e.last_name,d.department_name,l.city
FROM employees e LEFT JOIN departments d
ON e.department_id=d.department_id
LEFT JOIN locations l
ON d.location_id=l.location_id
WHERE e.commission_pct IS NOT NULL;

# 4. 查询在Toronto工作的员工的last_name,job_id,department_id,location_id
SELECT e.last_name,e.job_id,d.department_id,d.department_name
FROM employees e JOIN departments d
ON e.department_id=d.department_id
JOIN locations l
ON d.location_id=l.location_id
WHERE l.city='Toronto';

# 5. 查询员工所在的部门名称、部门地址、姓名、工作、工资，其中员工所在部门的部门名称为'Executive'
SELECT d.department_name,l.street_address,e.last_name,e.job_id,e.salary
FROM employees e JOIN departments d
ON e.department_id=d.department_id
JOIN locations l
ON d.location_id=l.location_id
WHERE d.department_name='Executive';

# 6. 查询员工的姓名，员工号，以及他的管理者的姓名和员工号，结果类似于下面的格式
employees	Emp#	manager	Mgr#
kochhar		101	    king	100

SELECT e.last_name employees,e.employee_id 'Emp#',m.last_name manager,m.employee_id 'Mgr#'
FROM employees e JOIN employees m
ON e.manager_id=m.employee_id;


# 7.查询哪些部门没有员工
SELECT d.department_id
FROM employees e RIGHT JOIN departments d
ON e.department_id=d.department_id
WHERE e.employee_id IS NULL;

# 8. 查询哪个城市没有部门 
SELECT l.city
FROM departments d RIGHT JOIN locations l
ON d.location_id=l.location_id
WHERE d.department_id IS NULL;

# 9. 查询部门名为 Sales 或 IT 的员工信息
SELECT *
FROM employees e JOIN departments d
ON e.department_id=d.department_id
WHERE d.department_name='Sales' OR d.department_name='IT';



