create database bms;
use bms;


-- CUSTOMER_PERSONAL_INFO

CREATE TABLE CUSTOMER_PERSONAL_INFO
(
 CUSTOMER_ID VARCHAR(5),
 CUSTOMER_NAME VARCHAR(30),
 DATE_OF_BIRTH  DATE,
 GUARDIAN_NAME VARCHAR(30),
 ADDRESS VARCHAR(50),
 CONTACT_NO BIGINT(10),
 MAIL_ID  VARCHAR(30),
 GENDER CHAR(1),
 MARITAL_STATUS VARCHAR(10),
 IDENTIFICATION_DOC_TYPE VARCHAR(20),
 ID_DOC_NO VARCHAR(20),
 CITIZENSHIP VARCHAR(10),
 CONSTRAINT CUST_PERS_INFO_PK PRIMARY KEY(CUSTOMER_ID)
);



-- CUSTOMER_PERSONAL_INFO

INSERT INTO CUSTOMER_PERSONAL_INFO VALUES('C-001','JOHN','1984-05-03','PETER','NO.14, ST.MARKS ROAD,BANGALORE',9734526719,'JOHN_123@gmail.com','M','SINGLE','PASSPORT','PASS123','INDIAN');
INSERT INTO CUSTOMER_PERSONAL_INFO VALUES('C-002','JAMES','1984-08-06','GEORGE','NO.18, MG ROAD,BANGALORE',9237893481,'JAMES_123@gmail.com','M','MARRIED','PASSPORT','PASS124','INDIAN');
INSERT INTO CUSTOMER_PERSONAL_INFO VALUES('C-003','SUNITHA','1984-11-06','VINOD','NO.21, GM ROAD,CHENNAI',9438978389,'SUNITHA_123@gmail.com','F','SINGLE','VOTER-ID','GMV1234','INDIAN');
INSERT INTO CUSTOMER_PERSONAL_INFO VALUES('C-004','RAMESH','1985-12-11','KRISHNAN','NO.14,LB ROAD,CHENNAI',9235234534,'RAMESH_123@gmail.com','M','MARRIED','PASSPORT','PASS125','INDIAN');
INSERT INTO CUSTOMER_PERSONAL_INFO VALUES('C-005','KUMAR','1983-04-26','KIRAN','NO.18,MM ROAD,BANGALORE',9242342312,'KUMAR_123@gmail.com','M','SINGLE','PASSPORT','PASS126','INDIAN');


-- CUSTOMER_REFERENCE_INFO

CREATE TABLE CUSTOMER_REFERENCE_INFO
(
  CUSTOMER_ID VARCHAR(5),
  REFERENCE_ACC_NAME  VARCHAR(20),
  REFERENCE_ACC_NO BIGINT(16),
  REFERENCE_ACC_ADDRESS VARCHAR(50),
  RELATION VARCHAR(25),
  CONSTRAINT CUST_REF_INFO_PK PRIMARY KEY(CUSTOMER_ID),
  CONSTRAINT CUST_REF_INFO_FK FOREIGN KEY(CUSTOMER_ID) REFERENCES   CUSTOMER_PERSONAL_INFO(CUSTOMER_ID)
);




-- CUSTOMER_REFERENCE_INFO

INSERT INTO CUSTOMER_REFERENCE_INFO VALUES('C-001','RAM',0987654321122345,'NO.11,BRIGRADE ROAD,BANGALORE','FRIEND');
INSERT INTO CUSTOMER_REFERENCE_INFO VALUES('C-002','RAGHUL',0987654321122346,'NO.21,CUNNGHAM ROAD,BANGALORE','FRIEND');
INSERT INTO CUSTOMER_REFERENCE_INFO VALUES('C-003','GOKUL',0987654321122357,'NO.12,OMR,CHENNAI','NEIGHBOUR');
INSERT INTO CUSTOMER_REFERENCE_INFO VALUES('C-004','RAHMAN',0987654321122348,'NO.35,ECR,CHENNAI','FRIEND');
INSERT INTO CUSTOMER_REFERENCE_INFO VALUES('C-005','VIVEK',0987654321122359,'NO.78,JAYA NAGAR,BANGALORE','NEIGHBOUR');




