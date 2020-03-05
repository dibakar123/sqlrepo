create database pms;
use pms; 
CREATE TABLE PMS_DEPARTMENT_DETAILS
(DEPARTMENT_ID int(2)PRIMARY KEY,DEPARTMENT_NAME VARCHAR(30)NOT NULL,
 DEPARTMENT_LOCATION VARCHAR(30)NOT NULL,DEPARTMENT_EXTENSION int(3) NOT NULL);
 
 
INSERT INTO PMS_DEPARTMENT_DETAILS VALUES(10,'MIS','HYDERABAD_ZONE_1',121);
INSERT INTO PMS_DEPARTMENT_DETAILS VALUES(20,'GHEE SECTION','ONGOLE',122);
INSERT INTO PMS_DEPARTMENT_DETAILS VALUES(30,'PROCESSING SECTION','RAJAMUNDRY',123);
INSERT INTO PMS_DEPARTMENT_DETAILS VALUES(40,'BI_PRODUCTS SECTION','SECUNDERABAD',124);
INSERT INTO PMS_DEPARTMENT_DETAILS VALUES(50,'DISPATCH SECTION','HYDERABAD_ZONE_2',125);
INSERT INTO PMS_DEPARTMENT_DETAILS VALUES(60,'CUSTOMER CARE SECTION','HYDERABAD_ZONE_2',126);

CREATE TABLE PMS_MANAGER_DETAILS
(Manager_ID int(5) PRIMARY KEY,Manager_Name VARCHAR(30) NOT NULL,
Job VARCHAR(30) NOT NULL,Boss_Code int(5),Salary double(7,2) NOT NULL,
Commission int(5),DEPARTMENT_ID int(2));


INSERT INTO PMS_MANAGER_DETAILS VALUES(7711,'BLAKE','GENERAL MANAGER',NULL,25000,2500,10);
INSERT INTO PMS_MANAGER_DETAILS VALUES(7722,'LARANCE','DEPUTY GENERAL MANAGER',7711,28000,1500,10);
INSERT INTO PMS_MANAGER_DETAILS VALUES(7733,'GATES','MANAGER',7722,26750,500,20);
INSERT INTO PMS_MANAGER_DETAILS VALUES(7744,'CALRK','MANAGER',7722,22000,1000,30);
INSERT INTO PMS_MANAGER_DETAILS VALUES(7755,'VINCY','MANAGER',7722,17500,0,40);
INSERT INTO PMS_MANAGER_DETAILS VALUES(7766,'GALE','MANAGER',7722,16500,0,50);
INSERT INTO PMS_MANAGER_DETAILS VALUES(7770,'NANCY','ASSISTANT MANAGER',7733,30000,500,20);
INSERT INTO PMS_MANAGER_DETAILS VALUES(7771,'GOUD','ASSISTANT MANAGER',7744,23000,750,30);
INSERT INTO PMS_MANAGER_DETAILS VALUES(7772,'NAIDU','ASSISTANT MANAGER',7755,18500,0,40);
INSERT INTO PMS_MANAGER_DETAILS VALUES(7773,'RAO','ASSISTANT MANAGER',7766,15000,3000,50);
INSERT INTO PMS_MANAGER_DETAILS VALUES(7774,'RAJU','ASSISTANT MANAGER',7722,21050,2000,10);
INSERT INTO PMS_MANAGER_DETAILS VALUES(7775,'REDDY','ASSISTANT MANAGER',7722,28500,0,10);



CREATE TABLE PMS_UNIT_DETAILS
(UNIT_ID VARCHAR(2) PRIMARY KEY,UNIT_NAME VARCHAR(30) NOT NULL,
 PIECE_WEIGHT VARCHAR(15) NOT NULL,TOTAL_PIECES int(3) NOT NULL,
 UNIT_WEIGHT double(5,2) NOT NULL);
 
 
 
