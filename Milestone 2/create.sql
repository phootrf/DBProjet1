drop table accommodation;
drop table trip;

-- Create relations for entities

create table trip
	(id integer primary key,
	 /* Trip names must be unique in order to distinguish trips
	 by its names and not only by its IDs.
	 "Baltisberger London Jun21" vs "Baltisberger London Mar19" (names)
	 is more meaningful than 234 vs 123 (IDs) */
	 name varchar(100) not null unique,
	 start_date date,
	 end_date date,
	 desctiption varchar(500),
	 price integer default 0,
	 /* End date cannot be before start date.
	 They can be equal if the trip only consists
	 of an activity or a transport (no accommodation). */
	 check (end_date >= start_date)
	);

create table accommodation
	(id integer primary key,
	 /* Accommodation names must be unique.
	 It may be that there are, for example, two Hilton hotels in Paris
	 (e.g. Hilton Downtown and Hilton Airport). */
	 name varchar(30) not null unique,
	 /* What if an accommodation is not in a city?
	 Should we rename city to region?
	 Example: Barcelona and Costa Blanca both work with region,
	 but not with city.
	 City/region cannot be null in order two distinguish the Hilton in Downtown Paris
	 from the Hilton in Downtown London. */
	 city varchar(30) not null,
	 country varchar(30) not null,
	 begin_date date,
	 number_of_nights integer,
	 type varchar(30),
	 -- At least one night in accommodation.
	 check (number_of_nights > 0),
	 -- Type must be one of the following accommodation types:
	 check (type in ('Hotel', 'Hostel', 'B&B', 'Holiday home', 'Other'))
	 );
	 
create table transport
	();

create table activity
	();

create table payment
	();

create table client
	();

create table employee
	();

create table office
	();

-- Create relations for relationships

create table has_accommodation
	();

create table has_transport
	();

create table has_activity
	();

create table has_payment
	();

create table buys
	();

create table sells
	();

ceate table works_at
	();