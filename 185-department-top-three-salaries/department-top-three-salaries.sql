# Write your MySQL query statement below
SELECT d.name as Department,e1.name as Employee,e1.salary as Salary
FROM employee e1 inner join department d on e1.departmentId=d.id
WHERE 3 > (
    SELECT COUNT(DISTINCT e2.salary)
    FROM employee e2
    WHERE e2.departmentId = e1.departmentId
      AND e2.salary > e1.salary
);