INSERT INTO PMS_UNIT_DETAILS VALUES('C1','CARTON','235 ML/GMS',20,5);
INSERT INTO PMS_UNIT_DETAILS VALUES('M1','MIN_BOX','25 GMS',20,.5);
INSERT INTO PMS_UNIT_DETAILS VALUES('M2','MAX_BOX','25 GMS',40,1);
INSERT INTO PMS_UNIT_DETAILS VALUES('C2','CAN','19.7 KGS',1,20);
INSERT INTO PMS_UNIT_DETAILS VALUES('T1','TIN','30 GMS',50,1.5);
INSERT INTO PMS_UNIT_DETAILS VALUES('P1','PACK','980 ML',1,1);
INSERT INTO PMS_UNIT_DETAILS VALUES('P2','HALF_PACK','480 ML/GMS',1,0.5);
INSERT INTO PMS_UNIT_DETAILS VALUES('P3','CHOTA_PACK','235 ML/GMS',1,0.25);


CREATE TABLE PMS_PRODUCT
(PRODUCT_ID VARCHAR(5) PRIMARY KEY,PRODUCT_NAME VARCHAR(30) NOT NULL,
 DEPARTMENT_ID int(2));
 
 
INSERT INTO PMS_PRODUCT VALUES('P001','MIXED GHEE',20);
INSERT INTO PMS_PRODUCT VALUES('P002','PANNER',20);
INSERT INTO PMS_PRODUCT VALUES('P003','COOKING BUTTER',20);
INSERT INTO PMS_PRODUCT VALUES('P004','RASAGULLA',40);
INSERT INTO PMS_PRODUCT VALUES('P005','CURD',40);
INSERT INTO PMS_PRODUCT VALUES('P006','DIET MILK',30);
INSERT INTO PMS_PRODUCT VALUES('P007','TONNED MILK',30);
INSERT INTO PMS_PRODUCT VALUES('P008','FAMILY MILK',30);
INSERT INTO PMS_PRODUCT VALUES('P009','STANDERED MILK',30);
INSERT INTO PMS_PRODUCT VALUES('P010','WHOLE MILK',30);
INSERT INTO PMS_PRODUCT VALUES('P011','BUTTER MILK',40);
INSERT INTO PMS_PRODUCT VALUES('P012','DOODH PEDA',40);
INSERT INTO PMS_PRODUCT VALUES('P013','MILK SHAKE',40);

CREATE TABLE PMS_PRODUCT_UNIT
(PRODUCT_ID VARCHAR(5),UNIT_ID VARCHAR(2));


INSERT INTO PMS_PRODUCT_UNIT  VALUES('P001','C2');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P001','P2');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P001','P3');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P001','P1');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P002','C1');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P002','P1');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P002','P2');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P002','P3');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P006','P1');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P006','P2');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P006','P3');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P007','P1');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P007','P2');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P007','P3');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P008','P1');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P008','P2');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P008','P3');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P009','P1');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P009','P2');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P009','P3');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P010','P1');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P010','P2');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P010','P3');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P003','P2');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P003','P3');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P004','T1');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P005','P3');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P011','P3');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P012','M1');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P012','M2');
INSERT INTO PMS_PRODUCT_UNIT  VALUES('P013','C1');


CREATE TABLE PMS_MANUFACTURING
(MANFATURE_ID VARCHAR(5) PRIMARY KEY,PRODUCT_ID VARCHAR(5) NOT NULL,
 UNIT_ID VARCHAR(5) NOT NULL,QUANTITY int(7) NOT NULL,AVAILABILITY VARCHAR(3) NOT NULL,
PRODUCT_MANFACTURE_DATE DATE NOT NULL,PRODUCT_EXPIRY_DATE DATE NOT NULL);


