drop database if exists rcttc;
create database rcttc;
use rcttc;

create table customer (
    customer_id int primary key auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(100) not null,
    address varchar(125),
    phone_number varchar(20) 
);
create table theater (
    theater_id int primary key auto_increment,
    `name` varchar(125) not null,
    address varchar(125) not null,
    phone varchar(20) not null,
    email varchar(125) not null
  --   constraint fk_location_agency_id
--         foreign key (agency_id)
--         references agency(agency_id)
);
create table performance (
	performance_id int primary key auto_increment,
    `name` varchar(125) not null
);

create table event (
    event_id int primary key auto_increment,
    `name` varchar(125) not null,
    `date` date not null,
    ticket_price decimal(8,2) not null,
    theater_id int not null,
    performance_id int not null,
    constraint fk_event_theater_id
        foreign key (theater_id)
        references theater(theater_id),
	constraint fk__event_performance_id
		foreign key (performance_id)
        references performance(performance_id)
);
create table reservation (
	reservation_id int primary key auto_increment,
    seat varchar(2) not null,
    theater_id int not null,
    customer_id int not null,
    event_id int not null,
    constraint fk_reservation_theater_id
        foreign key (theater_id)
        references theater(theater_id),
	constraint fk_rervation_customer_id
		foreign key (customer_id)
        references customer(customer_id),
	constraint fk_reservation_event_id
		foreign key (event_id)
        references event(event_id)
);
    