-- BANK_INFO

CREATE TABLE BANK_INFO
(
  IFSC_CODE   VARCHAR(15),
  BANK_NAME   VARCHAR(25),
  BRANCH_NAME VARCHAR(25),
  CONSTRAINT BANK_INFO_PK PRIMARY KEY(IFSC_CODE)
);

-- BANK_INFO


INSERT INTO BANK_INFO VALUES('HDVL0012','HDFC','VALASARAVAKKAM');
INSERT INTO BANK_INFO VALUES('SBITN0123','SBI','TNAGAR');
INSERT INTO BANK_INFO VALUES('ICITN0232','ICICI','TNAGAR');
INSERT INTO BANK_INFO VALUES('ICIPG0242','ICICI','PERUNGUDI');
INSERT INTO BANK_INFO VALUES('SBISD0113','SBI','SAIDAPET');




-- ACCOUNT_INFO

CREATE TABLE ACCOUNT_INFO
(
 ACCOUNT_NO BIGINT(16),
 CUSTOMER_ID VARCHAR(5),
 ACCOUNT_TYPE VARCHAR(10),
 REGISTRATION_DATE DATE,
 ACTIVATION_DATE DATE,
 IFSC_CODE VARCHAR(10),
 INTEREST DECIMAL(7,2),
 INITIAL_DEPOSIT BIGINT(10),   
 CONSTRAINT ACC_INFO_PK PRIMARY KEY(ACCOUNT_NO),
 CONSTRAINT ACC_INFO_PERS_FK FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER_PERSONAL_INFO(CUSTOMER_ID),
 CONSTRAINT ACC_INFO_BANK_FK FOREIGN KEY(IFSC_CODE) REFERENCES BANK_INFO(IFSC_CODE)
);

-- ACCOUNT_INFO


INSERT INTO ACCOUNT_INFO VALUES(1234567898765432,'C-001','SAVINGS','2012-02-23','2012-02-28','HDVL0012',5,10000); 
INSERT INTO ACCOUNT_INFO VALUES(1234567898765433,'C-002','SALARY','2012-03-12','2012-03-17','SBITN0123',6,0 ); 
INSERT INTO ACCOUNT_INFO VALUES(1234567898765434,'C-003','SAVINGS','2012-03-15','2012-03-20','ICITN0232',4,16000 ); 
INSERT INTO ACCOUNT_INFO VALUES(1234567898765435,'C-004','SALARY','2012-04-05','2012-04-10','HDVL0012',7,0);
INSERT INTO ACCOUNT_INFO VALUES(1234567898765436,'C-005','SAVINGS','2012-04-12','2012-04-17','SBISD0113',8,20000); 
                                        

/*1    Write a query which will display the customer id, account type they hold, their account number and bank name.*/
select a.customer_id , a.account_type , a.account_no , b.bank_name
from account_info a join bank_info b
on a.ifsc_code = b.ifsc_code;

/*2	Write a query which will display the customer id, account type and the account number of HDFC customers who registered
       after 12-JAN-2012 and before 04-APR-2012.*/
select a.customer_id , a.account_type , a.account_no 
from account_info a join bank_info b
on a.ifsc_code = b.ifsc_code
where lower(b.bank_name) = 'hdfc'
and registration_date between '2012-01-12' and '2012-04-04';   
       

/*3	Write a query which will display the customer id, customer name, account no, account type and bank name where the customers hold the account.*/ 
select c.customer_id , c.customer_name , a.account_no , a.account_type , b.bank_name
from customer_personal_info c join account_info a
on c.customer_id = a.customer_id
join bank_info b 
on a.ifsc_code = b.ifsc_code
where account_no in (
select account_no from account_info);



/*4	"Write a query which will display the customer id, customer name, gender, marital status along with the unique reference string  
        Hint: Generate unique reference string as mentioned below:

       CustomerName_Gender_MaritalStatus
 Example, C-005           KUMAR              M                 SINGLE            KUMAR_M_SINGLE

       Use ""UNIQUE_REF_STRING"" as alias name for displaying the unique reference string." */
       
       
