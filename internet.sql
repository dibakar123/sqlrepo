create database internet;
use internet;

CREATE TABLE customers(
	Customer_Id int ,
	First_Name varchar(25) ,
	Last_Name varchar(25) ,
	Birth_Date varchar(25) ,
	Join_Date date ,
	City varchar(45) ,
	State varchar(25) ,
	Street varchar(40) ,
	main_phone_num varchar(12) ,
	secondary_phone_num varchar(12) ,
	fax varchar(12) ,
	monthly_discount decimal(4, 2) ,
	pack_id int );

INSERT customers VALUES(1,'Alvin','Smith','1962-06-27','2012-05-12','NewYork','NewYork','5953HollisterAvenue','567.867.3945','936.228.9436','762.788.3400',CAST(28.00 AS Decimal(4,2)),18);

INSERT  customers VALUES(2,'Jose','Jones','1968-01-17','2012-05-12','LosAngeles','California','4081HollisterAvenue','520.336.8373','939.115.6982','711.883.3345',CAST(12.00 AS Decimal(4,2)),31);

INSERT customers VALUES(3,'Amado','Taylor','1965-08-17','2012-05-12','Chicago','Illinois','3402BroderickStreet','522.501.6331','976.113.3737','767.944.7131',NULL,7);

INSERT  customers VALUES(4,'Stuart','Williams','1983-05-01','2012-05-12','Houston','Texas','5543JenningsStreet','530.339.4737','963.891.4185','756.186.3634',CAST(17.00 AS Decimal(4,2)),23);

INSERT customers VALUES(5,'Demarcus','Brown','1971-12-02','2012-05-12','Philadelphia','Pennsylvania','5321LagunaStreet','580.733.2184',NULL,'760.663.2046',CAST(11.00 AS Decimal(4,2)),13);

INSERT customers VALUES(6,'Mark','Davies','1970-09-01','2012-05-12','Phoenix','Arizona','5868CameronWay','557.701.1366','919.345.5511',NULL,CAST(18.00 AS Decimal(4,2)),39);

INSERT customers VALUES(7,'Merlin','Evans','1962-04-13','2012-05-12','SanAntonio','Texas','8177BrannanStreet','542.753.9215','992.959.8999',NULL,CAST(23.00 AS Decimal(4,2)),1);

INSERT customers VALUES(8,'Elroy','Wilson','1963-01-28','2012-05-12','SanDiego','California','1873KeyAvenue','544.172.1347','985.345.8501',NULL,CAST(6.00 AS Decimal(4,2)),42);

INSERT customers VALUES(9,'Charles','Thomas','1960-05-13','2012-05-12','SanJose','California','9164ValenciaStreet','515.656.3047',NULL,'799.101.7626',CAST(29.00 AS Decimal(4,2)),37);

INSERT customers VALUES(10,'Rudolph','Roberts','1973-11-05','2012-05-12','Jacksonville','Florida','6308GilbertStreet','549.569.1762','942.671.2496','729.973.1742',CAST(7.00 AS Decimal(4,2)),7);

INSERT customers VALUES(11,'Laurence','Johnson','1975-11-25','2012-05-12','Indianapolis','Indiana','7529McLarenAvenue','527.138.3311','916.219.9787',NULL,CAST(9.00 AS Decimal(4,2)),34);

INSERT customers VALUES(12,'Pasquale','Lewis','1969-05-24','2012-05-12','Austin','Texas','1569ClevelandStreet','566.849.6722','983.706.4341',NULL,NULL,27);

INSERT customers VALUES(13,'Pat','Walker','1985-07-02','2012-05-12','SanFrancisco','California','4687SloatBoulevard','582.885.8362','938.219.8802',NULL,NULL,31);

INSERT customers VALUES(14,'Harland','Robinson','1974-04-17','2012-05-12','Columbus','Ohio','5390MontgomeryStreet','520.519.1795','944.392.2529','721.443.8826',CAST(30.00 AS Decimal(4,2)),31);

INSERT customers VALUES(15,'Herschel','Wood','1974-07-24','2012-05-12','FortWorth','Texas','7842CorbettAvenue','588.826.5279','997.263.1636','779.791.4617',CAST(30.00 AS Decimal(4,2)),41);

