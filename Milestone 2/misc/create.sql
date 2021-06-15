-- CREATE RELATIONS FOR ENTITIES

CREATE TABLE office 
    (id             			SERIAL PRIMARY KEY NOT NULL, -- Auto-incrementing integer number in PostgreSQL
     name           			VARCHAR(30) NOT NULL,
     address        			VARCHAR(60) NOT NULL,
     postcode       			INTEGER NOT NULL,
     city           			VARCHAR(60) NOT NULL,
     email          			VARCHAR(60), -- Email is not essential
     phone          			VARCHAR(20) NOT NULL); -- Phone number is essential
     
 CREATE TABLE employee 
    (id             			SERIAL PRIMARY KEY NOT NULL,
     surname        			VARCHAR(30) NOT NULL,
     name           			VARCHAR(30) NOT NULL,
     email          			VARCHAR(60), -- Email is not essential
     phone          			VARCHAR(20) NOT NULL, -- Phone number is essential
	 /* 
	 	Oliver: Wir sollten aus meiner Sicht keinen Default-Wert für Seniority von 0 setzten.
	 	Denn Mitarbeiter, die neu beim Reisebüro arbeiten, haben auch eine Seniority von 0.
	 	Daher können neue Mitarbeiter nicht von Mitarbeitern unterschieden werden,
	 	bei denen keine Seniority angegeben wurde.
	 */
     seniority      			INTEGER, -- Length of service in years
     works_at       			INTEGER, -- Foreign key, is set to null if corresponding key is deleted -> cannot use NOT NULL
     FOREIGN KEY (works_at)		REFERENCES office(id) ON DELETE SET NULL ON UPDATE CASCADE);
	 /*	If the key (i.e. ID) of an office is updated, we want the corresponding foreign key in employee to be updated as well.
	 	If an office is closed (i.e. key is deleted), the employees working at this office are not automatically fired.
		They might still be working for the travel agency (maybe in a different office). Hence, we set the corresponding 
		primary key in employee to null. */

CREATE TABLE client
    (id             			SERIAL PRIMARY KEY NOT NULL,
     surname        			VARCHAR(30) NOT NULL,
     name           			VARCHAR(30) NOT NULL,
     address        			VARCHAR(60) NOT NULL,
     postcode       			INTEGER NOT NULL, -- Integer works as postcode does not start with 0
     city           			VARCHAR(60) NOT NULL,
     email          			VARCHAR(60), -- Email is not essential
     phone          			VARCHAR(20) NOT NULL); -- Phone number is essential

CREATE TABLE trip 
    (id					SERIAL PRIMARY KEY NOT NULL,
     name				VARCHAR(60) NOT NULL,
     start_date				DATE NOT NULL, --Format: YYYY-MM-DD
     end_date				DATE NOT NULL,
     description			VARCHAR(1024),
     price				DECIMAL(10,2) DEFAULT 0.00, --Format: DECIMAL(size, d) with size = digits, d = decimal points
     bought_by				INTEGER NOT NULL,
     sold_by				INTEGER NOT NULL,
     transaction_date			DATE NOT NULL, -- Date at which trip was bought/sold
     FOREIGN KEY (bought_by)		REFERENCES client(id),
     FOREIGN KEY (sold_by)		REFERENCES employee(id),
     CHECK (end_date >= start_date));

CREATE TABLE payment 
    (id             			SERIAL PRIMARY KEY NOT NULL,
     amount         			DECIMAL(10,2) NOT NULL,
     date           			DATE NOT NULL,
     method         			VARCHAR(15),
     trip_id        			INTEGER NOT NULL,
     FOREIGN KEY (trip_id)		REFERENCES trip(id),
     CHECK (method IN ('credit card', 'cash', 'paypal', 'transfer', 'other')));

CREATE TABLE activity 
    (id             			SERIAL PRIMARY KEY NOT NULL,
     name           			VARCHAR(30) NOT NULL,
     description    			VARCHAR(1024),
     type           			VARCHAR(30),
     city           			VARCHAR(30) NOT NULL,
     country        			VARCHAR(30) NOT NULL,
     date           			DATE NOT NULL, 
     CHECK (type IN ('food', 'sightseeing', 'sport', 'culture', 'other')));

CREATE TABLE transport 
    (id             			SERIAL PRIMARY KEY NOT NULL,
     start          			VARCHAR(30) NOT NULL,
     destination    			VARCHAR(30) NOT NULL,
     type           			VARCHAR(30),
     date           			DATE NOT NULL,
     CHECK (type IN ('plane', 'train', 'bus', 'other')));

CREATE TABLE accommodation 
    (id             			SERIAL PRIMARY KEY NOT NULL,
     city           			VARCHAR(30) NOT NULL,
     country        			VARCHAR(30) NOT NULL,
     address        			VARCHAR(60) NOT NULL,
     name           			VARCHAR(60) NOT NULL,
     begin_date     			DATE NOT NULL,
     duration       			INTEGER, -- Duration of stay (number of nights)
     type           			VARCHAR(15),
     CHECK (duration > 0),
     CHECK (type IN ('hotel', 'hostel', 'b&b', 'holiday home', 'other')));

-- CREATE RELATIONS FOR RELATIONSHIPS

/* 	Remark: All 1:N relationships in the ER model can be dropped and replaced with a 
	foreign key in the N-side entity (see foreign keys above). Thus, only the N:M relationships remain. */

CREATE TABLE has_activity
    (activity_id  				INTEGER NOT NULL REFERENCES activity ON DELETE CASCADE ON UPDATE CASCADE,
     trip_id      				INTEGER NOT NULL REFERENCES trip ON DELETE CASCADE ON UPDATE CASCADE,
     PRIMARY KEY (activity_id, trip_id)); -- N:M relationship means both keys are needed
	 /*	If the key of an activity/trip is updated, we want the corresponding foreign keys in has_activity to be updated as well.
	 	If a trip is deleted, all activities of this trip should be deleted as well (on delete cascade).
		If an activity is deleted, the corresponding trip still exists (same trip with one activity less).
		... */

CREATE TABLE has_transport
    (transport_id  				INTEGER NOT NULL REFERENCES transport ON DELETE CASCADE ON UPDATE CASCADE,
     trip_id      				INTEGER NOT NULL REFERENCES trip ON DELETE CASCADE ON UPDATE CASCADE,
     PRIMARY KEY (transport_id, trip_id)); -- N:M relationship means both keys are needed

Create TABLE has_accommodation
    (accommodation_id 				INTEGER NOT NULL REFERENCES accommodation ON DELETE CASCADE ON UPDATE CASCADE,
     trip_id      				INTEGER NOT NULL REFERENCES trip ON DELETE CASCADE ON UPDATE CASCADE,
     PRIMARY KEY (accommodation_id, trip_id)); -- N:M relationship means both keys are needed
