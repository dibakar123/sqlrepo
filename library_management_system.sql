create database lms;
use test1;
Create table LMS_MEMBERS
(
	MEMBER_ID Varchar(10),
	MEMBER_NAME Varchar(30) NOT NULL,
	CITY VARCHAR(20),
	DATE_REGISTER date  NOT NULL,
	DATE_EXPIRE date ,
	MEMBERSHIP_STAUS Varchar(15)NOT NULL,
	Constraint LMS_cts1 PRIMARY KEY(MEMBER_ID)
);

Insert into LMS_MEMBERS 
Values('LM001', 'AMIT', 'CHENNAI','2012-02-12','2013-02-11','Temporary');

Insert into LMS_MEMBERS
Values('LM002', 'ABDHUL', 'DELHI','2012-04-10','2013-04-09','Temporary');

Insert into LMS_MEMBERS
Values('LM003', 'GAYAN', 'CHENNAI','2010-05-06','2013-05-14','Permanent');

Insert into LMS_MEMBERS
Values('LM004', 'RADHA', 'CHENNAI','2012-04-7','2013-04-21','Temporary');

Insert into LMS_MEMBERS
Values('LM005', 'GURU', 'BANGALORE','2012-03-30','2013-03-29','Temporary');

Insert into LMS_MEMBERS
Values('LM006', 'MOHAN', 'CHENNAI','2012-04-12','2013,-04-12','Temporary');


Create table LMS_SUPPLIERS_DETAILS
(
	SUPPLIER_ID Varchar(3),
	SUPPLIER_NAME Varchar(30) NOT NULL,
	ADDRESS	Varchar(50),
	CONTACT varchar(30) NOT NULL ,
	EMAIL Varchar(15) NOT NULL ,
	Constraint LMS_cts2 PRIMARY KEY(SUPPLIER_ID)
);
drop table lms_suppliers_details;
Insert into  LMS_SUPPLIERS_DETAILS 
Values ('S01','SINGAPORE SHOPPEE', 'CHENNAI', 9894123555,'sing@gmail.com');

Insert into  LMS_SUPPLIERS_DETAILS 
Values ('S02','JK Stores', 'MUMBAI', 9940123450 ,'jks@yahoo.com');

Insert into  LMS_SUPPLIERS_DETAILS 
Values ('S03','ROSE BOOK STORE', 'TRIVANDRUM', 9444411222,'rose@gmail.com');

Insert into  LMS_SUPPLIERS_DETAILS 
Values ('S04','KAVARI STORE', 'DELHI', 8630001452,'kavi@redif.com');

Insert into  LMS_SUPPLIERS_DETAILS 
Values ('S05','EINSTEN BOOK GALLARY', 'US', 9542000001,'eingal@aol.com');

Insert into  LMS_SUPPLIERS_DETAILS
Values ('S06','AKBAR STORE', 'MUMBAI',7855623100 ,'akbakst@aol.com');

Insert into  LMS_SUPPLIERS_DETAIL
Values ('S07','AKBAR STORE', 'MUMBAI',null,'akbakst@aol.com');

Insert into  LMS_SUPPLIERS_DETAIL 
Values ('S08','AKBAR STORE', 'MUMBAI',null ,null);



Create table LMS_FINE_DETAILS
(
	FINE_RANGE Varchar(3),
	FINE_AMOUNT decimal(10,2) NOT NULL,
	Constraint LMS_cts3 PRIMARY KEY(FINE_RANGE)
);

/* ** Insert values in table called LMS_FINE_DETAILS ** */


Insert into LMS_FINE_DETAILS Values('R1', 20);

insert into LMS_FINE_DETAILS Values('R2', 50);

Insert into LMS_FINE_DETAILS Values('R3', 75);

Insert into LMS_FINE_DETAILS Values('R4', 100);

Insert into LMS_FINE_DETAILS Values('R5', 150);

