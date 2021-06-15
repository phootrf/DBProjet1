-- CREATE RELATIONS FOR ENTITIES

create table office 
    (id             			serial primary key not null,-- auto-incrementing number in PostgreSQL (same id should not be used twice)
     name           			varchar(30) not null,
     address        			varchar(60) not null,
     postcode       			integer not null,
     city           			varchar(60) not null,
     email          			varchar(60),                -- email is not essential
     phone          			varchar(20) not null        -- phone number is essential
     );

 create table employee 
    (id             			serial primary key not null,
     surname        			varchar(30) not null,
     name           			varchar(30) not null,
     email          			varchar(60),                -- email is not essential
     phone          			varchar(20) not null,       -- phone number is essential
     seniority      			integer default 0,          -- length of service in years
     works_at       			integer,                    -- foreign key, is set to null if corresponding key is deleted -> cannot use not null
     active                     boolean default true,       -- is employee active, or retired/fired                   
     foreign key (works_at)		references office(id) on delete set null on update cascade);
/*
If the key (i.e. ID) of an office is updated, we want the corresponding foreign key in employee to be updated as well.
If an office is closed (i.e. key is deleted), the employees working at this office are not automatically fired.
They might still be working for the travel agency (maybe in a different office). Hence, we set the corresponding 
primary key in employee to null.
*/

create table client
    (id             			serial primary key not null,
     surname        			varchar(30) not null,
     name           			varchar(30) not null,
     address        			varchar(60) not null,
     postcode       			integer not null,           -- integer works as postcode does not start with 0
     city           			varchar(60) not null,
     email          			varchar(60),                -- email is not essential
     phone          			varchar(20) not null        -- phone number is essential
    );

create table trip 
    (id						    serial primary key not null,
     name					    varchar(60) not null,
     start_date					date not null,              -- format: yyyy-mm-dd
     end_date					date not null,
     description				varchar(1024),
     price					    decimal(10,2) default 0.00, -- format: decimal(size, d) with size = digits, d = decimal points
     bought_by					integer not null,
     sold_by					integer not null,
     transaction_date			date not null,              -- date at which trip was bought/sold
     foreign key (bought_by)	references client(id),      -- we don't want a client to be deleted/updated. So there is no delete/update clause here.
                                                            -- so we can have a client history. 
     foreign key (sold_by)		references employee(id),    -- same argument as for client. We want an employee history. 
     check (end_date >= start_date)
     );

create table payment 
    (id             			serial primary key not null,
     amount         			decimal(10,2) not null,
     date           			date not null,
     method         			varchar(15),
     trip_id        			integer not null,
     foreign key (trip_id)		references trip(id),
     check (method in ('credit card', 'cash', 'paypal', 'transfer', 'other'))
     );

create table activity 
    (id             			serial primary key not null,
     name           			varchar(30) not null,
     description    			varchar(1024),
     type           			varchar(30),
     city           			varchar(30) not null,
     country        			varchar(30) not null,
     check (type in ('food', 'sightseeing', 'sport', 'culture', 'other'))
     );

create table transport 
    (id             			serial primary key not null,
     start          			varchar(30) not null,
     destination    			varchar(30) not null,
     type           			varchar(30),
     check (type in ('plane', 'train', 'bus', 'other'))
     );

create table accommodation 
    (id             			serial primary key not null,
     city           			varchar(30) not null,
     country        			varchar(30) not null,
     address        			varchar(60) not null,
     name           			varchar(60) not null,
     type           			varchar(15),
     check (type in ('hotel', 'hostel', 'b&b', 'holiday home', 'other'))
     );

-- CREATE RELATIONS FOR RELATIONSHIPS

/*
All 1:N relationships in the ER model can be dropped and replaced with a foreign key
in the N-side entity (see foreign keys above). Thus, only the N:M relationships remain.
*/

create table has_activity
    (trip_id      				integer not null references trip on delete cascade on update cascade,
     activity_id  				integer not null references activity on delete cascade on update cascade,
     date           			date not null, 
     primary key (trip_id, activity_id)     -- N:M relationship means both keys are needed
     ); 
/*
If the key of an activity/trip is updated (i.e. ID is changed), the corresponding foreign keys in
has_activity must be updated as well.
If a an activity/trip is deleted, the corresponding tuple in has_activity is obsolete and can be deleted as well.
This is due to the fact that each tuple in has_activity links an activity to a specific trip, meaning that each
activity is trip-secific (i.e. Louvre for trip A is not the same activity as Louvre for trip B).		
The same argument holds for has_transport and has_accommodation (see below).
*/

create table has_transport
    (trip_id      				integer not null references trip on delete cascade on update cascade,
     transport_id  				integer not null references transport on delete cascade on update cascade,
     date           			date not null, 
     primary key (trip_id, transport_id)                -- N:M relationship means both keys are needed
     ); 

Create table has_accommodation
    (trip_id      				integer not null references trip on delete cascade on update cascade,
     accommodation_id 			integer not null references accommodation on delete cascade on update cascade,
     date           			date not null, 
     duration       			integer,                -- duration of stay (number of nights)
     primary key (trip_id, accommodation_id),           -- N:M relationship means both keys are needed
     check (duration > 0)
     );          
