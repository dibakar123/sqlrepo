drop  database video_library;
create database video_library;
use video_library;

/*table customer_master for customer details */
drop TABLE customer_master;
CREATE TABLE customer_master
(
customer_id VARCHAR(6),
customer_name VARCHAR(30),
contact_no VARCHAR(10), 
contact_address VARCHAR(30),
date_of_registration DATE,
age INT(3),
CONSTRAINT customer_master_customer_id_pk PRIMARY KEY(customer_id)
);


/*records for customer_master*/
 
insert into customer_master values('C00001','Nitin','9830354218','A/122, Kalkaji','2012-10-15',22);
insert into customer_master values('C00002','Agnesh','8923156781','9/1,Andheri East','2012-11-01',35);
insert into customer_master values('C00003','T Ramachandran','9831289761','9/1,Nandabakkam','2012-11-02',25);
insert into customer_master values('C00004','Rajib Mitra','9830356781','H/56, Block1,Jadavpur','2012-11-21',45); 
insert into customer_master values('C00005','Shiv Prasad','8962198765','2/2 Phase II, Jawahar Nagar','2012-12-25',30); 
insert into customer_master values('C00006','Ajay Ghosh','8763478901','N/2,Gandhi Colony,Dum dum','2012-12-30',20); 
insert into customer_master values('C00007','Geetha Reddy','8976167890','AH 1/1 T Nagar','2012-12-31',30);
insert into customer_master values('C00008','Ria Natrajan','9856723190','A/B Gandhi Colony','2013-01-01',45);
insert into customer_master values('C00009','Rajan Pillai','8621349860','A 1/66 Kodambakkam','2013-01-02',40);
insert into customer_master values('C00010','Raghav Singh','9675167890','A/6 Nehru Jawahar Nagar','2013-03-02',50);
insert into customer_master values('C00011','Raj Sekhanran','8423178906','A/1 Mayur Kunj','2013-03-15',25);

insert into customer_master values('C00013','Raj Sekhanr',null,'A/1 Mayur Kunj','2013-03-15',25);
delete from customer_master where customer_id = 'C00012';
select * from customer_master;

/*table movie_master for movie details*/ 
drop TABLE movies_master;
CREATE TABLE movies_master
(
movie_id VARCHAR(6),
movie_name VARCHAR(30),
release_year INT(4),
language VARCHAR(15),
rating INT(1),
duration_in_minutes INT(3),
movie_type VARCHAR(20), 
movie_category VARCHAR(30),
director_name VARCHAR(30),
lead_actor_name1 VARCHAR(40),
lead_actor_name2 VARCHAR(40),
rental_cost INT(3),
CONSTRAINT movies_master_movie_id_pk PRIMARY KEY(movie_id)
);

/*records for movies in the library*/

insert into movies_master values('M00001','Die Hard',1998,'English',4,120,'Universal','Action','John McTiernan','Bruce Willis', 'Bonnie Bedelia',100);
insert into movies_master values('M00002','The Dark Knight',2008,'English',5,90,'Parental Guidence','Action','Christopher Nolan','Christian Bale', 'Health Ledger',100);
insert into movies_master values('M00003','The Matrix',1999,'English',4,120,'Universal','Action','Andy Larry','Keanu Reeves', 'Carrie-Anee Moss',100);
insert into movies_master values('M00004','Inception',2010,'English',5,120,'Parental Guidence','Action','Christopher Nolan','Leonardo DiCaprio', 'Joseph Gordan',100);
insert into movies_master values('M00005','Office Space',1999,'English',4,95,'Universal','Comedy','Mike Judge','Ron Livingston', 'Jennifer Aniston',100);
insert into movies_master values('M00006','Young Frankenstein',1974,'English',4,130,'Universal','Comedy','Mel Brooks','Gene Wilder', 'Teri Garr',100);
insert into movies_master values('M00007','Shaun of the Dead',2004,'English',4,95,'Universal','Comedy','Edgar Wright','Simon Pegg', 'Kate Ashfield',100);
insert into movies_master values('M00008','Casablanca',1942,'English',3,120,'Universal','Romance','Michael Curtiz','Humprey Bogart', 'Ingrid Bergman',100);
insert into movies_master values('M00009','The Notebook',2004,'English',3,120,'Parental Guidence','Romance','Nick Cassavetes','Ryan Gosling', 'Rachel McAdams',100);
insert into movies_master values('M00010','Gone with the Wind',1939,'English',3,120,'Parental Guidence','Romance','Victor Flemming','Clark Gable', 'Vivien Leigh',100);
insert into movies_master values('M00011','Titanic',1997,'English',3,120,'Parental Guidence','Romance','James Cameron','Leonardo DiCaprio', 'Kate Winslet',100);