Insert into LMS_FINE_DETAILS Values('R6', 200);

      
Create table LMS_BOOK_DETAILS
(
	BOOK_CODE Varchar(10),	
	BOOK_TITLE Varchar(50) NOT NULL,
	CATEGORY Varchar(15) NOT NULL,
	AUTHOR Varchar(30) NOT NULL,
	PUBLICATION Varchar(30),
	PUBLISH_DATE date,
	BOOK_EDITION int,
	PRICE decimal(8,2) NOT NULL,	
	RACK_NUM Varchar(3),
	DATE_ARRIVAL date NOT NULL, 		
	SUPPLIER_ID Varchar(3) NOT NULL,
	Constraint LMS_cts4 PRIMARY KEY(BOOK_CODE), 
        Constraint LMS_cts41 FOREIGN KEY(SUPPLIER_ID) References LMS_SUPPLIERS_DETAILS(SUPPLIER_ID)
);

/* ** Insert values in table called LMS_BOOK_DETAILS ** */

Insert into LMS_BOOK_DETAILS 
Values('BL000003', 'Java How To Do Program', 'JAVA', 'Paul J. Deitel', 'Prentice Hall',
'1999-12-10', 6, 600.00, 'A1','2012-05-12', 'S01');

Insert into LMS_BOOK_DETAILS
Values('BL000004', 'Java: The Complete Reference ', 'JAVA', 'Herbert Schildt', 'Tata Mcgraw Hill '
,'2011-10-10', 5, 750.00, 'A1','2012-05-12', 'S01');

Insert into LMS_BOOK_DETAILS 
Values('BL000005', 'Java How To Do Program', 'JAVA', 'Paul J. Deitel',  'Prentice Hall','1999-12-10',
 6, 600.00, 'A1','2012-05-12','S01');

Insert into LMS_BOOK_DETAILS
Values('BL000006', 'Java: The Complete Reference ', 'JAVA', 'Herbert Schildt', 'Tata Mcgraw Hill ',
'2011-10-10', 5, 750.00, 'A1','2012-05-12', 'S03');

Insert into LMS_BOOK_DETAILS 
Values('BL000007', 'Let Us C', 'C', 'Yashavant Kanetkar ', 'BPB Publications',
'2010-12-11', 9, 500.00 , 'A3','2010-01-03','S03');

Insert into LMS_BOOK_DETAILS 
Values('BL000008', 'Let Us C', 'C', 'Yashavant Kanetkar ','BPB Publications',
'2010-12-11',9, 500.00 , 'A3','2010-01-03','S04');
   




use lms;
drop table lms_book_issue;
Create table LMS_BOOK_ISSUE
(
	BOOK_ISSUE_NO Numeric,
	MEMBER_ID Varchar(10) NOT NULL,
	BOOK_CODE Varchar(10) NOT NULL,
	DATE_ISSUE date NOT NULL,
	DATE_RETURN date NOT NULL,
        DATE_RETURNED date  NULL,
	BOOK_ISSUE_STATUS Varchar(20) NOT NULL,
	FINE_RANGE vARCHAR(3),
	Constraint LMS_cts5 PRIMARY KEY(BOOK_ISSUE_NO)
);



/* ** Insert values in table called LMS_BOOK_ISSUE ** */


Insert into LMS_BOOK_ISSUE 
Values (001, 'LM001', 'BL000001','2012-05-01','2012-05-16','2012-05-16','N', 'R1');

Insert into LMS_BOOK_ISSUE 
Values (006, 'LM001', 'BL000001','2012-05-01','2012-05-16','2012-05-16','N', 'R1');

Insert into LMS_BOOK_ISSUE 
Values (007, 'LM002', 'BL000002','2012-04-20',
 '2012-05-06','2012-05-04', 'N', 'R2');

Insert into LMS_BOOK_ISSUE 
Values (002, 'LM002', 'BL000002','2012-04-20',
 '2012-05-06','2012-05-04','N', 'R2');


Insert into LMS_BOOK_ISSUE
Values (003, 'LM003', 'BL000007','2012-04-01','2012-04-16','2012-04-20','Y','R1');

Insert into LMS_BOOK_ISSUE
Values (008, 'LM003', 'BL000007','2012-04-01','2012-04-16','2012-04-20','Y','R1');

Insert into LMS_BOOK_ISSUE 
Values (004, 'LM004', 'BL000005','2012-04-01','2012-04-16','2012-04-20', 'Y', 'R1');