select customer_id , customer_name , gender , marital_status , 
concat_ws('_' , customer_name , gender , marital_status) UNIQUE_REF_STRING
from customer_personal_info;       

/*5	Write a query which will display the account number, customer id, registration date, initial deposit amount of the customer whose initial 
       deposit amount is within the range of Rs.15000 to Rs.25000.*/
select account_no , customer_id , registration_date , initial_deposit
from account_info
where initial_deposit between 15000 and 25000;        


/*6	Write a query which will display customer id, customer name, date of birth, guardian name of the customers whose name starts with 'J'.*/
select customer_id , customer_name , date_of_birth , guardian_name 
from customer_personal_info 
where customer_name like 'j%';

/*7	"Write a query which will display customer id, account number and passcode. <br/>
Hint:  To generate passcode, join the last three digits of customer 
        id and last four digit of account number. 
Example
 C-001                   1234567898765432                0015432
 
       Use ""PASSCODE"" as alias name for displaying the passcode."*/
       
select customer_id , account_no , 
concat(right(customer_id , 3) , right(account_no , 4)) PASSCODE
from account_info;

 /*8       Write a query which will display the customer id, customer name, date of birth, Marital Status, Gender, Guardian name, 
        contact no and email id of the customers whose gender is male 'M' and marital status is MARRIED.*/
select customer_id , customer_name , date_of_birth , marital_status , gender , guardian_name , contact_no , mail_id	
from customer_personal_info
where lower(gender) = 'm' and
lower(marital_status) = 'married';
       

/*9	Write a query which will display the customer id, customer name, guardian name, reference account holders name of the 
        customers who are referenced / referred by their 'FRIEND'.*/
select c.customer_id , c.customer_name , c.guardian_name , r.reference_acc_name
from customer_personal_info c join customer_reference_info r 
on c.customer_id = r.customer_id
where lower(r.relation) = 'friend';

/*10	Write a query to display the customer id, account number and interest amount in the below format with INTEREST_AMT as alias name.    
        Example: $5 Hint: Need to prefix $ to interest amount and round the result without decimals. */
        
select customer_id , account_no , concat('$' , round(interest )) INTEREST_AMT
from account_info;

/*11	Write a query which will display the customer id, customer name, account no, account type, activation date, bank name 
       whose account will be activated on '10-APR-2012'*/
       
select c.customer_id , c.customer_name , a.account_no , a.account_type , a.activation_date , b.bank_name
from customer_personal_info c join account_info a
on c.customer_id = a.customer_id
join bank_info b 
on a.ifsc_code = b.ifsc_code
where activation_date = '2012-04-10';

/*12	Write a query which will display account number, customer id, customer name, bank name, branch name, ifsc code, citizenship, 
       interest and initial deposit amount of all the customers.*/
select a.account_no , c.customer_id , c.customer_name , b.bank_name , b.branch_name , 
b.ifsc_code , c.citizenship , a.interest , a.initial_deposit
from customer_personal_info c join account_info a
on c.customer_id = a.customer_id
join bank_info b 
on a.ifsc_code = b.ifsc_code;

/*13	Write a query which will display customer id, customer name, date of birth, guardian name, contact number, mail id 
and reference account holder's name of the customers who has submitted the passport as an identification document.*/
	
select c.customer_id , c.customer_name , c.date_of_birth , c.guardian_name , c.contact_no , 
c.mail_id , r. reference_acc_name
from customer_personal_info c join customer_reference_info r
on c.customer_id = r.customer_id
where lower( identification_doc_type)= 'passport';

/*14	Write a query to display the customer id, customer name, account no, bank name, contact no and
 mail id of the customers who are from BANGALORE.*/
 
 select c.customer_id , c.customer_name , a.account_no , b.bank_name , c.contact_no
 from customer_personal_info c join account_info a
 on c.customer_id = a.customer_id
 join bank_info b
 on a.ifsc_code = b.ifsc_code
 where lower(c.address) like '%bangalore%';
 

