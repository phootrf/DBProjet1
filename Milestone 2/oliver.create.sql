-- CREATE RELATIONS FOR ENTITIES

CREATE TABLE office 
    (id             			SERIAL PRIMARY KEY NOT NULL,-- auto-incrementing number in PostgreSQL (same id should not be used twice)
     name           			VARCHAR(30) NOT NULL,
     address        			VARCHAR(60) NOT NULL,
     postcode       			INTEGER NOT NULL,
     city           			VARCHAR(60) NOT NULL,
     email          			VARCHAR(60),                -- email is not essential
     phone          			VARCHAR(20) NOT NULL        -- phone number is essential
     );

 CREATE TABLE employee 
    (id             			SERIAL PRIMARY KEY NOT NULL,
     surname        			VARCHAR(30) NOT NULL,
     name           			VARCHAR(30) NOT NULL,
     email          			VARCHAR(60),                -- email is not essential
     phone          			VARCHAR(20) NOT NULL,       -- phone number is essential
     seniority      			INTEGER DEFAULT 0,          -- length of service in years
     works_at       			INTEGER,                    -- foreign key, is set to null if corresponding key is deleted -> cannot use NOT NULL
     active                     BOOLEAN DEFAULT true,       -- is employee active, or retired/fired                   
     FOREIGN KEY (works_at)		REFERENCES office(id) ON DELETE SET NULL ON UPDATE CASCADE);
/*
If the key (i.e. ID) of an office is updated, we want the corresponding foreign key in employee to be updated as well.
If an office is closed (i.e. key is deleted), the employees working at this office are not automatically fired.
They might still be working for the travel agency (maybe in a different office). Hence, we set the corresponding 
primary key in employee to null.
*/

CREATE TABLE client
    (id             			SERIAL PRIMARY KEY NOT NULL,
     surname        			VARCHAR(30) NOT NULL,
     name           			VARCHAR(30) NOT NULL,
     address        			VARCHAR(60) NOT NULL,
     postcode       			INTEGER NOT NULL,           -- INTEGER works as postcode does not start with 0
     city           			VARCHAR(60) NOT NULL,
     email          			VARCHAR(60),                -- email is not essential
     phone          			VARCHAR(20) NOT NULL        -- phone number is essential
    );

CREATE TABLE trip 
    (id						    SERIAL PRIMARY KEY NOT NULL,
     name					    VARCHAR(60) NOT NULL,
     start_date					DATE NOT NULL,              -- format: yyyy-mm-dd
     end_date					DATE NOT NULL,
     description				VARCHAR(1024),
     price					    DECIMAL(10,2) DEFAULT 0.00, -- format: decimal(size, d) with size = digits, d = decimal points
     bought_by					INTEGER NOT NULL,
     sold_by					INTEGER NOT NULL,
     transaction_date			DATE NOT NULL,              -- date at which trip was bought/sold
     FOREIGN KEY (bought_by)	REFERENCES client(id),      -- we don't want a client to be deleted/updated. So there is no delete/update clause here.
                                                            -- so we can have a client history. 
     FOREIGN KEY (sold_by)		REFERENCES employee(id),    -- same argument as for client. We want an employee history. 
     CHECK (end_date >= start_date)
     );

CREATE TABLE payment 
    (id             			SERIAL PRIMARY KEY NOT NULL,
     amount         			DECIMAL(10,2) NOT NULL,
     date           			DATE NOT NULL,
     method         			VARCHAR(15),
     trip_id        			INTEGER NOT NULL,
     FOREIGN KEY (trip_id)		REFERENCES trip(id),
     CHECK (method IN ('credit card', 'cash', 'paypal', 'transfer', 'other'))
     );

CREATE TABLE activity 
    (id             			SERIAL PRIMARY KEY NOT NULL,
     name           			VARCHAR(30) NOT NULL,
     description    			VARCHAR(1024),
     type           			VARCHAR(30),
     city           			VARCHAR(30) NOT NULL,
     country        			VARCHAR(30) NOT NULL,
     CHECK (type IN ('food', 'sightseeing', 'sport', 'culture', 'other'))
     );

CREATE TABLE transport 
    (id             			SERIAL PRIMARY KEY NOT NULL,
     start          			VARCHAR(30) NOT NULL,
     destination    			VARCHAR(30) NOT NULL,
     type           			VARCHAR(30),
     CHECK (type IN ('plane', 'train', 'bus', 'other'))
     );

CREATE TABLE accommodation 
    (id             			SERIAL PRIMARY KEY NOT NULL,
     city           			VARCHAR(30) NOT NULL,
     country        			VARCHAR(30) NOT NULL,
     address        			VARCHAR(60) NOT NULL,
     name           			VARCHAR(60) NOT NULL,
     type           			VARCHAR(15),
     CHECK (type IN ('hotel', 'hostel', 'b&b', 'holiday home', 'other'))
     );

-- CREATE RELATIONS FOR RELATIONSHIPS

/*
All 1:N relationships in the ER model can be dropped and replaced with a foreign key
in the N-side entity (see foreign keys above). Thus, only the N:M relationships remain.
*/

CREATE TABLE has_activity
    (trip_id      				INTEGER NOT NULL REFERENCES trip ON DELETE CASCADE ON UPDATE CASCADE,
     --If a an activity/trip is deleted, the corresponding tuple in has_activity is obsolete and can be deleted as well.
     activity_id  				INTEGER NOT NULL REFERENCES activity ON UPDATE CASCADE,              
     --since we want an activity history, we do not allow deleting.
     date           			DATE NOT NULL, 
     PRIMARY KEY (trip_id, activity_id)     -- N:M relationship means both keys are needed
     ); 

CREATE TABLE has_transport
    (trip_id      				INTEGER NOT NULL REFERENCES trip ON DELETE CASCADE ON UPDATE CASCADE,
    --same argument as has_activity see above.
     transport_id  				INTEGER NOT NULL REFERENCES transport ON UPDATE CASCADE,
    --same argument as has_activity see above.
     date           			DATE NOT NULL, 
    PRIMARY KEY (trip_id, transport_id)                -- N:M relationship means both keys are needed
     ); 

Create TABLE has_accommodation
    (trip_id      				INTEGER NOT NULL REFERENCES trip ON DELETE CASCADE ON UPDATE CASCADE,
     --same argument as has_activity see above.
     accommodation_id 			INTEGER NOT NULL REFERENCES accommodation ON UPDATE CASCADE,
     --same argument as has_activity see above.
     date           			DATE NOT NULL, 
     duration       			INTEGER,                -- duration of stay (number of nights)
     PRIMARY KEY (trip_id, accommodation_id),           -- N:M relationship means both keys are needed
     CHECK (duration > 0)
     );          