Insert into LMS_BOOK_ISSUE 
Values (009, 'LM004', 'BL000005','2012-04-01','2012-04-16','2012-04-20','Y', 'R1');

Insert into LMS_BOOK_ISSUE 
Values (005, 'LM005', 'BL000008','2012-03-30','2012-04-15','2012-04-20','N', 'R2');

Insert into LMS_BOOK_ISSUE 
Values (010, 'LM005', 'BL000008','2012-03-30','2012-04-15','2012-04-20','N', 'R2');
use lms;
/*
1. WRITE A QUERY TO DISPLAY THE MEMBER ID, MEMBER NAME, CITY 
   AND MEMBERSHIP STATUS WHO ARE ALL HAVING LIFE TIME MEMBERSHIP. HINT: LIFE TIME MEMBERSHIP STATUS IS “PERMANENT”. 
*/
select member_id , member_name , city , membership_staus
from lms_members
where lower(membership_staus) = 'permanent';

/*
2.	WRITE A QUERY TO DISPLAY THE MEMBER ID, MEMBER NAME WHO HAVE NOT RETURNED THE BOOKS.
	HINT: BOOK RETURN STATUS IS BOOK_ISSUE_STATUS ='Y' OR 'N'. 
*/
select distinct m.member_id , m.member_name 
from lms_members m join lms_book_issue b
on m.member_id = b.member_id
where lower(book_issue_status) = 'n';


/*
3.	WRITE A QUERY TO DISPLAY THE MEMBER ID, MEMBER NAME WHO HAVE TAKEN THE BOOK WITH BOOK CODE 'BL000002'. 
*/
select distinct m.member_id , m.member_name
from lms_members m join lms_book_issue b
on m.member_id = b.member_id
where lower(book_code) = 'bl000002';

/*
4.	Write a query to display the book code, book title and author of the books whose author name begins with 'P'. 
*/
select book_code , book_title , AUTHOR
from lms_book_details
where author like 'p%';


/*
5.	Write a query to display the total number of Java books available in library with alias name ‘NO_OF_BOOKS’.  
*/
select count(CATEGORY) NO_OF_BOOKS
from lms_book_details
where lower(category) = 'java';

select * from lms_book_details;
/*
6.	Write a query to list the category and number of books in each category with alias name ‘NO_OF_BOOKS’. 
*/
select CATEGORY , count( CATEGORY) NO_OF_BOOKS
from lms_book_details
group by category;

/*
7.	Write a query to display the number of books published by "Prentice Hall” with the alias name “NO_OF_BOOKS”. 
*/
select count(book_code) NO_OF_BOOKS 
from lms_book_details
where lower(publication) = 'prentice hall';

/*
8.	WRITE A QUERY TO DISPLAY THE BOOK CODE, BOOK TITLE OF THE BOOKS WHICH ARE ISSUED ON THE DATE "1ST APRIL 2012". 
*/
select distinct b.book_code , b.BOOK_TITLE
from lms_book_details b join lms_book_issue i 
on b.BOOK_CODE = i.BOOK_CODE
where DATE_ISSUE = '2012-04-01';
select * from lms_book_issue;

/*
9.	WRITE A QUERY TO DISPLAY THE MEMBER ID, MEMBER NAME, DATE OF REGISTRATION AND 
    EXPIRY DATE OF THE MEMBERS WHOSE MEMBERSHIP EXPIRY DATE IS BEFORE APR 2013. 
*/
select member_id , MEMBER_NAME , DATE_REGISTER , DATE_EXPIRE
from lms_members
where DATE_EXPIRE < '2013-04-01';
select * from lms_members;

/*
10.	WRITE A QUERY TO DISPLAY THE MEMBER ID, MEMBER NAME, DATE OF REGISTRATION,
    MEMBERSHIP STATUS OF THE MEMBERS WHO REGISTERED BEFORE  "MARCH 2012" AND MEMBERSHIP STATUS IS "TEMPORARY" 
*/
select member_id , member_name ,DATE_REGISTER, membership_staus
from lms_members
where DATE_REGISTER < '2012-03-01' and lower(membership_staus) = 'temporary';


