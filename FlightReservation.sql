/*1.Display profile id of passenger who booked minimum number of tickets.

Ans:*/
select profile_id from air_ticket_info 
group by profile_id
having count(ticket_id) in
(select min(c) from
(select count(ticket_id) c from air_ticket_info group by profile_id) t);

/*2. Write a query to intimate the passengers who are boarding Chennai to Hyderabad Flight on 6th May 2013 stating 
the delay of 1hr in the departure time. The Query should display the passenger’s profile_id, first_name,
last_name, flight_id, flight_departure_date, actual departure time as "Actual_Departure_Time", actual arrival 
time as"Actual_Arrival_Time", delayed departure time as "Delayed_Departure_time", delayed arrival time as 
"Delayed_Arrival_Time" Hint: Distinct Profile ID should be displayed irrespective of multiple tickets booked by 
the same profile.

Ans:*/

select distinct app.profile_id,    app.first_name,    app.last_name,    ati.flight_id,   ati.flight_departure_date,
af.arrival_time as Actual_arrival_time,    af.departure_time as Actual_departure_time,
addtime(af.departure_time,'1:00:00') as Delayed_departure_time,
addtime(af.arrival_time,'1:00:00') as Delayed_arrival_time 
from
air_passenger_profile app     join   air_flight af    join    air_ticket_info ati   
on app.profile_id=ati.profile_id      and      ati.flight_id=af.flight_id
where af.from_location='CHN'       and     af.to_location='HYD'
group by app.profile_id
having ati.flight_departure_date='2014-05-06';


/*3. Display number of flights between 6.00 AM and 6.00 PM from Chennai. Hint Use FLIGHT_COUNT as alias name
Ansbb:*/

select count(flight_id) as Flight_count 
from  air_flight       
where departure_time between '6:00:00' and '18:00:00'    and    from_location='chn';


/*4. Display flight id,departure date,flight type of all flights. Flight type can be identified if ticket price is less than 3000 
then 'AIR PASSENGER',ticket price between 3000 and less than 4000 'AIR BUS' and ticket price between 4000 and 
greater than 4000 then 'EXECUTIVE PASSENGER'. Hint use FLIGHT_TYPE as alias name.
Ans:*/

select flight_id, flight_departure_date, 
case  when price <3000 then 'Air_passenger' 
when price between 3000 and 4000 then 'Air_bus'
when price >4000 then 'Executive_passenger' 
else 'n/a' 
end Flight_Tme 
from air_flight_details
group by flight_id;


/*
5. Display flight id,from location, to location and price of flights whose departure is in the month of April
Ans: */
select afd.flight_id, af.from_location, af.to_location,afd.price 
from air_flight_details afd join air_flight af 
on af.flight_id=afd.flight_id
where month(afd.flight_departure_date)=5
group by afd.flight_id;

/* 6.Write a query to display the Flight_Id, Flight_Departure_Date, From_Location,To_Location and Duration
which has duration of travel less than 1 Hour, 10 Minutes
Ans: */

select af.Flight_Id, afd.Flight_Departure_Date, af.From_Location, af.To_Location,Duration 
from air_flight af join air_flight_details afd 
on afd.flight_id=af.flight_id 
where af.duration < '01:10:00' 
group by af.flight_id;


/* 7. Write a query to display the credit card type and no of credit cards used on the same type. Hint: Use 
    CARD_COUNT AS Alias name for no of cards.
Ans: */
 
select card_type, count(card_number)  card_count 
from air_credit_card_details 
group by card_type;


/*9. Write a query to display profile id of passenger who booked maximum number of tickets
Ans: */

select profile_id 
from air_ticket_info 
group by profile_id
having count(ticket_id) in 
(select min(c) from (select count(ticket_id) c from air_ticket_info group by profile_id)  t);


/* 10. Write a query to display unique passenger profile id,first name,and mobile number and email address of 
passengers who booked ticket to travel from HYDERABAD to CHENNAI.
Ans: */

select distinct(app.profile_id),app.first_name,app.mobile_number,app.email_id 
from air_passenger_profile app join air_flight af join air_ticket_info ati 
on app.profile_id=ati.profile_id and ati.flight_id=af.flight_id 
where af.from_location='HYD' and af.to_location='KOL';


/* 11. Write a query to find the number of tickets as “No_of_Tickets” (alias name) booked by Kochi Customers. It
should display the Profile_Id, First_Name, Base_Location and number of tickets booked.
Hint: Use String functions to get the base location of customer from Address and give alias name as Base_Location
Ans:*/

