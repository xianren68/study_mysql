# 1. 显示系统时间(日期+时间)
SELECT NOW();

# 2. 查询员工号，姓名工资，以及提高20%的工资 new salary
SELECT employee_id, last_name, salary, salary * 1.2 AS "new salary"
FROM employees;

# 3. 将员工的姓名按首字母升序，并写出姓名的长度 length
SELECT last_name, LENGTH(last_name) AS "length"
FROM employees
ORDER BY last_name ASC;

# 4. 查询员工id,last_name,salary并作为一行输出,别名为out_put
SELECT CONCAT_WS(',',employee_id, last_name, salary) AS "out_put"
FROM employees;

# 5. 查询公司各个员工工作的年数，工作的天数，并按照工作年数降序排序
SELECT employee_id,DATEDIFF(NOW(), hire_date)/365 AS "work_years",DATEDIFF(NOW(), hire_date) AS "work_days"
FROM employees
ORDER BY work_years DESC;

# 6. 查询雇佣时间在1997年之后，department_id为80/90/100,并且commission_pct不为null的员工姓名
# hire_date,department_id
SELECT last_name,hire_date,department_id
FROM employees
WHERE YEAR(hire_date) >= 1997
AND department_id IN (80,90,100)
AND commission_pct IS NOT NULL;

# 7. 查询入职公司超过10000天的员工姓名，入职时间
SELECT last_name, hire_date
FROM employees
WHERE DATEDIFF(NOW(), hire_date) >= 10000;

# 8. 做一个查询，产生下面结果
# <last_name> earns <salary> monthly but wants <salary*3>
SELECT CONCAT(last_name, ' earns ', TRUNCATE(salary,0), ' monthly but wants ',  TRUNCATE(salary * 3,0), '') AS "wish"
FROM employees;

# 9.使用case-when，按照下面的条件：
/*job                  grade
AD_PRES              	A
ST_MAN               	B
IT_PROG              	C
SA_REP               	D
ST_CLERK             	E

产生下面的结果:
*/
SELECT job_id,CASE WHEN job_id = 'AD_PRES' THEN 'A'
    WHEN job_id = 'ST_MAN' THEN 'B'
    WHEN job_id = 'IT_PROG' THEN 'C'
    WHEN job_id = 'SA_REP' THEN 'D'
    WHEN job_id = 'ST_CLERK' THEN 'E'
    END 'grade'
FROM employees;

# 其它写法
SELECT job_id,CASE job_id WHEN 'AD_PRES' THEN 'A'
    WHEN 'ST_MAN' THEN 'B'
    WHEN 'IT_PROG' THEN 'C'
    WHEN 'SA_REP' THEN 'D'
    WHEN 'ST_CLERK' THEN 'E'
    END 'grade'
FROM employees;