/*table library_card_master for storing card details*/

CREATE TABLE library_card_master
(
card_id VARCHAR(6),
description VARCHAR(30),
amount INT(4),
number_of_years INT(1),
CONSTRAINT library_card_master_card_id_pk PRIMARY KEY(card_id)
);

/*records for types of cards*/ 


insert into library_card_master values('CRD001','Silver Card',1000,1);
insert into library_card_master values('CRD002','Gold  Card',2000,2);
insert into library_card_master values('CRD003','Platinum  Card',3000,3);
insert into library_card_master values('CRD004','Diamond  Card',4000,5);



/*table customer_issue_details for storing customer issue details*/
drop TABLE customer_issue_details;
CREATE TABLE customer_issue_details
(
issue_id VARCHAR(6),
customer_id VARCHAR(6),
movie_id  VARCHAR(6),
issue_date DATE,
return_date DATE,
actual_date_of_return DATE,
CONSTRAINT customer_issue_details_issue_id_pk PRIMARY KEY(issue_id),
CONSTRAINT customer_issue_details_customer_id_fk FOREIGN KEY(customer_id) REFERENCES customer_master(customer_id),
CONSTRAINT customer_issue_details_movie_id_fk FOREIGN KEY(movie_id) REFERENCES movies_master(movie_id)
);

/*records of customer and card details*/

insert into customer_issue_details values('I00001','C00001','M00001','2012-10-15','2012-10-17','2012-10-17');
insert into customer_issue_details values('I00002','C00002','M00002','2012-11-02','2012-11-04','2012-11-05');
insert into customer_issue_details values('I00003','C00002','M00002','2012-12-02','2012-12-04','2012-12-03');
insert into customer_issue_details values('I00004','C00003','M00003','2012-11-02','2012-11-04','2012-11-10');
insert into customer_issue_details values('I00005','C00003','M00004','2012-11-10','2012-11-12','2012-11-12');
insert into customer_issue_details values('I00006','C00003','M00005','2012-11-12','2012-11-14','2012-11-14');
insert into customer_issue_details values('I00007','C00004','M00006','2012-11-21','2012-11-23','2012-11-24');
insert into customer_issue_details values('I00008','C00010','M00008','2013-03-02','2013-03-04','2013-03-05');
insert into customer_issue_details values('I00009','C00011','M00010','2013-03-16','2013-03-18','2013-03-18');
insert into customer_issue_details values('I00010','C00004','M00007','2012-11-25','2012-11-27','2012-11-27');
insert into customer_issue_details values('I00011','C00004','M00007','2012-11-28','2012-11-30','2012-11-30');
insert into customer_issue_details values('I00012','C00001','M00001','2013-11-28','2013-11-30','2013-11-30');
insert into customer_issue_details values('I00013','C00003','M00001','2012-12-03','2012-12-05','2012-12-05');
insert into customer_issue_details values('I00014','C00003','M00010','2013-01-02','2013-01-04','2013-01-05');
insert into customer_issue_details values('I00015','C00003','M00011','2013-02-03','2013-02-05','2013-02-06');
insert into customer_issue_details values('I00016','C00003','M00011','2013-03-05','2013-03-07','2013-03-07');
insert into customer_issue_details values('I00017','C00003','M00008','2013-04-15','2013-04-17','2013-04-17');
insert into customer_issue_details values('I00018','C00002','M00010','2015-01-15','2015-01-17','2015-01-17');
insert into customer_issue_details values('I00019','C00004','M00001','2012-11-15','2012-11-17','2012-11-17');


/*table customer_card_details for storing  customer and type of cards they being issued*/


CREATE TABLE customer_card_details
(
customer_id VARCHAR(6),
card_id VARCHAR(6), 
issue_date DATE,
CONSTRAINT customer_card_details_customer_id_fk FOREIGN KEY(customer_id) REFERENCES customer_master(customer_id),
CONSTRAINT customer_card_detail_customer_id_fk FOREIGN KEY(card_id) REFERENCES library_card_master(card_id)
);