INSERT customers VALUES(16,'Galen','Thompson','1964-12-08','2012-05-12','Charlotte','NorthCarolina','5466FarragutAvenue','599.783.7133',NULL,'753.251.6433',CAST(16.00 AS Decimal(4,2)),1);

INSERT customers VALUES(17,'Brain','White','1978-02-13','2012-05-12','Detroit','Michigan','3728IngersonStreet','561.654.2679','957.711.4041','794.811.7354',NULL,34);

INSERT customers VALUES(18,'Marcel','Watson','1978-10-12','2012-05-12','ElPaso','Texas','9157LeidesdorffStreet','567.827.2421','937.806.4116','723.277.6166',CAST(28.00 AS Decimal(4,2)),23);

INSERT customers VALUES(19,'Lino','Jackson','1982-06-25','2012-05-12','Memphis','Tennessee','4542McKinnonAvenue','557.460.8507','984.433.8202','792.908.7024',CAST(6.00 AS Decimal(4,2)),27);

INSERT customers VALUES(20,'Riley','Wright','1970-02-18','2012-05-12','Boston','Massachusetts','4848VallejoStreet','541.661.3366','931.368.3046','737.625.7424',CAST(21.00 AS Decimal(4,2)),1);


CREATE TABLE packages(
	pack_id int,
	speed varchar(10) ,
	strt_date date ,
	monthly_payment int ,
	sector_id int );
    
INSERT packages VALUES(1,'750Kbps','2012-05-12',79,1);

INSERT packages VALUES(2,'750Kbps','2012-05-12',69,1);

INSERT packages VALUES(3,'750Kbps','2012-05-12',59,1);

INSERT packages VALUES(4,'750Kbps','2012-05-12',49,1);

INSERT packages VALUES(5,'750Kbps','2012-05-12',39,1);

INSERT packages VALUES(6,'750Kbps','2012-05-12',29,1);

INSERT packages VALUES(7,'750Kbps','2012-05-12',69,2);

INSERT packages VALUES(8,'750Kbps','2012-05-12',59,2);

INSERT packages VALUES(9,'750Kbps','2012-05-12',49,2);

INSERT packages VALUES(10,'750Kbps','2012-05-12',39,2);

INSERT packages VALUES(11,'750Kbps','2012-05-12',29,2);

INSERT packages VALUES(12,'750Kbps','2012-05-12',19,2);

INSERT packages VALUES(13,'1.5Mbps','2012-05-12',89,1);

INSERT packages VALUES(14,'1.5Mbps','2012-05-12',79,1);

INSERT packages VALUES(15,'1.5Mbps','2012-05-12',69,1);

INSERT packages VALUES(16,'1.5Mbps','2012-05-12',59,1);

INSERT packages VALUES(17,'1.5Mbps','2012-05-12',49,1);

INSERT packages VALUES(18,'1.5Mbps','2012-05-12',79,2);

INSERT packages VALUES(19,'1.5Mbps','2012-05-12',69,2);

INSERT packages VALUES(20,'1.5Mbps','2012-05-12',59,2);

INSERT packages VALUES(21,'1.5Mbps','2012-05-12',49,2);

INSERT packages VALUES(22,'1.5Mbps','2012-05-12',39,2);

INSERT packages VALUES(23,'2.5Mbps','2012-05-12',99,1);

INSERT packages VALUES(24,'2.5Mbps','2012-05-12',89,1);

INSERT packages VALUES(25,'2.5Mbps','2012-05-12',79,1);

INSERT packages VALUES(26,'2.5Mbps','2012-05-12',69,1);

INSERT packages VALUES(27,'2.5Mbps','2012-05-12',89,2);

INSERT packages VALUES(28,'2.5Mbps','2012-05-12',79,2);

INSERT packages VALUES(29,'2.5Mbps','2012-05-12',69,2);

INSERT packages VALUES(30,'2.5Mbps','2012-05-12',59,2);

INSERT packages VALUES(31,'5Mbps','2012-05-12',109,1);