INSERT INTO PMS_MANUFACTURING VALUES('M001','P001','C2',100,'YES','2012-08-15','2012-12-15');
INSERT INTO PMS_MANUFACTURING VALUES('M002','P001','P2',500,'YES','2012-08-10','2012-12-15');
INSERT INTO PMS_MANUFACTURING VALUES('M003','P001','P3',250,'YES','2012-08-10','2012-12-15');
INSERT INTO PMS_MANUFACTURING VALUES('M004','P001','P1',300,'NO','2012-08-15','2012-12-15');
INSERT INTO PMS_MANUFACTURING VALUES('M005','P002','C1',190,'YES','2012-08-5','2012-08-31');
INSERT INTO PMS_MANUFACTURING VALUES('M006','P002','P1',500,'YES','2012-08-5','2012-08-31');
INSERT INTO PMS_MANUFACTURING VALUES('M007','P002','P2',250,'YES','2012-08-5','2012-08-31');
INSERT INTO PMS_MANUFACTURING VALUES('M008','P002','P3',500,'YES','2012-08-5','2012-08-31');
INSERT INTO PMS_MANUFACTURING VALUES('M009','P006','P1',4500,'YES','2012-08-15','2012-08-16');
INSERT INTO PMS_MANUFACTURING VALUES('M010','P006','P2',7500,'YES','2012-08-15','2012-08-16');
INSERT INTO PMS_MANUFACTURING VALUES('M011','P006','P3',10000,'YES','2012-08-15','2012-08-16');
INSERT INTO PMS_MANUFACTURING VALUES('M012','P007','P1',4000,'YES','2012-08-15','2012-08-16');
INSERT INTO PMS_MANUFACTURING VALUES('M013','P007','P2',3000,'YES','2012-08-15','2012-08-16');
INSERT INTO PMS_MANUFACTURING VALUES('M014','P007','P3',2500,'YES','2012-08-15','2012-08-16');
INSERT INTO PMS_MANUFACTURING VALUES('M015','P008','P1',7000,'NO','2012-08-15','2012-08-16');
INSERT INTO PMS_MANUFACTURING VALUES('M016','P008','P2',3500,'YES','2012-08-15','2012-08-16');
INSERT INTO PMS_MANUFACTURING VALUES('M017','P008','P3',4500,'YES','2012-08-15','2012-08-16');
INSERT INTO PMS_MANUFACTURING VALUES('M018','P009','P1',1500,'NO','2012-08-15','2012-08-16');
INSERT INTO PMS_MANUFACTURING VALUES('M019','P009','P2',2500,'YES','2012-08-15','2012-08-16');
INSERT INTO PMS_MANUFACTURING VALUES('M020','P009','P3',1000,'YES','2012-08-15','2012-08-16');
INSERT INTO PMS_MANUFACTURING VALUES('M021','P010','P1',10000,'YES','2012-08-15','2012-08-16');
INSERT INTO PMS_MANUFACTURING VALUES('M022','P010','P2',25000,'YES','2012-08-15','2012-08-16');
INSERT INTO PMS_MANUFACTURING VALUES('M023','P010','P3',12500,'YES','2012-08-15','2012-08-16');
INSERT INTO PMS_MANUFACTURING VALUES('M024','P003','P2',2400,'YES','2012-08-15','2012-10-10');
INSERT INTO PMS_MANUFACTURING VALUES('M025','P003','P3',3210,'NO','2012-08-15','2012-10-10');
INSERT INTO PMS_MANUFACTURING VALUES('M026','P004','T1',750,'YES','2012-08-15','2012-10-10');
INSERT INTO PMS_MANUFACTURING VALUES('M027','P005','P3',10000,'YES','2012-08-15','2012-08-17');
INSERT INTO PMS_MANUFACTURING VALUES('M028','P011','P3',27500,'YES','2012-08-15','2012-08-16');
INSERT INTO PMS_MANUFACTURING VALUES('M029','P012','M1',2750,'YES','2012-08-15','2012-08-31');
INSERT INTO PMS_MANUFACTURING VALUES('M030','P012','M2',1850,'NO','2012-08-15','2012-08-31');
INSERT INTO PMS_MANUFACTURING VALUES('M031','P013','C1',1300,'YES','2012-08-10','2012-08-11');