/*records for customer and card details*/


insert into customer_card_details values('C00001','CRD001','2012-10-15');
insert into customer_card_details values('C00002','CRD002','2012-12-01');
insert into customer_card_details values('C00003','CRD002','2012-11-02');
insert into customer_card_details values('C00004','CRD003','2012-11-21');
insert into customer_card_details values('C00005','CRD003','2012-12-26');


select * from customer_master;
select * from movies_master;
select * from library_card_master;
select * from customer_issue_details;
select * from customer_card_details;

/*
Simple Questions:

Problem #1:

Write a query to count the customers who registered in the year 2012 for the library. Give the alias name of Customer_Count.
*/
select count(customer_id) as Customer_count 
from customer_master
where year(date_of_registration) = 2012;


/*
Problem #2:

Write a query to display  the customer’s name , contact phone number and if contact number is not available , display address.
 Give the alias name as Contact_Details.
*/
select customer_name , coalesce(contact_no,contact_address) as Contact_Details
from customer_master;

select customer_name , if(contact_no is null , contact_address, contact_no) as Contact_Details
 from customer_master;

/*
Problem#3:

Write a query to display the customer id, customer name in the sorted order of year of registration where the

 latest years  are displayed first.
*/
select customer_id , customer_name  from customer_master
order by year(date_of_registration) desc;

/*
Problem # 4:

Write a query to  Display the movie category and count of movie in that category.  Give the alias name as 

No_Of_Movies.
*/
select  movie_category , count(movie_id) as No_Of_Movies
from movies_master
group by movie_category;

/*
Problem # 5:

Write a query to display  the issue id, customer id,customer name.
*/
select d.issue_id , d.customer_id , c.customer_name
from customer_issue_details d join customer_master c
on d.customer_id = c.customer_id;

/*
Problem # 6:
Write a query
 to  display issue id, customer id,customer name, movie id, movie name.
*/
select i.issue_id , i.customer_id ,c.customer_name , m.movie_id , m.movie_name
from customer_issue_details i join customer_master c
on i.customer_id = c. customer_id
join movies_master m
on i.movie_id =  m.movie_id;

/*
Problem # 7:       

Write a query to display issue id, customer id, customer name for the customers who will pay fine. 
Customers pay fine is based on return date and actual date of return. 
If the date of actual return is after date of return then fine need to be paid by the customer.
*/
select i.issue_id , m.customer_id , m.customer_name 
from customer_master m join customer_issue_details i
on m.customer_id = i.customer_id
where i.return_date < i.actual_date_of_return;

/*
Problem # 8:

Write a query to display  movie id, movie _name which are not issued.
*/

select movie_id , movie_name 
from movies_master 
where movie_id not in (
select movie_id from customer_issue_details);

/*
Problem # 9:

Write a query to display  the customer name, count  of  movies issued to  each customer. 
If a customer has not issued any movie , 0 should be shown for that customer. Give the count an alias name of  Movie_Count.


(LEFT JOIN REQUIRED BCOZ WE NEED ALL CUSTOMERS WHO ISSUED MOVIES AND WHO NOT ISSUED MOVIES
IF ISSUED TAKE FROM CUSTOMER-ISSUE_DETAILS IF NOT ISSUED THEN TAKE FROM CUSTOMER_MASTER)*/


select c.customer_name , count(distinct i.movie_id) Movie_Count
from customer_master c left join customer_issue_details i
on c.customer_id = i.customer_id
group by c.customer_id;

/*
Problem # 10:

Write a query to display customer id  and total rent they paid for the videos.  Give the total rent paid an alias name as Total_Cost.
*/
 select c.customer_id , sum(m.rental_cost) as Total_Cost
 from customer_issue_details c join movies_master m
 on c.movie_id = m.movie_id
 group by c.customer_id;


/*
Average Questions:

Problem#1:

Write a query to display  customer_id, customer_name, card_id, description, amount for card
where date of registration to the video library and issue for the library card is same.
*/
select c.customer_id , c.customer_name , l.card_id , l.description , l.amount
from customer_master c join customer_card_details i
on c.customer_id = i.customer_id
join library_card_master l
on i.card_id = l.card_id
where c.date_of_registration = i.issue_date ;