INSERT packages VALUES(32,'5Mbps','2012-05-12',99,1);

INSERT packages VALUES(33,'5Mbps','2012-05-12',89,1);

INSERT packages VALUES(34,'5Mbps','2012-05-12',99,2);

INSERT packages VALUES(35,'5Mbps','2012-05-12',89,2);

INSERT packages VALUES(36,'5Mbps','2012-05-12',79,2);

INSERT packages VALUES(37,'10Mbps','2012-05-12',119,1);

INSERT packages VALUES(38,'10Mbps','2012-05-12',109,1);

INSERT packages VALUES(39,'10Mbps','2012-05-12',109,2);

INSERT packages VALUES(40,'10Mbps','2012-05-12',99,2);

INSERT packages VALUES(41,'12Mbps','2012-05-12',129,1);

INSERT packages VALUES(42,'12Mbps','2005-11-03',119,2);



CREATE TABLE sectors(
	sector_id int ,
	sector_name varchar(10)) ;
    
    
INSERT sectors VALUES(1,'Private');

INSERT sectors VALUES(2,'Business');


CREATE TABLE pack_grades(
	grade_id int,
	grade_name varchar(25),
	min_price int,
	max_price int);
    
    
INSERT pack_grades VALUES (1, 'Very Low', 0, 10);

INSERT pack_grades VALUES (2, 'Low', 11, 20);

INSERT pack_grades VALUES (3, 'Medium', 21, 40);

INSERT pack_grades VALUES (4, 'High', 41, 80);

INSERT pack_grades VALUES (5, 'Very High', 81, 150);

select * from customers;
select * from packages;
select * from sectors;
select * from pack_grades;
use internet;

/*

3.Create a query to display the customer number, first name, last name, primary phone number, secondary phone number and package number (Customers table).
*/

select customer_id , First_name , Last_name ,main_phone_num , secondary_phone_num , pack_id from customers;
/*
4.Create a query to display first name, last name, join date, monthly discount, monthly discount after an addition of 20% and monthly discount after a reduction of 20%  (Customers table).
*/
select First_name , Last_name , join_date , Monthly_discount ,monthly_discount*0.2 as discount , monthly_discount-0.2 as reduction from customers; 
/*
5.Create a query to display the package number, speed, strt_date (the date when the package became available), monthly payment, and monthly payment * 12, name the last column “YearlyPayment” (Packages table).
*/
select pack_id , speed , strt_date , monthly_payment , monthly_payment*12 as 'Yearly Payment' from Packages;
/*
6.Create a query to display the last name concatenated with the first name, separated by space, and main phone number concatenated with secondary phone number, separated by comma and space. Name the column heading FULL_NAME and CONTACT_DETAILS respectively. (Customers table)
*/
select concat(last_name ,'  ', first_name) FULL_NAME , concat(main_phone_num , ' , ', secondary_phone_num ) CONTACT_DETAILS from customers;

/*
7.Create a query to display unique cities from the Customers table.
*/
select distinct(city) from customers;

/*
8.Create a query to display unique states from the Customers table.
*/

select distinct(state) from customers;

/*
9.Create a query to display unique combination of cities and states from Customers table.
*/
select distinct(concat(city, '  ',state) ) as combo from customers ;

/*
10.Create a query to display the last name concatenated with the state, separated by space. Name this column CUSTOMER_AND_STATE (Customers table)
*/
select concat(last_name ,'  ' , state) CUSTOMER_AND_STATE from customers;

/*
11.Create a query to display the first name, last name, monthly discount and city concatenated with street, separated by space.  Name the column headings: FN, LN, DC and FULL_ADDRESS respectively (Customers table).
*/
select concat(first_name , '  ',last_name , '  ', monthly_discount , '  ', city , '  ', street  ) as 'FN , LN ,DC and  FULL_ADDRESS' from customers;
  
/*
12.Create a query to display unique monthly discounts in Customers table.
*/
select distinct(monthly_discount) from customers;

/*
13.Create a query to display unique packages (package_id) in Customers table.
*/
select distinct(pack_id) from customers;


/*
=Practice SQL WHERE Conditions

Exercises
/*
1.Display the first name, last name, and package number for all customers whose last name is “King” (Customers table).
*/