/*
11.	WRITE A QUERY TO DISPLAY THE MEMBER ID, MEMBER NAME WHO’S CITY IS CHENNAI OR DELHI. 
    HINT: DISPLAY THE MEMBER NAME IN TITLE CASE WITH ALIAS NAME 'NAME'.  
*/
select MEMBER_ID , upper(member_name) NAME
from lms_members
where lower(city) in('chennai','delhi');

/*
12.	WRITE A QUERY TO CONCATENATE BOOK TITLE, AUTHOR AND DISPLAY IN THE FOLLOWING FORMAT. 
    BOOK_TITLE_IS_WRITTEN_BY_AUTHOR EXAMPLE:  LET US C_IS_WRITTEN_BY_YASHAVANT KANETKAR 
    HINT: DISPLAY UNIQUE BOOKS. USE “BOOK_WRITTEN_BY” AS ALIAS NAME.  
*/
select distinct concat(book_title, '_IS_WRITTEN_BY_' , author) BOOK_WRITTEN_BY
from lms_book_details;

/*
13.	Write a query to display the average price of books which is belonging to ‘JAVA’ category 
with alias name “AVERAGEPRICE”. 
*/
select avg(price) AVERAGEPRICE
from lms_book_details
where lower(category) = 'java';
select * from lms_suppliers_details;

/*
14.	Write a query to display the supplier id, supplier name and email of the suppliers
 who are all having gmail account. 
*/
select SUPPLIER_ID , supplier_name , (email)
from lms_suppliers_details
where email like '%gmail%' ;


/*
15.	Write a query to display the supplier id, supplier name and contact details. 
Contact details can be either phone number or email or address with alias name “CONTACTDETAILS”. 
If phone number is null then display email, 
even if email also null then display the address of the supplier. Hint: Use Coalesce function.  
*/
select SUPPLIER_ID , supplier_name ,coalesce(contact , email , address) CONTACTDETAILS
from lms_suppliers_detail;

/*
16.	WRITE A QUERY TO DISPLAY THE SUPPLIER ID, SUPPLIER NAME AND CONTACT.  
IF PHONE NUMBER IS NULL THEN DISPLAY ‘NO’ ELSE DISPLAY ‘YES’ WITH ALIAS NAME “PHONENUMAVAILABLE”. 
*/
select SUPPLIER_ID , supplier_name ,if(contact is null , 'NO' , 'YES') PHONENUMAVAILABLE
from lms_suppliers_detailS;

SELECT SUPPLIER_ID,SUPPLIER_NAME,
(CASE 
WHEN CONTACT IS NULL THEN 'N'
ELSE 'Y'
END)
PHONE_NUM_AVAILABLE FROM LMS_SUPPLIERS_DETAILS;


/*
Avg. Questions

1.	WRITE A QUERY TO DISPLAY THE MEMBER ID, MEMBER NAME OF THE MEMBERS,
 BOOK CODE AND BOOK TITLE OF THE BOOKS TAKEN BY THEM. 
*/
select m.member_id , m.member_name , b.book_code , b.book_title
from lms_members m join lms_book_issue i
on m.member_id = i.member_id
join lms_book_details b
on i.book_code = b.book_code;

/*
2.	WRITE A QUERY TO DISPLAY THE TOTAL NUMBER OF BOOKS AVAILABLE IN THE LIBRARY 
WITH ALIAS NAME “NO_OF_BOOKS_AVAILABLE” (WHICH IS NOT ISSUED).
 HINT: THE ISSUED BOOKS DETAILS ARE AVAILABLE IN THE LMS_BOOK_ISSUE TABLE. 
*/

select count(*) as NO_OF_BOOKS_AVAILABLE
from lms_book_details l left join lms_book_issue m
on l.book_code = m.book_code
where m.book_code is null or m.book_issue_status = 'N';

/*
3.	WRITE A QUERY TO DISPLAY THE MEMBER ID, MEMBER NAME, FINE RANGE AND 
FINE AMOUNT OF THE MEMBERS WHOSE FINE AMOUNT IS LESS THAN 100.  
*/
select m.member_id , m.member_name , f.fine_range , f.fine_amount
from lms_members m join lms_book_issue i 
on m.member_id = i.member_id
join lms_fine_details f
on i.fine_range = f.fine_range
where f.fine_amount < 100; 