/*
Problem # 2:

Write a query to display the customer id, customer name  who have never issued card but issued movies.

*/

select d.customer_id , c.customer_name
from customer_master c join customer_issue_details d
on c.customer_id = d.customer_id
where c.customer_id in(/*CUSTOMER WHO ISSUES MOVIES WITHOUT CARD*/
select customer_id  
from customer_master/*CUSTOMER WHO HAS NOT ISSUED CARD*/
where customer_id not in 
(select customer_id from customer_card_details));/*CUSTOMERS WHO ISSUED CARD*/

                /* OR */

select d.customer_id  , c.customer_name
from customer_master c join customer_issue_details d
on c.customer_id = d.customer_id
where c.customer_id not in 
(select customer_id from customer_card_details);

/*
Problem # 3:

Write a query to count the number of customers having the description of the card as Silver card.   Give the alias name as Count.
*/
select count(c.customer_id) as Count
from customer_card_details c join library_card_master l
on c.card_id = l.card_id
where lower(l.description) = 'silver card';

select count(customer_id) as Count
from customer_card_details
where card_id in(
select card_id from library_card_master 
where lower(description) = 'silver card');


/*
Problem # 4:

Write a query to display the customer_id, customer name  for customers who was issued the same movie multiple number of times.
*/
select distinct c.customer_id , c.customer_name 
from customer_master c join customer_issue_details i
on c.customer_id = i.customer_id
group by c.customer_id ,i.movie_id
having count(i.movie_id) >1;


/*
Problem # 5:

Write a query to display the customer id , customer name who was issued  comedy movies multiple number of times.
*/
select c.customer_id , c.customer_name 
from customer_master c join customer_issue_details i
on c.customer_id = i.customer_id
join movies_master m
on i.movie_id = m.movie_id
where lower(m.movie_category) = 'comedy'
group by c.customer_id , c.customer_name 
having count(m.movie_id)  >1;




use video_library;

select distinct c.customer_id , c.customer_name 
from customer_master c join customer_issue_details i
on c.customer_id = i.customer_id
where 1< (
select count(i1.movie_id) 
from customer_issue_details i1 join movies_master m
on i1.movie_id = m.movie_id
where lower(m.movie_category) = 'comedy'
and i1.customer_id = c.customer_id);


/*
Problem # 6:

Write a query to display the director’s name who directed multiple movies.
*/
select director_name from movies_master
group by director_name 
having count(director_name)  > 1;

/*
Problem # 7:

Write a query to display the lead actor 1’s name  who worked in multiple movies.
*/
select lead_actor_name1 from movies_master
group by lead_actor_name1
having count(movie_id)  > 1;


/*
Problem # 8:

Write  a query to display movie names and number of times they are being issued . 
For the movies which are never issued to customer  a value of 0 should be displayed.
 Display the details in sorted order of count.

The movies which are being issued more should be displayed followed by the lesser numbers. Give the count an alias name of Count_Issues.
*/
select m.movie_name , count(d.issue_id)  as count_issues
from movies_master m left join customer_issue_details d
on m.movie_id = d.movie_id
group by m.movie_name
order by count_issues desc;
/*
Problem # 9:

Write a query to display movie id, movie name, customer id, customer name and 
number of days they have retained the movie when issued.  Give the number of days an alias name of Number_Of_Days.
*/

select m.movie_id , m.movie_name , c.customer_id , c.customer_name , 
datediff( i.actual_date_of_return , i.issue_date) as Number_Of_Days
from customer_master c join customer_issue_details i
on  c.customer_id = i.customer_id
join movies_master m
on m.movie_id = i.movie_id;

select c.card_id , c.issue_date , 
date_add(c.issue_date , interval l.number_of_years year)
from customer_card_details c join library_card_master l
on c.card_id = l.card_id;

/*
Problem # 10:  

Display the customer’s id, date of issue of card and the date at which the card will become invalid. 
Give the date of invalidity an alias name as Last_Valid_Date.
*/
select d.customer_id , d.issue_date , 
date_add(d.issue_date ,INTERVAL  l.number_of_years  year) as Last_Valid_Date
from customer_card_details d join library_card_master l
on d.card_id = l.card_id;