select first_name , last_name , pack_id from customers
where lower(last_name) = 'king';

/*
2.Display all the data from Packages table for packages whose speed is “5Mbps”.
*/
select * from packages 
where lower(speed) = '5mbps';
/*
3.Display the first name, last name, package number and monthly discount for all customers with monthly discount less than 30 (Customers table).
*/
select first_name , last_name , pack_id , monthly_discount from customers
where monthly_discount < 30;

/*
4.Display all the data from Customers table for all customers who joined the company before January 1st, 2007.
*/
select * from customers where join_date = '2017-01-01';

/*
5.Display the customer number, first name ,state, city and package number for all customers whose package number equals 21, 28, or 14 (Customers table).
*/
select customer_id , first_name , last_name , state , city , pack_id from customers
where pack_id in(21,28,14) ;

/*
6.Display the customer number, first name ,state, city and package number for all customers whose package number is not equal to 27, 10, or 3 (Customers table).
*/
select customer_id , first_name , state , city , pack_id from customers 
where pack_id not in(27,10,3);

/*
7.Display the last name, main phone number, monthly discount and package number for all customers whose customer number equals 703, 314 or 560 (Customers table).
*/
select last_name , main_phone_num , monthly_discount , pack_id from customers
where customer_id in(703, 314 , 560);

/*
8.Display the first name and monthly discount for all customers whose first name ends with an e (Customers table).
*/
select first_name , monthly_discount from customers 
where first_name like '%e';

/*
9.Display the last name and package number for all customers where the second letter of their last name is d (Customers table).
*/
select last_name , pack_id from customers 
where last_name like '_d%'; 

/*
10.Display all the data from Customers table for all customers who have the letters:  l, j or h in their last name. Order the query in descending order by monthly discount (Customers table).
*/
select * from customers 
where lower(last_name) like '%l%' or '%j%' or '%h%'
order by monthly_discount desc;
/*
11.Display the first name, join date, monthly discount and package number for all customers who don’t have the letter a in their last name. Order the query in ascending order by package number (Customers table).
*/
select first_name , join_date , monthly_discount , pack_id from customers 
where lower(last_name) not like '%a%';

/*
12.Display all data from Customers table for all customers without a package (package number is null)
*/
select * from customers 
where pack_id is null;

/*

13.Display the first name concatenated with the last name (separated by space), and monthly discount for all customers whose monthly discount is not in the range between 20 and 30. Order the query in ascending order by the full name (Customers table).
*/
select concat(first_name , '  ', last_name) as 'Full_Name' , monthly_discount from customers 
where monthly_discount not between 20 and 30
order by Full_Name;
/*
14.Display the first name concatenated with the last name (separated by space), the main phone number concatenated with street (separated by space), and monthly discount for all customers whose monthly discount is in the range between 11 and 27. Name the column headings FULL_NAME, CONTACTS, and DC respectively (Customers table).
*/
select concat(first_name ,'  ' , last_name) Full_Name , concat(main_phone_num ,'  ' , street) Contacts , monthly_discount DC from customers
where monthly_discount between 11 and 27;

/*
15.Display all data from Customers table for :
All customers who live in New York and whose monthly discount is in the range between 30 and 40 
*/
select * from customers 
where lower(city) = 'new work' and monthly_discount between 30 and 40;
/*
16.All customers whose package number is not 8,19, or 30 and whose join date is before January 1st, 2007
*/

select * from customers 
where pack_id not in(8,9,30) and join_date < 2007-01-01;
/*
17.Display the last name, package number, and birthdate for all customers whose join date is in the range between December 12th, 2007 and April 17th, 2010 (Customers table).
*/
select last_name , pack_id , birth_date from customers
where join_date between '2007-12-12' and '2010-04-17';
/*
18.Display the package number, start date, and speed for all packages whose start date is before January 1st, 2007 (Packages table)
*/
select pack_id , strt_date , speed  from packages 
where strt_date < '2007-01-01';
/*
19.Display the package number, speed, and sector number for all packages whose sector number equals 1 (Packages table).
*/
select pack_id , speed , sector_id from packages 
where sector_id = 1;