/*Simple Questions:
Problem # 1:
List the Managers and their respective Boss Names. In select list we have Manager_ID, Manager_Name, Job, and Boss_Name.
Hint:  PMS_MANAGER_DETAILS alias as Manager
        PMS_MANAGER_DETAILS alias as Boss
          Boss_Name as an alias in the select query.*/ 
          
 select Manager.manager_id , Manager.manager_name , Manager.job , Boss.manager_name 'Boss_Name'
 from pms_manager_details Manager join pms_manager_details Boss
 on Manager.manager_id = Boss.boss_code;

/*Problem # 2:
Find the 2nd Highest Salary Earner of all the Managers. 
In select list we have Manager_ID,Manager_Name,Job,Salary,Commission,Department_ID.*/

select * from pms_manager_details
group by salary
order by salary desc
limit 1,1;


/*Problem # 3:
Find out the Employees whose name has letter ‘A’ in the 2nd position & are earning more than the salary whose name starts with ‘V’.
 In select list we have MANAGER_ID, MANAGER_NAME, JOB, and SALARY.*/

select manager_id , manager_name , job, salary
from pms_manager_details
where manager_name like '_a%' 
and salary >any
(select salary 
from pms_manager_details
where manager_name like 'v%');


/*Problem # 4:
Add 7.5% of salary as performance bonus for each employee and display the net yearly salary of each employee.
 (Do not update the database.). In select list we have MANAGER_ID, MANAGER_NAME, JOB, and YEARLY_SALARY.
YEARLY_SALARY as an alias for the expression used in select query.*/

select manager_id , manager_name , job , 1.075*salary*12 YEARLY_SALARY
from pms_manager_details;


/*Problem # 5:
Display the Manufactured products details that are belong to ‘GHEE SECTION’.
 In select list we have MANFATURE_ID, PRODUCT_NAME, UNIT_ID, QUANTITY, PRODUCT_MANFACTURE_DATE, and PRODUCT_EXPIRY_DATE.

Hint:   PMS_MANUFACTURING                     TABLE ALIAS AS                 M
            PMS_PRODUCT                                    TABLE ALIAS AS                  P*/
select M.MANFATURE_ID, P.PRODUCT_NAME, M.UNIT_ID, M.QUANTITY, M.PRODUCT_MANFACTURE_DATE, M.PRODUCT_EXPIRY_DATE
from pms_manufacturing M join pms_product P 
on M.product_id = P.product_id
join pms_department_details d 
on d.department_id = P.department_id
where lower(d.department_name) = 'ghee section';

/*  Problem # 6:
FIND SUM OF QUANTITY WITH RESPECT TO EACH QUANTITY.*/
select sum(quantity)
from pms_manufacturing
group by product_id;

/*Problem # 7:
Find the list of products which are available as on ’15-DEC-12’.*/

select product_id 
from pms_manufacturing
where '2012-12-15' between product_manfacture_date and product_expiry_date
and lower(availability) = 'yes';

/*Problem # 8:
Find the list of products along with their count which are not available as on ’15-DEC-12’.
 In select query COUNT_PRODUCT as an alias for count field.*/
 
select product_id , count(product_id) COUNT_PRODUCT
from pms_manufacturing
where '2012-12-15' between product_manfacture_date and product_expiry_date
and lower(availability) = 'no'
group by product_id;
 
 
/*Problem # 9:
Find the employees with higher salary than the average salary of ‘MANAGER’ and those are all not MANAGER’S. 
In select list we have Manager_ID, Manager_Name and their Job details.*/



/*Problem # 10:
Display the manager details who are drawing the salary more than 20000 Rs/-. 
And we need to display the manager name in proper case and order by department wise. 
In select list we have Manager_ID, Manager_Name and Department_ID.*/
select Manager_ID, concat(upper(left(manager_name , 1)) ,lower(substr(Manager_Name,2))) , Department_ID
from pms_manager_details
where salary > 20000
order by department_id;