select app.profile_id, app.first_name, app.address as base_location, count(ati.ticket_id) 
from air_passenger_profile app join air_ticket_info ati 
on app.profile_id=ati.profile_id 
where app.address like '%kolkata%' 
group by app.profile_id;


/*12.Write a query to display the flight_id, from_location, to_location, number of Services as “No_of_Services” (alias 
name) offered in the month of May. Hint:The number of services can be calculated from the number of scheduled 
departure dates of the flight
Ans:*/

select ati.flight_id, af.from_location, af.to_location, count(ati.flight_departure_date) as No_of_Services 
from air_ticket_info ati join air_flight af 
on af.flight_id=ati.flight_id
where month(ati.flight_departure_date)=5
group by ati.flight_id;


/* 13. Write a query to display unique profile id,first name, email address and contact number of passengers who 
traveled on flight with id 3148.
Ans: */

select distinct app.profile_id,app.first_name, app.address, app.mobile_number, app.email_id 
from air_passenger_profile app join air_ticket_info ati 
on ati.profile_id=app.profile_id 
where ati.flight_id='2';


/* 14. Write a query to find the no of services offered by each flight and the total price of the services. The Query should 
display flight_id, number of services as “No_of_Services” (alias name)and the cost as “Total_Price” (alias name). 
Order the result by Highest Total Price 
Hint:The number of services can be calculated from the number of scheduled departure dates of the flight
Ans: */

select af.flight_id, count(afd.flight_departure_date)  No_of_services,sum(afd.price)  Total_price 
from air_flight af join air_flight_details afd join air_ticket_info ati
on afd.flight_id=af.flight_id and afd.flight_id=ati.flight_id 
where status='on time' 
group by af.flight_id 
order by Total_price desc;


/* 15. Write a query to find the number of passengers traveled in each flight in each scheduled date. The Query should 
display flight_id, flight_departure_date and the number of passengers as “No_of_Passengers” (alias name).
 Hint: The Number of passengers inclusive of all the tickets booked with single profile id.
Ans: */
select flight_id,flight_departure_date,count(ticket_id)  no_of_passengers 
from air_ticket_info 
where status='on time' 
group by flight_id, flight_departure_date;

/*
16. Write a query to find the customer who has booked the ticket with the From_Location different from their 
Base_Location. The Query should display flight_id,profile_id, customer_name, base_location and from_location
Hint: Use string functions to get the city value as Base_location from customer address. Use alias name as 
“Base_Location”.Combine First Name and Last Name with a comma in between and give alias name as 
“Customer_Name”. Use distinct to display unique records
Ans: */

select distinct app.profile_id, af.flight_id, 
concat(app.first_name,',',app.last_name)  customer_name,app.address  base_location,af.from_location 
from air_ticket_info ati join air_passenger_profile app join air_flight af 
on ati.flight_id=af.flight_id and app.profile_id=ati.profile_id 
where app.address<>af.from_location
order by profile_id,flight_id;


/* 18. Write a query to find the number of flights flying from each location. The Query should display the starting 
location as "Location", number of flights to other locations as “No_of_Flights”. Hint: Get the distinct starting 
location from the From_Location &amp; To_Location.
Ans: */

select from_location, count(flight_id)  no_of_flights
from air_flight 
group by from_location;

/*
19. Write a query to find the average cost of the tickets in each flight on all scheduled dates. The query should display 
flight_id, from_location, to_location and Average price as “Price” (alias name).
Ans: */

select af.flight_id, af.from_location, af.to_location,round((avg(afd.price)),2)  average_price 
from air_flight af join air_flight_details afd 
on af.flight_id=afd.flight_id 
group by af.flight_id;

/*
20. Write a query to find the customers who have booked tickets from Chennai to Hyderabad. The query should 
display profile_id, customer_name (combine first_name, last_name with comma in b/w), and address of the 
customer
Hint: Query should fetch unique customers irrespective of multiple tickets booked
Ans: */

select distinct(app.profile_id),concat(app.first_name,’,’,app.last_name),
app.mobile_number, app.address, app.email_id 
from air_passenger_profile app join air_flight af join air_ticket_info ati 
on app.profile_id=ati.profile_id and ati.flight_id=af.flight_id 
where af.from_location='CHN' and af.to_location='HYD'
group by app.profile_id;

/*
21.Write a query to find the customers who has booked maximum number of tickets in ABC Airlines. The Query 
should display profile_id, customer's first_name, Address and Number of tickets booked as “No_of_Tickets” (alias 
name).
Ans:  */