/*
20.Display the package number, speed and sector number for all packages with internet speed of “5Mbps” or “10Mbps” (Packages table).
*/
select pack_id , speed , sector_id from packages
where lower(speed) = '5mbps' or lower(speed) = '10mbps'; 

/*
21.Display the last name and monthly discount for all customers live in Orlando (Customers table).
*/
select last_name , monthly_discount from customers 
where lower(city) = 'orlando';

/*
22.Display the last name and package number for all customers whose package number equals 9 or 18. Preform the exercise once using IN operator, once using OR (Customers table).
*/
select last_name , pack_id from customers 
where pack_id in(9,18);

/*
23.Display the first name, main phone number and secondary phone number for all customers without a secondary phone number (secondary phone number is null).
*/
select first_name , main_phone_num , secondary_phone_num from customers
where secondary_phone_num is null;

/*
24.Display the first name, monthly discount and package id for all customers without any monthly discount (monthly discount is null).
*/
use internet;
select first_name , monthly_discount , pack_id from customers
where monthly_discount is  null;


/*
String Functions
--------------

Display the customer number, first name in lowercase and last name in uppercase for all customers whose customer number is in the range of 80 and 150.
*/
select customer_id , lower(first_name) , upper(last_name) from customers
where customer_id between 80 and 150;

/*
Generating Email Addresses
1. For all customers – display the last name, first name and email address. The email address will be composed from the first letter of first name concatenated with three first letters of last name concatenated with the string “@mymail.com” (For example : Ram Kedem ? RKED@mymail.com).
*/
select first_name , last_name , concat(substr(upper(first_name) , 1,1) , substr(upper(last_name), 1, 3) , '@mymail.com') from customers;

/*
2. For all customers – display the last name, first name and email address. The email address will be composed from the first letter of first name concatenated with three last letters of last name concatenated with the string “@mymail.com” (For example : Ram Kedem ? RDEM@mymail.com).
*/
select first_name , last_name , concat(substr(upper(first_name) , 1,1) , substr(upper(last_name), -3, 3) , '@mymail.com') from customers;


/*
3.Display the last name and the length of the last name for all customers where last name’s length is greater than 9 characters.
*/
select last_name , length(last_name) from customers
where length(last_name) >9;

/*
Phone Numbers :

1. Display the first name, last name, main phone number and a new phone number using the REPLACE function. In the new phone number replace all occurrences of “515” with “$$$”.
*/
select first_name , last_name , main_phone_num ,replace(main_phone_num ,'515' ,'$$$' ) as 'new phone number' from customers;

select lpad('abc' , 10 , '*');
select rpad('abc' , 10 , '*');
select instr('india' , 'di');
select instr('india' , 'nda');/*  SEARCHING STRING IN ANOTHER STRING*/

select POSITION('nd' IN 'india');

select replace('india','di','xy');

/*
2.Display the first name, last name, main phone number and new phone number using the REPLACE function. In the new phone number replace all prefixes of “515” with “$$$” (only if the first 3 digits of the phone number contains the digits “515” replace those digits with “$$$”).
*/
select first_name , last_name , main_phone_num ,(case when left(main_phone_num , 3 ) = '515' then 
replace(main_phone_num ,'515' ,'$$$' ) else main_phone_num end) as 'new phone number' from customers;

/*
Numeric Functions
------------
From customers table, for all customers, display :
1 . first name.
2. monthly discount.
3. monthly discount after addition of 19.7%.
4. monthly discount after addition of 19.7%, expressed as a whole number (ROUND).
5. monthly discount after addition of 19.7%, round down to the nearest whole number (FLOOR).
6. monthly discount after addition of 19.7%, round up to the nearest whole number (CEILING).
*/
select first_name from customers;

select monthly_discount from customers;

select 1.197*monthly_discount from customers;

select  round(1.197*monthly_discount , 0)  from customers;

select floor(monthly_discount*1.197)  from customers;

select   ceiling(monthly_discount*1.197)  from customers;