/*Average Questions:
Problem # 1:
Write a query to display the  Department_Name, Department_Location  whose number of employees are more than or equal to  4*/
select d.department_name , d.department_location 
from pms_department_details d join pms_manager_details m
on d.department_id = m.department_id
group by d.department_id
having count(m.manager_id) >= 4;


/*Problem # 2:
Find the Persons with a Job which has the highest average salary.  In select list we have manager_id , manager_name , job , salary*/
select manager_id , manager_name , job , salary 
from pms_manager_details
where job in
(select job from pms_manager_details
group by job
having avg(salary)=
(select avg(salary) avg_sal from pms_manager_details
group by job
order by avg_sal desc
limit 1));



/*Problem # 3:
List the employees who earn more than their own department’s average salary and display them in Department_ID order. 
In select list we have MANAGER_ID, MANAGER_NAME, JOB, SALARY, and DEPARTMENT_ID.*/

select m.MANAGER_ID, m.MANAGER_NAME, m.JOB, m.SALARY, m.DEPARTMENT_ID
from pms_manager_details m
where m.salary >
(select avg(m1.salary) from pms_manager_details m1
where m.department_id = m1.department_id)
order by department_id;


/*Problem # 4:
Display the Product details that are ends with MILK. In select list we have to display PRODUCT_ID, PRODUCT_NAME, UNIT_ID, and UNIT_WEIGHT.
Hint:  PMS_PRODUCT                  Table Alias as                          P
          PMS_PRODUCT_UNIT       Table Alias as                         U
          PMS_UNIT_DETAILS          Table Alias as                         D */
          
select P.PRODUCT_ID, P.PRODUCT_NAME, D.UNIT_ID, D.UNIT_WEIGHT
from pms_product P join pms_product_unit U 
on P.product_id = U.product_id
join pms_unit_details D 
on U.unit_id = D.unit_id
where P.product_name like '%MILK';


/*Problem # 5:
Display the Product Name’s along with their possible packing details in the order of Weight. 
 In select list we have to display PRODUCT_NAME, UNIT_NAME, TOTAL_PIECES, and UNIT_WEIGHT.
Hint:  PMS_PRODUCT                  Table Alias as                          P
          PMS_PRODUCT_UNIT       Table Alias as                         U
          PMS_UNIT_DETAILS          Table Alias as                         D  */
          
select P.PRODUCT_NAME, D.UNIT_NAME, D.TOTAL_PIECES,  D.UNIT_WEIGHT
from pms_product P join pms_product_unit U 
on P.product_id = U.product_id
join pms_unit_details D 
on U.unit_id = D.unit_id
order by D.unit_weight;

/*Problem # 6:
Display the product_id and sum of quantity whose available status is ‘yes’. And sum of quantity greater than 1500.
Hint:  TOTAL_QUANTITY is an Alias name used in the select query. */

select product_id , sum(quantity) TOTAL_QUANTITY
from pms_manufacturing
where lower(availability) = 'yes'
group by product_id
having sum(quantity) > 1500;




/*Problem # 7:
Display Product_ID, Product_Name, Department_ID and the number of varieties of units available as on ’15-dec-12’.
Hint:          NUMBER_VARIETIES                  as an Alias name for Count field in select query.
                   PMS_MANUFACTURING          Table Alias as     M
                   PMS_PRODUCT                        Table Alias as       P  */
                   
select P.Product_ID, P.Product_Name, P.Department_ID , count(distinct M.unit_id) NUMBER_VARIETIES   
from PMS_PRODUCT P join PMS_MANUFACTURING M
on P.product_id = M.product_id
where '2012-12-15' between M.product_manfacture_date and M.product_expiry_date
and lower(M.availability) = 'yes'
group by M.product_id;



/*Problem # 8:
List the employees earning more than the average salary of employees based out of ONGOLE. In select list we have MANAGER_ID and MANAGER_NAME */
select manager_id , manager_name
from pms_manager_details
where salary >
(select avg(salary) from pms_manager_details m join pms_department_details d
on m.department_id = d.department_id 
where d.department_location <> 'ONGOLE');


