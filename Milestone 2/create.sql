CREATE TABLE trip 
    (id             SERIAL PRIMARY KEY NOT NULL, --autoinkrementierende Nummer
     name           VARCHAR(60) NOT NULL,
     start_date     DATE NOT NULL,  --Format: YYYY-MM-DD
     end_date       DATE NOT NULL,
     description    VARCHAR(1024),  --Der String ist hier maximal 1024 Zeichen lang
     price          DECIMAL(10,2) DEFAULT 0.00,
     CHECK (end_date >= start_date)); --Format: DECIMAL(size, d) mit size = Ziffern, d = Kommastellen.
                                                   --Standardmässig wird für Geldbeträge DECIMAL(19,4) eingesetzt
CREATE TABLE client
    (id             SERIAL PRIMARY KEY NOT NULL,
     surname        VARCHAR(30) NOT NULL,
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
     phone          VARCHAR(20) NOT NULL
     seniority      INTEGER DEFAULT 0
     works_at       INTEGER NOT NULL,
     FOREIGN KEY(works_at) REFERENCES office(id));   --length of service in years

CREATE TABLE office 
    (id             SERIAL PRIMARY KEY NOT NULL,
     name           VARCHAR(30) NOT NULL,
     address        VARCHAR(60),
     postcode       INTEGER,
     city           VARCHAR(60),
     email          VARCHAR(60),
     phone          VARCHAR(20) NOT NULL);

CREATE TABLE payment 
    (id             SERIAL PRIMARY KEY NOT NULL,
     amount         DECIMAL(10,2),
     payment_date   DATE,
     payment_method CHAR(11) CHECK (payment_method in ('credit card', 'cash', 'paypal', 'transfer')));

CREATE TABLE activity 
    (id             SERIAL PRIMARY KEY NOT NULL,
     name           VARCHAR(30) NOT NULL,
     description    VARCHAR(1024),
     type           VARCHAR(30),
     contact        VARCHAR(30)); --Für dieses Feld war mir nicht klar, welcher Datentyp Sinn macht

CREATE TABLE transport 
    (id             SERIAL PRIMARY KEY NOT NULL,
     start          VARCHAR(30),
     destination    VARCHAR(30),
     type           VARCHAR(30),
     transport_date DATE);

CREATE TABLE accomodation 
    (id             SERIAL PRIMARY KEY NOT NULL,
     city           VARCHAR(30),
     country        VARCHAR(30),
     address        VARCHAR(60),
     begin_date     DATE,
     overn_stays    INTEGER,
     type           VARCHAR(30));

CREATE TABLE buys 
    (client_id      INTEGER NOT NULL REFERENCES client ON DELETE CASCADE,
     trip_id        INTEGER NOT NULL REFERENCES trip ON DELETE CASCADE,
     buy_date       DATE,
     PRIMARY KEY    (trip_id));

CREATE TABLE sells 
    (employee_id    INTEGER NOT NULL REFERENCES employee ON DELETE CASCADE,
     trip_id        INTEGER NOT NULL REFERENCES trip ON DELETE CASCADE,
     sell_date      DATE,
     PRIMARY KEY    (trip_id));

CREATE TABLE works_at 
    (employee_id    INTEGER NOT NULL REFERENCES employee ON DELETE CASCADE,
     office_id      INTEGER NOT NULL REFERENCES office ON DELETE CASCADE,
     PRIMARY KEY    (employee_id));

CREATE TABLE has_payment 
    (payment_id     INTEGER NOT NULL REFERENCES payment ON DELETE CASCADE,
     trip_id        INTEGER NOT NULL REFERENCES trip ON DELETE CASCADE,
     PRIMARY KEY    (trip_id));

CREATE TABLE has_activity 
    (activity_id  INTEGER NOT NULL REFERENCES activity ON DELETE CASCADE,
     trip_id      INTEGER NOT NULL REFERENCES trip ON DELETE CASCADE,
     PRIMARY KEY    (trip_id));

CREATE TABLE has_transport
    (transport_id  INTEGER NOT NULL REFERENCES transport ON DELETE CASCADE,
     trip_id      INTEGER NOT NULL REFERENCES trip ON DELETE CASCADE,
     PRIMARY KEY    (trip_id));

Create TABLE has_accomodation
    (acc_id INTEGER NOT NULL REFERENCES accomodation ON DELETE CASCADE,
     trip_id      INTEGER NOT NULL REFERENCES trip ON DELETE CASCADE,
     PRIMARY KEY    (trip_id));