/*15	Write a query which will display customer id, bank name, branch name, ifsc code, registration date, activation date of the customers whose 
        activation date is in the month of march (March 1'st to March 31'st).*/
        
        select c.customer_id , b.bank_name , b.branch_name , b.ifsc_code , a.registration_date , a.activation_date
        from customer_personal_info c join account_info a
		on c.customer_id = a.customer_id
		join bank_info b
		on a.ifsc_code = b.ifsc_code
        where month(activation_date) = 3;
        
        

/*16	Write a query which will calculate the interest amount and display it along with customer id, customer name, account number, account type,  
        interest, and initial deposit amount.
        Hint :Formula for interest amount, calculate: ((interest/100) * initial deposit amt) with 
         column name 'interest_amt' (alias)*/
         
         select c.customer_id , c.customer_name , a.account_no , a.account_type , 
         ((a.interest/100)*initial_deposit) interest_amt, a.initial_deposit
         from customer_personal_info c join account_info a
		 on c.customer_id = a.customer_id;
         

/*17	Write a query to display the customer id, customer name, date of birth, guardian name, contact number, mail id, reference name who has been 
        referenced by 'RAGHUL'.*/
        select c.customer_id , c.customer_name , c.date_of_birth , c.guardian_name , c.mail_id , r.reference_acc_name
        from customer_personal_info c join customer_reference_info r
        on c.customer_id = r.customer_id
        where upper(reference_acc_name) = 'RAGHUL';
        
	
/*18 "Write a query which will display the customer id, customer name and contact number with ISD code of all customers in below mentioned format.  
       Sort the result based on the customer id in descending order. <BR>Format for contact number is :  
     
""+91-3digits-3digits-4digits""
 Example: +91-924-234-2312
  Use ""CONTACT_ISD"" as alias name."*/
  
  select customer_id , customer_name , contact_no,
  concat("+91", "-" ,concat_ws("-" ,left(contact_no , 3) , substr(contact_no ,4,3) , right(contact_no ,4))) CONTACT_ISD
  from customer_personal_info;
  

/*19	Write a query which will display account number, account type, customer id, customer name, date of birth, 
		guardian name, contact no, mail id , gender, reference account holders name, reference account holders account number, 
        registration date, activation date, number of days between the
        registration date and activation date with alias name "NoofdaysforActivation", 
        bank name, branch name and initial deposit for all the customers.*/
        
        select a.account_no , a.account_type , c.customer_id , c.customer_name , c.date_of_birth , c.guardian_name ,
        c.contact_no , c.mail_id , c.gender , r.reference_acc_name , r.reference_acc_no , a.registration_date ,
        a.activation_date , 
        datediff(a.activation_date , registration_date) NoofdaysforActivation ,
        b.bank_name , b.branch_name , a.initial_deposit
        from customer_personal_info c join customer_reference_info r
        on c.customer_id = r.customer_id
        join account_info a 
        on r.customer_id = a.customer_id 
        join bank_info b 
        on a.ifsc_code = b.ifsc_code;
        
        
/*20	"Write a query which will display customer id, customer name,  guardian name, identification doc type,
        reference account holders name, account type, 
       ifsc code, bank name and current balance for the customers who has only the savings account. 
Hint: 
     Formula for calculating current balance is add the intital deposit amount and interest and display without any decimals. 
    Use ""CURRENT_BALANCE"" as alias name."*/

		select c.customer_id ,c.customer_name , c.guardian_name , c.identification_doc_type , 
		r.reference_acc_name , a.account_type , a.ifsc_code , b.bank_name ,
		round(a.initial_deposit + a.interest) CURRENT_BALANCE
		from customer_personal_info c join customer_reference_info r
        on c.customer_id = r.customer_id
        join account_info a 
        on r.customer_id = a.customer_id 
        join bank_info b 
        on a.ifsc_code = b.ifsc_code
        WHERE ACCOUNT_TYPE='SAVINGS';
        


