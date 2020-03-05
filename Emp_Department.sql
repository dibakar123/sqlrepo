 nh7 Mock Test  Questions-1
============================
Schema for these queris are as follows :

employee { id int (pk), first_name v , last_name v, email v, phone_number v, hire_date date, salary int, date_of_birth date, department_id int (fk) }

department  { id int(pk), name v }


1. Write a query to display the first name of the employees who joined the organisation before Ananthi (first name is Ananthi). Display the records sorted in ascending order based on first name. 

select first_name 
from employee
where
hire_date < (select hire_date
from employee
where upper(first_name) = 'ANANTHI')
order by first_name;


2. Write a query to display the first name and last name of the seniormost (oldest) employee in the organisation. 

select first_name , last_name from employee 
order by date_of _birth desc limit 1;
       OR
select first_name , last_name
from employee
where
date_of_birth =
(select min(date_of_birth) from employees);


3. Write a query to display the department name and the average salary of the employees in the department. 
Display the records sorted in ascending order based on department name. 
Give an alias to the average salary as avg_salary. 
Consider departments in which there is atleast one employee. 

select d.name , avg(e.salary) avg_salary
from department d join employee e
on e.department_id = d.id
group by d.id
having count(e.id) > 0
order by d.name;
 

4. Write a query to display the department name and the oldest employee in each department. 
Display the records sorted in ascending order based on the department name. 
Consider departments in which there is atleast one employee. 

//CO-RELATED SUB-QUERY

select d.name , e1.first_name , e1.last_name
from employee e1 join department d
on e1.department_id = d.id and e1.date_of_birth =
(select min(e2.date-of_birth)
from employee e2
where e2.department_id = e1.department_id)
order by d.name;


5. Write a query to display the first name and last name of the employee receiving the lowest salary. 

select first_name , last_name
from employee
where salary =
(select min(salary) from employee);

6. Write a query to display the first name and department name of all employees. 
Display the records sorted in ascending order based on first name.

select e.first_name , d.name 
from employee e join department d
on e.department_id = d.id
order by e.first_name;

7. Write a query to display the department name and first name of the highest paid employee in each department.
Display the record sorted into ascending order based on department name.
Consider department in which there atleast one employee.

//CO-RELATED SUB-QUERY

select d.name , e1.first_name
from employee e1 join department d
on e1.department_id = d.id and e1.salary =
(select max(e2.salary)
from employee e2
where e2.department_id = e1.department_id)
order by d.name;


8. Write a query to list the names of departments where the average salary of the employees is greater than 30000.
Display the records sorted in ascending order based on department name.

select d.name ,avg(e.salary) avg_salary
from department d join employee e 
on e.department_id = d.id
group by e.department_id
having avg(e.salary) > 30000
order by d.name;


9. Write a query to display the first name and department of all employees.
Display the records sorted in ascending order based on first name.

select e.first_name , d.name
from employee e join department d
on e.department_id = d.id
order by first_name ;


10. Write a query to display the first name and last name of the employees receiving a salary greater than the average salary.
Display the records sorted in ascending order based on first name.
 
select first_name , last_name
from employee
where salary >
(select avg(salary) from employee)
order by first_name; 



11. Write a query to display the first name of the employees who joined the organisation after Vidya(first name is Vidya).
Display the records sorted in ascending order based on first name.

SAME AS Q1.

12. Write a query to display the first name and last name of the seniormost(oldest) employee in the organisation.

SAME AS Q2.                                 