select c.card_id , c.issue_date , 
date_add(c.issue_date , interval l.number_of_years year)
from customer_card_details c join library_card_master l
on c.card_id = l.card_id;

select date_add("2017.06.15" , INTERVAL 10 year);


/*
Complex Questions:

Problem # 1:   

Write a query to display the movie id, movie name, director’s name , year of release for the movie which was

being retained most of the time by the customers.

For example a movie with id M00099 was issued by customer id C00001 for 2 days , C00002 for 3 days and by C00009 for 5 days. 
So M00099 was issued for total 10 days. Another movie id M00100 was issued by customer C00099 for 2 days and C00100 for 1 day .
 So M00100 was issued for total 3 days.  So according to the query M00099 will be displayed.
*/
select m.movie_id , m.movie_name , m.director_name , m.release_year 
from movies_master m join customer_issue_details i 
on m.movie_id = i.movie_id
group by m.movie_id 
having sum(datediff(i.return_date , i.issue_date)) 
= 
(select sum(datediff(return_date , issue_date)) as total
from customer_issue_details 
group by movie_id 
order by total desc
limit 1) ;



select m.movie_id , m.movie_name , m.director_name , m.release_year 
from movies_master m join customer_issue_details i 
on m.movie_id = i.movie_id
group by m.movie_id 
having sum(datediff(i.return_date , i.issue_date)) 
= 
(select max(c) from(
select sum(datediff(return_date , issue_date)) as c
from customer_issue_details 
group by movie_id ) T1) ;



/*
Problem #2:

Write a query to show the customer_id , customer_name who issued maximum number of  movies and the customer who has issued the least.

For example  a customer C00100 issued 5 movies, C00101 issued 10 movies and C00102 issued 2 movies.
 So according to the query the name and id of C00101 should be displayed for issuing maximum movies and C00102 should be displayed for issuing minimum movies.
*/
select c.customer_id , c.customer_name 
from customer_master c join customer_issue_details i
on c.customer_id = i.customer_id
group by customer_id
having count(i.movie_id)
=
(select count(movie_id) as t
from customer_issue_details
group by customer_id
order by t desc
limit 1)

union

select c.customer_id , c.customer_name  
from customer_master c join customer_issue_details i
on c.customer_id = i.customer_id
group by customer_id
having count(i.movie_id)
=
(select count(movie_id) as t
from customer_issue_details
group by customer_id
order by t 
limit 1) ;
 

/*
Problem#3:

Write a query to  display the customer id , customer name are more then 40 and asked
 for comedy movies multiple number of times  on the same month, same year.


Suppose a customer  C00999 who asked for movie M09999 which is comedy movie  in the month of October 2012 
and again he asked for another comedy movie M10000 in the same month and same year.

Again M10001 in the same month and year. 
 And other customers have gone for 1 or 2 in the month of October of 2012 . 
 So according to the query  the name and id of C00999 should be displayed.
*/
select c.customer_id , c.customer_name  
from customer_master c join customer_issue_details i
on c.customer_id = i.customer_id
join movies_master m
on i.movie_id = m.movie_id
where lower(m.movie_category) = 'comedy'
group by c.customer_id , month(i.issue_date) , year(i.issue_date)
having count(i.movie_id)
=
(select count(i1.movie_id) as total
from customer_issue_details i1 join movies_master m1
on i1.movie_id = m1.movie_id
where lower(m1.movie_category) = 'comedy'
group by customer_id , month(i1.issue_date) , year(i1.issue_date)
order by  total desc
limit 1) ;


/*
Problem # 4:

Write a query to display the customer id , customer name and contact address of the people who need to renew their card. 
Renewal will be for the customer’s who issued a movie but the issue date is after the validate date of the card.


For example a customer C00999 issued a movie on 2013-01-01 but the validity of the card was till 2012-12-01.
 So the details of C00999 should be displayed?
*/
select distinct c.customer_id , c.customer_name , c.contact_address
from customer_card_details cl join library_card_master l
on cl.card_id = l.card_id 
join customer_master c
on c.customer_id = cl.customer_id
join customer_issue_details i
on c.customer_id = i.customer_id
where i.issue_date > date_add(cl.issue_date , interval l.number_of_years year);



