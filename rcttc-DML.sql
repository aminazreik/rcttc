use rcttc;

-- insert into customer (first_name, last_name, email, address, phone_number)
-- 	select 
-- 		rcttc_data.customer_first,
-- 		rcttc_data.customer_last,
--         rcttc_data.customer_email,
--         rcttc_data.customer_address,
--         rcttc_data.customer_phone
-- 	from rcttc_data
--     group by customer_first, customer_last, customer_email, customer_address,
-- 				customer_phone;
-- insert into theater (theater_name, address, phone, email)
-- 	select
-- 		rcttc_data.theater,
--         rcttc_data.theater_address,
--         rcttc_data.theater_phone,
--         rcttc_data.theater_email
-- 	from rcttc_data
--     group by theater, theater_address, theater_phone, theater_email;
-- insert into performance (performance_name)
-- 	select rcttc_data.`show`
--     from rcttc_data
--     group by `show`;
-- insert into event (`date`, ticket_price, theater_id, performance_id)
-- 	select distinct
-- 		rcttc_data.`date`,
-- 		rcttc_data.ticket_price,
-- 		theater.theater_id,
--         performance.performance_id
-- 	from rcttc_data
--     inner join performance on rcttc_data.`show` = performance.performance_name
-- 	inner join theater on rcttc_data.theater = theater.theater_name;
-- insert into reservation (seat, theater_id, customer_id, event_id)
-- 	select distinct
-- 		rcttc_data.seat,
--         theater.theater_id,
--         customer.customer_id,
--         event.event_id
-- 	from rcttc_data
--     inner join event on rcttc_data.`date` = event.`date` and 
-- 		rcttc_data.ticket_price = event.ticket_price
--     inner join customer on rcttc_data.customer_first = customer.first_name and
-- 		rcttc_data.customer_last = customer.last_name
--     inner join theater on rcttc_data.theater = theater.theater_name;

-- drop table rcttc_data;
--     
-- update event set
-- 	ticket_price = 22.25
-- where event_id = 5;

-- update customer set
-- 	phone_number = "1-801-EAT-CAKE"
-- where customer_id = 48;

-- update reservation set
-- 	seat = "B4"
-- where reservation_id = 98;

-- update reservation set 
-- 	seat = "C2"
-- where reservation_id = 100;

-- update reservation set
-- 	seat = "A1"
-- where reservation_id = 103;

-- update reservation set 
-- 	seat = "A2"
-- where reservation_id = 102;

-- update reservation set
-- 	seat = "A4"
-- where reservation_id = 94;

-- update reservation set
-- 	seat = "C4"
-- where reservation_id = 92;

-- update reservation set
-- 	seat = "C3"
-- where reservation_id = 101;

-- delete from reservation where customer_id = 7 and reservation_id = 25;
-- delete from reservation where customer_id = 8 and reservation_id = 26;
-- delete from reservation where customer_id = 10 and reservation_id = 29;
-- delete from reservation where customer_id = 15 and reservation_id = 41;
-- delete from reservation where customer_id = 18 and reservation_id = 50;
-- delete from reservation where customer_id = 19 and reservation_id = 51;
-- delete from reservation where customer_id = 22 and reservation_id = 59;
-- delete from reservation where customer_id = 25 and reservation_id = 67;
-- delete from reservation where customer_id = 26 and reservation_id = 68;

-- delete from reservation where customer_id = 65 and reservation_id = 174;
-- delete from reservation where customer_id = 65 and reservation_id = 173;

-- delete from customer where customer_id = 65 and first_name = "Liv";






