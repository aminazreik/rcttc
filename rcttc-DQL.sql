-- Find all performances in the last quarter of 2021 (Oct. 1, 2021 - Dec. 31 2021).
-- select  
-- 	p.performance_name
-- from event e
-- inner join performance p on e.performance_id = p.performance_id
-- where date(`date`) >= '2021-10-01' and date(`date`) <= '2021-12-31';

-- List customers without duplication.
-- select 
-- 	concat(first_name, ' ', last_name) as customer_name
-- from customer;

-- Find all customers without a .com email address.
-- select 
-- 	first_name,
--     email
-- from customer
-- where email not like '%.com' ;

-- Find the three cheapest shows.
-- select 
-- 	p.performance_name,
--     e.ticket_price
-- from performance p
-- inner join event e on p.performance_id = e.performance_id
-- order by ticket_price asc
-- limit 3; 

-- List customers and the show they're attending with no duplication.

-- select 
-- 	concat(c.first_name, ' ', c.last_name) as `name`,
--     p.performance_name
-- from customer c
-- inner join reservation r on c.customer_id = r.customer_id
-- inner join event e on r.event_id = e.event_id
-- inner join performance p on e.performance_id = p.performance_id
-- group by `name`, p.performance_name;

-- List customer, show, theater, and seat number in one query
-- select 
-- 	concat(c.first_name, ' ', c.last_name) as `name`,
--     p.performance_name as `show`,
--     t.theater_name,
--     r.seat as seat_number
-- from customer c
-- inner join reservation r on c.customer_id = r.customer_id
-- inner join event e on r.event_id = e.event_id
-- inner join theater t on e.theater_id = t.theater_id
-- inner join performance p on e.performance_id = p.performance_id;

-- Find customers without an address
-- select *
-- from customer 
-- where address is null or address = '';

-- Recreate the spreadsheet data with a single query
-- select 
-- 	c.first_name as customer_first,
--     c.last_name as customer_last,
--     c.email as customer_email,
--     c.phone_number as customer_phone,
--     c.address as customer_address,
--     r.seat as seat,
--     p.performance_name as `show`,
--     e.ticket_price as ticket_price,
--     e.`date` as `date`,
--     t.theater_name as theater,
--     t.address as theater_address,
--     t.phone as theater_phone,
--     t.email as theater_email
-- from customer c
-- inner join reservation r on c.customer_id = r.customer_id
-- inner join event e on r.event_id = e.event_id
-- inner join theater t on e.theater_id = t.theater_id
-- inner join performance p on e.performance_id = p.performance_id;

-- Count total tickets purchased per customer (64 rows)
-- select
-- 	r.customer_id,
-- 	sum(ticket_price) as total
-- from reservation r
-- inner join event e on r.event_id = e.event_id
-- group by r.customer_id;

-- Calculate the total revenue per show based on tickets sold
-- select
-- 	p.performance_name as show_name,
--     sum(e.ticket_price) as revenue
-- from reservation r
-- inner join event e on r.event_id = e.event_id
-- inner join performance p on e.performance_id = p.performance_id
-- group by p.performance_name;

-- Calculate the total revenue per theater based on tickets sold
-- select
-- 	t.theater_name as theater,
--     sum(e.ticket_price) as total
-- from reservation r
-- inner join theater t on r.theater_id = t.theater_id
-- inner join event e on r.event_id = e.event_id
-- group by theater;

-- Who is the biggest supporter of RCTTC? Who spent the most in 2021?
-- select
-- 	concat(c.first_name, ' ', c.last_name) as `name`,
--     sum(e.ticket_price) as total_cost
-- from reservation r 
-- inner join customer c on r.customer_id = c.customer_id
-- inner join event e on r.event_id = e.event_id
-- group by name
-- order by total_cost desc
-- limit 1;