/*
Date Functions
==============
From Customers table, for all customers, display the first name, join date, join date minus 10 days, join date plus one month and the date difference between join date and current date.
*/
select first_name , join_date ,
date_add(join_date , interval -10 day) , 
date_add(join_date , interval 1 month) ,
datediff(current_date() , join_date)
from customers;

/*
Display the first name, birthdate and age for all customers whose older than 50.
*/
select first_name , birth_date ,
round((datediff(current_date() , birth_date)) / 365  ,0) as age 
from customers
where datediff(current_date() , birth_date) > 50*365; 

/*
Display all the data from Customers table, for all customers whose birthdate is today.
*/
select * from customers 
where month(birth_date) = month(current_date())
and
day(birth_date) = day(current_date());

/*
Display the first name, join date and 
the difference in years between join date and 
current date for all customers where today have passed exactly 5 years since they joined the company.
*/

select first_name , birth_date ,
round((datediff(current_date() , join_date)) / 365  ,0) 
from customers
where datediff(current_date() , join_date) = 5*365;

/*
Conversion functions
-----------------
Display the first name concatenated with the join date, and last name concatenated with the monthly discount, for all customers.
 Solve this exercise using CAST function
 */
 
 select concat(first_name ,'  '  , cast( join_date as char)) , 
 concat(last_name , '  ' ,  cast(monthly_discount as char))
 from customers;
 
/*
From Customers table, for all customers whose last name starts with a d or k, display:
1. last name
*/
select last_name 
from customers
where lower(substr(last_name , 1,1)) in ('a','d','k');
/*
2. state in uppercase concatenated with customer number
*/

select concat(upper(state) ,  convert(customer_id , char))
from customers
where lower(substr(last_name , 1,1)) in ('a','d','k');

/*
3. join date concatenated with birthdate

Solve this exercise using CONVERT, and in the WHERE clause instead of using LIKE, try to define the filtering condition using SUBSTRING.

*/

select  concat(join_date , convert(birth_date , date)) 
from customers
where lower(substr(last_name , 1,1)) in ('a','d','k');


/*
Null-Related Functions
-----------------
Phone numbers report:

Display the first name, last name, birth date, main phone number and secondary phone number for all customers whose package number equals 27.
 Replace every null value in main phone number or in secondary phone number with ‘N/A’.
*/

select first_name , last_name , birth_date , coalesce(main_phone_num , 'N/A') ,
coalesce(secondary_phone_num, 'N/A')
from customers
where pack_id = 27;
				
						/* OR */

select first_name , last_name , birth_date , ifnull(main_phone_num , 'N/A') ,
ifnull(secondary_phone_num, 'N/A')
from customers
where pack_id = 27;
/*
Display the first name, last name, birth date, main phone number, secondary phone number for all customers who was born on 1972.
 Replace every null value in main phone number or in secondary phone number with ‘N/A’.
*/

select first_name , last_name , birth_date , coalesce(main_phone_num , 'N/A') ,
coalesce(secondary_phone_num, 'N/A')
from customers
where birth_date = 1972;

/*
CASE Function
-------------
From Customers table, for all customers, display the first name, last name, monthly discount and a discount grade based on these conditions :
1. If the discount is between 0 and 10 – discount grade level is A.
2. If the discount is between 11 and 20 – discount grade level is B.
3. If the discount is between 21 and 30 – discount grade level is C.
for any other value – discount grade level is D.
*/
select first_name,last_name,monthly_discount,
(case when monthly_discount between 0 and 10 then 'A'
 when monthly_discount between 11 and 20 then 'B' 
 else 'C' end) as Discount_grade 
from customers;



/*
============Practice SQL JOIN Queries


Inner JOIN
---------
Customers and internet packages (Customers & Packages tables) –
1. Write a query to display first name, last name, package number and internet speed for all customers.
*/
select c.first_name , c.last_name , p.pack_id , p.speed
from customers c inner join packages p
on c.pack_id = p.pack_id; 

/*
2. Write a query to display first name, last name, 
package number and internet speed for all customers whose package number equals 22 or 27.
 Order the query in ascending order by last name.
*/
select c.first_name,c.last_name,c.pack_id,p.speed 
from customers c join packages p 
on c.pack_id=p.pack_id 
where c.pack_id IN(22,27) 
order by c.last_name;


