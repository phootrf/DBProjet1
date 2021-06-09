DROP TABLE office;

CREATE TABLE office 
    (id      		SERIAL PRIMARY KEY NOT NULL,
     name           VARCHAR(30) NOT NULL,
     address        VARCHAR(60),
     postcode       INTEGER,
     city           VARCHAR(60),
     email          VARCHAR(60),
     phone		    VARCHAR(15));
	 
insert into office values(default, 'Travel Agency Geneva', 'Rte du lac 1', 1211, 'Genève', 'geneva@travelagency.ch', '031 456 45 78');
insert into office values(default, 'Travel Agency Bern', 'Neuengasse 1', 3001, 'Bern', 'bern@travelagency.ch', '031 456 45 78');
insert into office values(default, 'Travel Agency Zürich', 'Färbergasse 1', 8001, 'Zürich', 'zurich@travelagency.ch', '031 456 45 78');
insert into office values(default, 'Travel Agency Basel', 'Falknerstrasse 41', 4001, 'Basel', 'basel@travelagency.ch', '031 456 45 78');
insert into office values(default, 'Travel Agency Luzern', 'Frohburgstrasse 1', 6002, 'Luzern', 'luzern@travelagency.ch', '031 456 45 78');
insert into office values(default, 'Travel Agency Lugano', 'Via San Gottardo 1', 6900, 'Lugano', 'lugano@travelagency.ch', '031 456 45 78');
