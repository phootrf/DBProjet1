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
/* 
Oliver: Wir sollten aus meiner Sicht keinen Default-Wert für Seniority von 0 setzten.
Denn Mitarbeiter, die neu beim Reisebüro arbeiten, haben auch eine Seniority von 0.
Daher können neue Mitarbeiter nicht von Mitarbeitern unterschieden werden,
bei denen keine Seniority angegeben wurde.
*/
     seniority      			integer,                   -- length of service in years
     works_at       			integer,                   -- foreign key, is set to null if corresponding key is deleted -> cannot use not null
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
     phone          			varchar(20) not null      -- phone number is essential
    );

create table trip 
    (id						serial primary key not null,
     name					varchar(60) not null,
     start_date					date not null,              -- format: yyyy-mm-dd
     end_date					date not null,
     description				varchar(1024),
     price					decimal(10,2) default 0.00, -- format: decimal(size, d) with size = digits, d = decimal points
     bought_by					integer not null,
     sold_by					integer not null,
     transaction_date				date not null,              -- date at which trip was bought/sold
     foreign key (bought_by)			references client(id) on delete set null on update cascade, -- same argument as for employee-office (see above)
     -- ich bin nicht sicher, ob hier das gleiche Argument wie oben stimmt. Es könnte sein dass wir ein Archiv haben wollen.
     -- Ein Kunde ist immer ein Kunde. Wenn wir etwas falsch mit einem Kunde gemacht haben, werden wir ein update machen. 
     -- Wenn ein Kunde keine Reise mehr bestellt, heisst das nicht dass wir ihn aus dem Datenbank streichen wollen. 
     foreign key (sold_by)			references employee(id) on delete set null on update cascade, -- same argument as for employee-office (see above)
     -- wie oben für Kunde. Vieleicht sollten wir entscheiden ob ein Mitarbeiter aktiv ist oder nicht. Wenn nicht mehr aktiv, kann er nicht mehr verkaufen
     -- wir haben aber ein Archiv der Reisen, die er organisiert hat. 
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

--Für alle die hier unter Tabellen frage ich mich, ob Feld date nicht zur Tabelle has... gehört. 
--Ein Hotel wird zum Beispiel für ein Datum gewählt werden. Aber was passiert, wenn wir wieder das gleiche Hotel wählen wollen: 
-- Im moment, weil die Daten nicht immer die gleichen sind, müssen wir von null wieder die Daten eintragen. Das geht nicht. 
create table activity 
    (id             			serial primary key not null,
     name           			varchar(30) not null,
     description    			varchar(1024),
     type           			varchar(30),
     city           			varchar(30) not null,
     country        			varchar(30) not null,
     date           			date not null, 
     check (type in ('food', 'sightseeing', 'sport', 'culture', 'other')) --"seightseeing" --> "sightseeing"
     );

create table transport 
    (id             			serial primary key not null,
     start          			varchar(30) not null,
     destination    			varchar(30) not null,
     type           			varchar(30),
     date           			date not null,
     check (type in ('plane', 'train', 'bus', 'other'))
     );

create table accommodation 
    (id             			serial primary key not null,
     city           			varchar(30) not null,
     country        			varchar(30) not null,
     address        			varchar(60) not null,
     name           			varchar(60) not null,
     begin_date     			date not null,
     duration       			integer,                -- duration of stay (number of nights)
     type           			varchar(15),
     check (duration > 0),
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
     primary key (trip_id, activity_id)); -- N:M relationship means both keys are needed
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
     primary key (trip_id, transport_id)); -- N:M relationship means both keys are needed

Create table has_accommodation
    (trip_id      				integer not null references trip on delete cascade on update cascade,
     accommodation_id 				integer not null references accommodation on delete cascade on update cascade,
     primary key (trip_id, accommodation_id)); -- N:M relationship means both keys are needed