/*
Internet packages and sectors –
1. Display the package number, internet speed, monthly payment 
and sector name for all packages (Packages and Sectors tables).
*/

select p.pack_id,p.speed,p.monthly_payment,s.sector_name 
from packages p join sectors s
on p.sector_id=s.sector_id;

/*
2. Display the customer name, package number, internet speed, monthly payment and
 sector name for all customers (Customers, Packages and Sectors tables).
*/

select concat(c.first_name,' ',c.last_name) as customer_name,p.pack_id,p.speed,p.monthly_payment,s.sector_name
from customers c join packages p
on c.pack_id = p.pack_id 
join sectors s
on p.sector_id = s.sector_id;


/*
3. Display the customer name, package number, internet speed, 
monthly payment and sector name for all customers in the business sector (Customers, Packages and Sectors tables).
*/
select concat(c.first_name,' ',c.last_name) as Customer_name,p.pack_id,p.speed,p.monthly_payment,s.sector_name
from customers c join packages p
on c.pack_id = p.pack_id 
join sectors s
on p.sector_id = s.sector_id
where lower(sector_name) = 'business';


/*
Display the last name, first name, join date, package number, internet speed and 
sector name for all customers in the private sector who joined the company in the year 2006.
*/
select c.last_name,c.first_name,c.join_date,p.pack_id,p.speed,s.sector_name
from customers c join packages p
on c.pack_id = p.pack_id 
join sectors s
on p.sector_id = s.sector_id
where year(c.join_date)= 2006 and lower(s.sector_name) = 'private';



/*
Non Equi Join
----------------
Display the package number, internet speed, monthly payment and package grade for all packages (Packages and Pack_Grades tables).
*/
select p.pack_id , p.speed , p.monthly_payment , g.grade_name
from packages p join pack_grades g
on (p.monthly_payment between g.min_price and g.max_price);

/*
Outer Join
------------------
Customers and internet packages (Customers and Packages tables)

1. Display the first name, last name, internet speed and monthly payment for all customers.
 Use INNER JOIN to solve this exercise.
*/
select c.first_name , c.last_name , p.speed , p.monthly_payment  
from customers c inner join packages p
on c.pack_id = p.pack_id;

/*
2. Modify last query to display all customers, including those without any internet package.
*/
select c.first_name , c.last_name , p.speed , p.monthly_payment  
from customers c left join packages p
on c.pack_id = p.pack_id;


/*
3. Modify last query to display all packages, including those without any customers.
*/
select c.first_name , c.last_name , p.speed , p.monthly_payment  
from customers c right join packages p
on c.pack_id = p.pack_id;



/*
4. Modify last query to display all packages and all customers.
*/
select c.first_name , c.last_name , p.speed , p.monthly_payment
from customers c left join packages p
on c.pack_id = p.pack_id
union
select c.first_name , c.last_name , p.speed , p.monthly_payment
from customers c right join packages p
on c.pack_id = p.pack_id;

/*
Self Join
-----------

Display the last name, first name and package number for all customers who have the same package number as customer named ‘Amado Taylor’ (Customers table).
*/
select c1.last_name , c1.first_name , c1.pack_id 
from customers c1 join customers c2
on c1.pack_id = c2.pack_id
where lower(concat(c2.first_name , ' ', c2.last_name)) = 'Amado Taylor'
and lower(concat(c1.first_name , ' ', c1.last_name)) <> 'Amado Taylor';

/*
Display the last name, first name and monthly discount for all customers whose 
monthly discount is lower than the monthly discount of employee number 103 (Customers table).
*/
select distinct c1.last_name , c1.first_name , c1.monthly_discount
from customers c1 join customers c2
where c1.monthly_discount <
c2.monthly_discount and c2.customer_id = 9;

/*
Display the package number and internet speed for all packages whose 
internet speed is equal to the internet speed of package number 10 (Packages table).
*/
select p1.pack_id , p1.speed
from packages p1 join packages p2
on p1.speed = p2.speed
where p2.pack_id = 10
and p1.pack_id <> 10;