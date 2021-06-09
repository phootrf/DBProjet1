drop table accommodation;
drop table trip;

create table trip
	(id integer not null unique primary key,
	 name varchar(100) not null unique);

create table accommodation
	(id integer not null unique primary key,
	 name varchar(30) not null,
	 city varchar(30),
	 country varchar(30) not null,
	 begin_date date,
	 number_of_nights integer,
	 type varchar(30),
	 trip_id integer not null,
	 foreign key(trip_id)
	 references trip(id)
	);

insert into trip
values(1, 'Baltisberger London-Paris Jan21');

insert into accommodation
values(1, 'Hilton', 'London', 'UK', '2021-01-01', 3, 'Hotel', 1);

insert into accommodation
values(2, 'Hilton', 'Paris', 'France', '2021-01-04', 3, 'Hotel', 1);

select *
from trip;

select *
from accommodation
where trip_id = 1;