Select distinct(app.profile_id),ati.ticket_id,app.first_name,app.address,count(ati.ticket_id)  no_of_tickets
From air_flight af join air_passenger_profile app join air_ticket_info ati 
on ati.flight_id=af.flight_id and ati.profile_id=app.profile_id
where af.airline_name='Malaysian Airlines' 
group by app.profile_id
having count(ati.ticket_id) in (
select max(c) from (select count(ati.ticket_id) c 
from air_flight af join air_passenger_profile app join air_ticket_info ati 
on ati.flight_id=af.flight_id and ati.profile_id=app.profile_id
where af.airline_name='Malaysian Airlines' group by app.profile_id) t);

/*
24. Write a query to find the number of passengers traveled on each flight on each scheduled date and total price of 
the tickets booked. The Query should display flight_id, from_location, to_location,flight_departure_date,number 
of passengers as “No_of_Passengers” (alias name), Total Price of the tickets booked as “Total_Price(alias 
name).
 Hint: The Number of passengers inclusive of all the tickets booked with single profile id. "Total_Price" should be 
calculated as (No_of_Passengers * price of single ticket

Ans: */

select af.flight_id,af.from_location,af.to_location,afd.flight_departure_date,
count(ticket_id)  No_of_Passengers,count(ticket_id)*price  total_price 
from air_ticket_info ati join air_flight af join air_flight_details afd 
on ati.flight_id=af.flight_id and af.flight_id=afd.flight_id 
where ati.status='on time' 
group by af.flight_id;

/*
25. Write a query to find the customers who are travelling together on the same flight. The Query should display 
profile_id, first_name,last_name,flight_id, flight_departure_date ,from_location and to_location. The result 
should be sorted based on the flight id and flight departure date. Hint: Distinct profile id should be displayed 
irrespective of multiple tickets booked.Display the result only if more than one customers travelling on the same 
flight.
 For Eg: If the profile ID P1 &amp; P2 booked the ticket on flight F1 on May 3rd and 10th respectively then do not 
display P1 &amp; P2. If both P1 &amp; P2 booked the ticket on flight F1 on May 12th (same day) then display P1 
P2 as they will travel together
Ans: */

select distinct(TI.profile_id), first_name, last_name, TI.flight_id, TI.flight_departure_date, from_location, to_location 
from air_ticket_info TI join air_passenger_profile PP join air_flight F 
on F.flight_id=TI.flight_id AND PP.profile_id=TI.profile_id 
where EXISTS(
select profile_id from air_ticket_info 
where TI.profile_id<>profile_id AND TI.flight_departure_date=flight_departure_date AND TI.flight_id=flight_id) 
order by TI.flight_id, TI.flight_departure_date;

/*
26. Write a query to find the flights available in Morning, After Noon, Evening &amp; Night. The Query should display 
the Flight_Id, From_Location, To_Location , Departure_Time, time of service as "Time_of_Service". Time of 
Service should be calculated as: From 05:00:01 Hrs to 12:00:00 Hrs -  Morning, 12:00:01 to 18:00:00 Hrs -
Afternoon, 18:00:01 to 24:00:00 - Evening and 00:00:01 to 05:00:00 – Night

Ans:*/

select flight_id,from_location,to_location,departure_time,
case  when departure_time between '5:00:01' and '12:00:00' then 'morning' 
when departure_time between '12:00:01' and '18:00:00' then 'afternoon'
when departure_time between '18:00:01' and '24:00:00' then 'evening' 
else 'n/a' 
end 'Time_of_service'
from air_flight
group by flight_id;

/*
27. Write a query to find the flight which has least number of services in the month of May. The Query should fetch 
flight_id, from_location, to_location, least number of Services as “No_of_Services” 
Hint: Number of services offered can be calculated from the number of scheduled departure dates of a flight
Ans:*/

Select af.flight_id, af.from_location, af.to_location, count(ati.flight_departure_date) as No_of_services
from air_flight af join air_passenger_profile app join air_ticket_info ati 
on ati.flight_id=af.flight_id and ati.profile_id=app.profile_id
where month(ati.flight_departure_date)=5 
group by app.profile_id
having count(ati.flight_departure_date) in (
select max(c) from (select count(ati.flight_departure_date) c
from air_flight af join air_passenger_profile app join air_ticket_info ati 
on ati.flight_id=af.flight_id and ati.profile_id=app.profile_id
where month(ati.flight_departure_date)=5 group by app.profile_id) t);