/*
4.	WRITE A QUERY TO DISPLAY THE BOOK CODE, BOOK TITLE AND 
AVAILABILITY STATUS OF THE ‘JAVA’ BOOKS WHOSE EDITION IS "6”.
SHOW THE AVAILABILITY STATUS WITH ALIAS NAME “AVAILABILITYSTATUS”.
HINT: BOOK AVAILABILITY STATUS CAN BE FETCHED FROM “BOOK_ISSUE_STATUS” COLUMN OF LMS_BOOK_ISSUE TABLE.  
*/
select b.book_code , b.book_title , i.book_issue_status as AVAILABILITYSTATUS
from lms_book_details b join lms_book_issue i
on b.book_code = i.book_code
where i.book_issue_status = 'N'
and lower(b.category) = 'java'
and b.book_edition = 6;

/*
5.	WRITE A QUERY TO DISPLAY THE BOOK CODE, BOOK TITLE
 AND RACK NUMBER OF THE BOOKS WHICH ARE PLACED IN RACK 'A1' AND SORT BY BOOK TITLE IN ASCENDING ORDER.  
*/
select book_code , book_title , rack_num
from lms_book_details
where lower(rack_num) = 'A1' 
order by book_title;

/*
6.	WRITE A QUERY TO DISPLAY THE MEMBER ID, MEMBER NAME, DUE DATE AND 
    DATE RETURNED OF THE MEMBERS WHO HAS RETURNED THE BOOKS AFTER THE DUE DATE. 
	HINT: DATE_RETURN IS DUE DATE AND DATE_RETURNED IS ACTUAL BOOK RETURN DATE. 
*/
select m.member_id , m.member_name , i.date_return , i.date_returned
from lms_members m join lms_book_issue i
on m.member_id = i.member_id
where date(i.date_return) < date(i.date_returned);

/*
7.	WRITE A QUERY TO DISPLAY THE MEMBER ID, MEMBER NAME AND DATE OF REGISTRATION WHO HAVE NOT TAKEN ANY BOOK.  
*/
select m.member_id , m.member_name , m.date_register
from lms_members m left join lms_book_issue i 
on m.member_id = i.member_id
where m.MEMBER_ID not in
(select i.MEMBER_ID from lms_book_issue i);

select * from lms_book_issue;


/*
8.	WRITE A QUERY TO DISPLAY THE MEMBER ID AND MEMBER NAME OF THE MEMBERS 
    WHO HAS NOT PAID ANY FINE IN THE YEAR 2012. 
*/
select m.member_id , m.member_name 
from lms_members m left join lms_book_issue i
on m.member_id = i.member_id
where i.fine_range is null;


/*
9.	WRITE A QUERY TO DISPLAY THE DATE ON WHICH THE MAXIMUM NUMBERS OF BOOKS WERE ISSUED 
    AND THE NUMBER OF BOOKS ISSUED WITH ALIAS NAME “NOOFBOOKS”. 
*/
SELECT DATE_ISSUE,COUNT(DATE_ISSUE) "NO_OF_BOOKS" 
FROM LMS_BOOK_ISSUE 
GROUP BY DATE_ISSUE 
HAVING  COUNT(DATE_ISSUE)
=
(SELECT MAX(C) FROM 
(SELECT COUNT(DATE_ISSUE) C FROM LMS_BOOK_ISSUE 
GROUP BY DATE_ISSUE) T1);

/*
10.	WRITE A QUERY TO LIST THE BOOK TITLE AND SUPPLIER ID FOR THE BOOKS AUTHORED BY “HERBERT SCHILDT" 
AND THE BOOK EDITION IS 5 AND SUPPLIED BY SUPPLIER ‘S01’.  
*/
select book_title , supplier_id 
from lms_book_details 
where lower(author) = 'HERBERT SCHILDT'
and book_edition = '5'
and lower(supplier_id) = 'S01';

/*
11.	WRITE A QUERY TO DISPLAY THE RACK NUMBER AND THE NUMBER OF BOOKS IN EACH RACK WITH ALIAS NAME “NOOFBOOKS” 
AND SORT BY RACK NUMBER IN ASCENDING ORDER. 
*/
select rack_num ,count(book_code) NOOFBOOKS
from lms_book_details
group by rack_num
order by rack_num;