/*
Problem # 5:   

Write a query to display the customer id, customer name who issued more comedy movies then action_movies.



For example a customer with id C10000 issued 3 comedy movies 2 action movies.
 So according to the query C10000 and its name should be displayed.
*/
select c.customer_id , c.customer_name /* , count(case when lower(m.movie_category) = 'comedy' then i.movie_id else null end)
as comedy_total ,
count(case when lower(m.movie_category) = 'action' then i.movie_id else null end)
as action_total */
from customer_master c join customer_issue_details i
on c.customer_id = i.customer_id 
join movies_master m
on m.movie_id = i.movie_id
group by c.customer_id
having count(case when lower(m.movie_category) = 'comedy' then i.movie_id else null end)  >
count(case when lower(m.movie_category) = 'action' then i.movie_id else null end)
 ;



/*FINAL MOCK TEST SOLUTION*/
/*ANS.1*/
select c.customer_id , upper(c.customer_name) CUSTOMER_NAME , c.contact_no , c.contact_address
from customer_master c join customer_issue_details i
on c.customer_id = i.customer_id 
where lower(c.contact_address) like '%nagar'
and c.customer_id not in
(select c1.customer_id from customer_card_details c1)
order by CUSTOMER_NAME;

		
/*ANS.2*/
select c.customer_id , c.customer_name , count(m.movie_id) NO_OF_TIMES
from customer_master c join customer_issue_details i
on c.customer_id = i.customer_id 
join movies_master m
on m.movie_id = i.movie_id 
where lower(m.movie_category)= 'comedy'
group by c.customer_id
having NO_OF_TIMES > 1
order by c.customer_name;

/*ANS.3*/
select c.customer_id , c.customer_name ,
concat_ws('_''+91' , left(c.contact_no , 3) , substr(c.contact_no , 4,3) ,right(c.contact_no, 4)) as CONTACT_ISD,
m.movie_category , count(m.movie_id) NO_OF_MOVIES
from customer_master c join customer_issue_details i
on c.customer_id = i.customer_id 
join movies_master m
on m.movie_id = i.movie_id 
group by c.customer_id , m.movie_category
having NO_OF_MOVIES > 1
order by c.customer_name,m.movie_category;


/*ANS.4*/
select i.issue_id ,i.issue_date , c.customer_id , c.customer_name ,c.contact_no
from customer_master c join customer_issue_details i
on c.customer_id = i.customer_id 
where year(i.issue_date) = 2013
order by i.issue_date desc;

/*ANS.5*/
select right(i.issue_id , 2) SERIAL_NO , i.issue_id , c.customer_id , c.customer_name ,m.movie_id , m.movie_name
from customer_master c join customer_issue_details i
on c.customer_id = i.customer_id 
join movies_master m
on m.movie_id = i.movie_id 
order by SERIAL_NO;

/*ANS.6*/
select c.customer_id , sum(m.rental_cost) TOTAL_COST
from customer_master c join customer_issue_details i
on c.customer_id = i.customer_id 
join movies_master m
on m.movie_id = i.movie_id 
group by c.customer_id
order by c.customer_id;



/* 1.find max and min no. of movies issued by customer. order by customer id.*/


select customer_id , count(movie_id)
from customer_issue_details 
group by customer_id
having count(movie_id)
=
(select count(movie_id) as t
from customer_issue_details
group by customer_id
order by t desc
limit 1)

union

select customer_id , count(movie_id) 
from  customer_issue_details 
group by customer_id
having count(movie_id)
=
(select count(movie_id) as t
from customer_issue_details
group by customer_id
order by t 
limit 1) ;
 

/* 2.Display customer details who does not have issued any movies.*/

select * from customer_master 
where customer_id not in (
select customer_id from customer_issue_details);

/* 3. show customer name &display registered year per customer. */

select customer_name , year(date_of_registration)
from customer_master;

/*according to registration year show no. of customers*/ 

select year(date_of_registration) , count(customer_id)
from customer_master
group by year(date_of_registration) 
order by count(customer_id);

/* 4. display customer details who does not have library card but issued movies.*/
select d.customer_id , c.customer_name
from customer_master c join customer_issue_details d
on c.customer_id = d.customer_id
where c.customer_id in(/*CUSTOMER WHO ISSUES MOVIES WITHOUT CARD*/
select customer_id  
from customer_master/*CUSTOMER WHO HAS NOT ISSUED CARD*/
where customer_id not in 
(select customer_id from customer_card_details));/*CUSTOMERS WHO ISSUED CARD*/


