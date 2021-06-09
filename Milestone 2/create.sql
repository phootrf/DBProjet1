CREATE TABLE office 
    (id             SERIAL PRIMARY KEY NOT NULL,
     name           VARCHAR(30) NOT NULL,
     address        VARCHAR(60),
     postcode       INTEGER,
     city           VARCHAR(60),
     email          VARCHAR(60),
     phone          VARCHAR(20) NOT NULL);
     
 CREATE TABLE employee 
    (id             SERIAL PRIMARY KEY NOT NULL,
     surname        VARCHAR(30) NOT NULL,
     name           VARCHAR(30) NOT NULL,
     email          VARCHAR(60),
     phone          VARCHAR(20) NOT NULL,
     seniority      INTEGER DEFAULT 0,
     works_at       INTEGER NOT NULL,
     FOREIGN KEY(works_at) REFERENCES office(id));   --length of service in years

CREATE TABLE client
    (id             SERIAL PRIMARY KEY NOT NULL,
     surname        VARCHAR(30) NOT NULL,
     name           VARCHAR(30) NOT NULL,
     address        VARCHAR(60),
     postcode       INTEGER,
     city           VARCHAR(60),
     email          VARCHAR(60),
     phone          VARCHAR(20) NOT NULL);

CREATE TABLE trip 
    (id                             SERIAL PRIMARY KEY NOT NULL,        --autoinkrementierende Nummer
     name                           VARCHAR(60) NOT NULL,
     start_date                     DATE NOT NULL,                      --Format: YYYY-MM-DD
     end_date                       DATE NOT NULL,
     description                    VARCHAR(1024),  --Der String ist hier maximal 1024 Zeichen lang
     price                          DECIMAL(10,2) DEFAULT 0.00,
     bought_by                      INTEGER NOT NULL,
     sold_by                        INTEGER NOT NULL,
     transaction_date               DATE NOT NULL,
     FOREIGN KEY(bought_by)         REFERENCES client(id),
     FOREIGN KEY(sold_by)           REFERENCES employee(id),
     CHECK (end_date >= start_date)); --Format: DECIMAL(size, d) mit size = Ziffern, d = Kommastellen.
                                                   --Standardmässig wird für Geldbeträge DECIMAL(19,4) eingesetzt

CREATE TABLE payment 
    (id             SERIAL PRIMARY KEY NOT NULL,
     amount         DECIMAL(10,2) NOT NULL,
     date           DATE NOT NULL,
     method         VARCHAR(15) CHECK (method IN ('credit card', 'cash', 'paypal', 'transfer', 'other')),
     trip_id        INTEGER NOT NULL,
     FOREIGN KEY(trip_id) REFERENCES trip(id));

CREATE TABLE activity 
    (id             SERIAL PRIMARY KEY NOT NULL,
     name           VARCHAR(30) NOT NULL,
     description    VARCHAR(1024),
     type           VARCHAR(30),
     city           VARCHAR(30),
     country        VARCHAR(30),
     date           DATE NOT NULL); 

CREATE TABLE transport 
    (id             SERIAL PRIMARY KEY NOT NULL,
     start          VARCHAR(30) NOT NULL,
     destination    VARCHAR(30) NOT NULL,
     type           VARCHAR(30),
     date           DATE NOT NULL);

CREATE TABLE accommodation 
    (id             SERIAL PRIMARY KEY NOT NULL,
     city           VARCHAR(30) NOT NULL,
     country        VARCHAR(30) NOT NULL,
     address        VARCHAR(60) NOT NULL,
     name           VARCHAR(60) NOT NULL,
     begin_date     DATE NOT NULL,
     duration       INTEGER CHECK (duration > 0),
     type           VARCHAR(15) CHECK (type IN ('hotel', 'hostel', 'b&b', 'holiday home', 'other')));

CREATE TABLE has_activity 
    (activity_id  INTEGER NOT NULL REFERENCES activity ON DELETE CASCADE,
     trip_id      INTEGER NOT NULL REFERENCES trip ON DELETE CASCADE,
     PRIMARY KEY    (activity_id, trip_id));

CREATE TABLE has_transport
    (transport_id  INTEGER NOT NULL REFERENCES transport ON DELETE CASCADE,
     trip_id      INTEGER NOT NULL REFERENCES trip ON DELETE CASCADE,
     PRIMARY KEY    (transport_id, trip_id));

Create TABLE has_accommodation
    (accommodation_id INTEGER NOT NULL REFERENCES accomodation ON DELETE CASCADE,
     trip_id      INTEGER NOT NULL REFERENCES trip ON DELETE CASCADE,
     PRIMARY KEY    (accommodation_id, trip_id));