/*
12.	WRITE A QUERY TO DISPLAY BOOK ISSUE NUMBER, MEMBER NAME, DATE OR REGISTRATION, DATE OF EXPIRY,
 BOOK TITLE, CATEGORY , AUTHOR, PRICE, DATE OF ISSUE, DATE OF RETURN, ACTUAL RETURNED DATE, ISSUE STATUS, 
 FINE AMOUNT.  
*/
select b.book_issue_no , m.member_name , m.date_register , m.date_expire , 
i.book_title , i.category , i.author , i.price , b.date_issue , b.date_return ,
 b.date_returned , b.book_issue_status , f.fine_amount
from  lms_book_details i  join lms_book_issue b
on i.book_code = b.book_code
join lms_members m
on m.member_id = b.member_id
join lms_fine_details f
on b.fine_range = f.fine_range;

/*

13.	WRITE A QUERY TO DISPLAY THE BOOK CODE, TITLE, 
PUBLISH DATE OF THE BOOKS WHICH IS BEEN PUBLISHED IN THE MONTH OF DECEMBER. 
*/
select book_code , book_title , publish_date
from lms_book_details
where month(publish_date) ='12';



SELECT BOOK_CODE,BOOK_TITLE,PUBLISH_DATE 
FROM LMS_BOOK_DETAILS 
WHERE EXTRACT(MONTH FROM PUBLISH_DATE) =12;


/*

14.	WRITE A QUERY TO DISPLAY THE BOOK CODE, BOOK TITLE AND 
AVAILABILITY STATUS OF THE ‘JAVA’ BOOKS WHOSE EDITION IS "5”. 
SHOW THE AVAILABILITY STATUS WITH ALIAS NAME “AVAILABILITYSTATUS”. 

HINT: BOOK AVAILABILITY STATUS CAN BE FETCHED FROM “BOOK_ISSUE_STATUS” COLUMN OF LMS_BOOK_ISSUE TABLE.   
*/
select b.book_code , b.book_title, i.book_issue_status AVAILABILITYSTATUS
from lms_book_details b join lms_book_issue i 
on b.book_code = i.book_code
where lower(i.book_issue_status) = 'y'
and lower(b.category) = 'java'
and book_edition = 5;

    
/*
Complex Queries

Write a query to display the book code, book title
 and supplier name of the supplier who has supplied maximum number of books. 
 For example, if “ABC Store” supplied 3 books, “LM Store” has supplied 2 books and “XYZ Store” has supplied 1 book.
 So “ABC Store” has supplied maximum number of books, hence display the details as mentioned below.  
Example: 
BOOK_CODE 	BOOK_TITLE 		            SUPPLIER_NAME 
BL000008 	Easy Reference for Java    	ABC STORE
BL000001 	Easy Reference for C        ABC STORE 
*/

select a.book_code,a.book_title,b.supplier_name 
from lms_book_details a join lms_suppliers_details b 
on a.supplier_id=b.supplier_id where a.supplier_id >any
(select max(a.supplier_id) 
from lms_book_details a join lms_suppliers_details b 
on a.supplier_id=b.supplier_id
 group by a.supplier_id);



select * from lms_suppliers_details;

                                          
/*
2.
Problem # 2: Write a query to display the member id, member name and number of remaining books he/she can take with “REMAININGBOOKS” as alias name. Hint:  Assuming a member can take maximum 3 books.  For example, Ramesh has already taken 2 books; he can take only one book now. Hence display the remaining books as 1 in below format.  
Example:  
MEMBER_ID             MEMBER_NAME           REMAININGBOOKS
LM001                        RAMESH                     1 
LM002                        MOHAN                     3 

select m.member_id,m.member_name,3-(select count(m.member_id) from member_details 
*/
/*
3.
Write a query to display the supplier id and supplier name of the supplier who has supplied minimum number of books. For example, if “ABC Store” supplied 3 books, “LM Store” has supplied 2 books and “XYZ Store” has supplied 1 book. So “XYZ Store” has supplied minimum number of books, hence display the details as mentioned below.  
Example: 
SUPPLIER_ID 	SUPPLIER_NAME 
S04                	XYZ STORE 

*/