/*21	"Write a query which will display the customer id, customer name, account number, account type, interest, initial deposit; 
    check the initial deposit,if initial deposit is 20000 then display ""high"", if initial deposit is 16000 display 'moderate',
     if initial deposit is 10000 display 'average', if initial deposit is 5000 display 'low', if initial deposit is 0 display 'very low'
    otherwise display 'invalid' 
Hint: Name the column as ""Deposit_Status"" (alias). 
   Strictly follow the lower case for strings in this query."*/

SELECT CPI.CUSTOMER_ID, CPI.CUSTOMER_NAME, AI.ACCOUNT_NO, AI.ACCOUNT_TYPE, AI.INTEREST, AI.INITIAL_DEPOSIT,
CASE
WHEN INITIAL_DEPOSIT=20000 THEN 'high'
WHEN INITIAL_DEPOSIT=16000 THEN 'moderate'
WHEN INITIAL_DEPOSIT=10000 THEN 'average'
WHEN INITIAL_DEPOSIT=5000 THEN 'low'
WHEN INITIAL_DEPOSIT=0 THEN 'very low'
ELSE 'invalid' END DEPOSIT_STATUS
FROM CUSTOMER_PERSONAL_INFO CPI
INNER JOIN ACCOUNT_INFO AI
ON CPI.CUSTOMER_ID=AI.CUSTOMER_ID;

/*22	"Write a query which will display customer id, customer name,  account number, account type, bank name, ifsc code, initial deposit amount and
     new interest amount for the customers whose name starts with ""J"".  Hint:  Formula for calculating ""new interest amount"" is if customers 
   account type is savings then add 10 % on current interest amount to interest amount else display the current interest amount. 
   Round the new interest amount to 2 decimals. Use ""NEW_INTEREST"" as alias name for displaying the new interest amount.

   Example, Assume Jack has savings account and his current interest amount is 10.00, then the new interest amount is 11.00 i.e (10 + (10 * 10/100)).*/

SELECT CPI.CUSTOMER_ID, CPI.CUSTOMER_NAME, AI.ACCOUNT_NO, AI.ACCOUNT_TYPE, BI.BANK_NAME, BI.IFSC_CODE, AI.INITIAL_DEPOSIT,
CASE
WHEN ACCOUNT_TYPE='SAVINGS' THEN ROUND((INTEREST+(INTEREST*10/100)),2)
ELSE INTEREST END 'NEW INTEREST AMOUNT'
FROM CUSTOMER_PERSONAL_INFO CPI
INNER JOIN ACCOUNT_INFO AI
ON CPI.CUSTOMER_ID=AI.CUSTOMER_ID
INNER JOIN BANK_INFO BI
ON BI.IFSC_CODE=AI.IFSC_CODE
WHERE CPI.CUSTOMER_NAME LIKE 'J%';

/*23	Write query to display the customer id, customer name, account no, initial deposit, tax percentage as calculated below. 
     Hint: If initial 
     deposit = 0 then tax is '0%' If initial deposit less than and = 10000 then tax is '3%' If initial deposit greater than 10000 and initial deposit less than 
   20000 then tax is '5%' If initial deposit greater than= 20000 and initial deposit less than ;=30000 then tax is '7%' If initial deposit is greater than 30000 then 
   tax is 
    '10%' Use the alias name 'taxPercentage'*/

SELECT CPI.CUSTOMER_ID, CPI.CUSTOMER_NAME, AI.ACCOUNT_NO, AI.INITIAL_DEPOSIT,
CASE
WHEN INITIAL_DEPOSIT=0 THEN '0%'
WHEN INITIAL_DEPOSIT<=10000 THEN '3%'
WHEN INITIAL_DEPOSIT>10000 AND INITIAL_DEPOSIT<20000 THEN '5%'
WHEN INITIAL_DEPOSIT>=20000 AND INITIAL_DEPOSIT<=30000 THEN '7%'
WHEN INITIAL_DEPOSIT>30000 THEN '10%' END 'TAX PERCENTAGE'
FROM CUSTOMER_PERSONAL_INFO CPI
INNER JOIN ACCOUNT_INFO AI
ON CPI.CUSTOMER_ID=AI.CUSTOMER_ID