/* 5. display total cost per customer . order by customer name.*/
   select c.customer_id , sum(m.rental_cost)  as Total_Cost , cm.customer_name
   from customer_issue_details c join customer_master cm
   on c.customer_id = cm.customer_id
   join movies_master m
   on c.movie_id = m.movie_id
   group by c.customer_id;
   
   
   /*3RD HIGHEST RENTAL COST WITHOUT USING LIMIT*/
   select * from movies_master;
   select m1.movie_name , m1.movie_id , m1.rental_cost
   from movies_master m1
   where 3-1  =   (select count(distinct m.rental_cost) from movies_master m 
   where m.rental_cost > m1.rental_cost);
   
   
/*   1. write a query to display employee id , name , designation , dept. name
   for employees who have never been issued an item as a loan from company . 
   display records sorted in ascending order based on employee id*/
 
/* 2. write a query to display employee_id , name & total_valuation 
    who has issued maximum total_valuation of the product 
    give the alias name as total_valuation
	hint: suppose an employee E9 issued item of price 5000 , 10000 , 12000 
    & E10 issued items of price 2000 , 7000 , 1000.
    so the total_valuation price taken by  E9 is 27000
    & he total_valuation price taken by  E10 is 10000
	so the employee id , name & total valution of E9 should be displayed */
    
    
    
    
    
/*---------------
Use Video/Movie database and do the following queries:

Problem#1:
Write a query to display the customer id, customer name in the sorted order of year of registration where the
 latest years  are displayed first.*/
select customer_id , customer_name 
from customer_master
order by date_of_registration desc;

/*Problem # 2:
Write a query to  display issue id, customer id,customer name, movie id, movie name.*/
select i.issue_id , c.customer_id , c.customer_name , m.movie_id , m.movie_name
from customer_master c join customer_issue_details i 
on c.customer_id = i.customer_id
join movies_master m 
on i.movie_id = m.movie_id;


/*Problem # 3:
Write a query to display  the customer name, count  of  movies issued to  each customer.
 If a customer has not issued any movie , 0 should be shown for that customer. Give the count an alias name of  Movie_Count.*/
 select c.customer_name , count(i.issue_id) Movie_Count
 from customer_master c left join customer_issue_details i 
 on c.customer_id = i.customer_id
 group by c.customer_id;


/*Problem # 4:

Write a query to display the customer id, customer name  who have never issued card but issued movies.*/
select c.customer_id , c.customer_name 
from customer_master c join customer_issue_details i 
on c.customer_id = i.customer_id where c.customer_id not in 
(select customer_id from customer_card_details); 

/*Problem # 5:
Write a query to display the customer id , customer name who was issued  comedy movies multiple number of times.*/
select c.customer_id , c.customer_name 
from customer_master c join customer_issue_details i 
on c.customer_id = i.customer_id
join movies_master m
on i.movie_id = m.movie_id
where lower(m.movie_category) = 'comedy'
group by c.customer_id
having count(i.issue_id) >1;

/*Problem # 6:
Write a query to display the movie id, movie name, director’s name , year of release for the movie which was
 being retained most of the time by the customers.
 

For example a movie with id M00099 was issued by customer id C00001 for 2 days , C00002 for 3 days and by C00009 for 5 days. 
So M00099 was issued for total 10 days.

Another movie id M00100 was issued by customer C00099 for 2 days and C00100 for 1 day .
So M00100 was issued for total 3 days.  
So according to the query M00099 will be displayed.*/



select m.movie_id , m.movie_name , m.director_name , m.release_year 
from movies_master m join customer_issue_details i 
on m.movie_id = i.movie_id
group by m.movie_id 
having sum(datediff(i.actual_date_of_return , i.issue_date)) 
= 
(select sum(datediff(actual_date_of_return , issue_date)) as total
from customer_issue_details 
group by movie_id 
order by total desc
limit 1) ;



select m.movie_id , m.movie_name , m.director_name , m.release_year 
from movies_master m join customer_issue_details i 
on m.movie_id = i.movie_id
group by m.movie_id 
having sum(datediff(i.return_date , i.issue_date)) 
= 
(select sum(datediff(return_date , issue_date)) as total
from customer_issue_details 
group by movie_id 
order by total desc
limit 1) ;