/*Problem#9:
List the MANAGER’s who have salary higher than that of the department with highest number of employees. 
In select list we have MANAGER_ID, MANAGER_NAME, JOB and SALARY.*/


select MANAGER_ID, MANAGER_NAME, JOB , SALARY from pms_manager_details 
where salary > (
select max(salary) from pms_manager_details where department_id in (
select department_id from pms_manager_details group by department_id
having count(manager_id) = (
select max(c) from ( 
select count(manager_id) C from pms_manager_details group by department_id)t)));

/*Problem#10:
List the departments which does not have any employees. In select query we have DEPARTMENT_ID,DEPARTMENT_NAME  */
select department_id , department_name 
from pms_department_details 
where department_id not in
(select department_id 
from pms_manager_details );

/*Complex Questions:
Problem # 1:
Display the details of manager who is drawing the 7th highest salary among all the other managers. 
In select list we have  MANAGER_ID,MANAGER_NAME,JOB,SALARY and DEPARTMENT_ID  */
select e1.MANAGER_ID,e1.MANAGER_NAME,e1.JOB,e1.SALARY ,e1.DEPARTMENT_ID 
from pms_manager_details e1
where 7-1 = 
(select count(distinct e2.salary) 
from pms_manager_details e2
where e2.salary>e1.salary);

select MANAGER_ID,MANAGER_NAME,JOB,SALARY ,DEPARTMENT_ID 
from pms_manager_details 
where salary =
(select distinct salary from pms_manager_details
order by salary desc
limit 6,1);
 

/*Problem # 2:
Write a query to find the list of all the sub ordinates whose salary is greater than the respective boss salary. 
In select list we have  S.MANAGER_ID,S.MANAGER_NAME,S.JOB,S.SALARY,S.DEPARTMENT_ID,B.MANAGER_ID,B.MANAGER_NAME,B.SALARY  

Hint: PMS_MANAGER_DETAILS       Table Alias as     S
          PMS_MANAGER_DETAILS      Table Alias as      B  */
select S.MANAGER_ID,S.MANAGER_NAME,S.JOB,S.SALARY,S.DEPARTMENT_ID,B.MANAGER_ID,B.MANAGER_NAME,B.SALARY  
from PMS_MANAGER_DETAILS S join PMS_MANAGER_DETAILS  B 
on S.boss_code = B.manager_id 
where s.salary > b.salary;


/*Problem # 3:
Find the number of batches manufactured greater than 5 in each month
 Displaying the Month name and Number of batches.
Hint:   MONTH AS AN ALIAS NAME FOR MONTH NAME
            NUMBER_BATCHES  AS AN ALIAS NAME FOR COUNT FIELD IN THE SELECT QUERY*/
select month(product_manfacture_date) MONTH , 
count(product_manfacture_date) NUMBER_BATCHES
from pms_manufacturing
group by MONTH
having NUMBER_BATCHES >5;

/*Problem # 4:
Display the PRODUCT_ID, PRODUCT_NAME, and DEPARTMENT_ID which is manufactured maximum with respect to sum of quantity.*/

select p.PRODUCT_ID, p.PRODUCT_NAME, p.DEPARTMENT_ID
from pms_product p join pms_manufacturing m 
on p.product_id = m.product_id
group by p.product_id , p.PRODUCT_NAME, p.DEPARTMENT_ID
having sum(quantity) =
(select max(c) from (select sum(quantity) c 
from pms_manufacturing  
group by product_id) t);

/*Problem # 5:
Find the maximum quantity manufactured with respect to each product and display the product id, product name and Quantity from each product.
Hint: PMS_MANUFACTURING  Table Alias as M
          PMS_PRODUCT   Table Alias as  PP */

select PP.product_id , PP.product_name , max(M.quantity)
from pms_product PP join pms_manufacturing M
on PP.product_id = M.product_id
group by PP.product_id , PP.product_name;


