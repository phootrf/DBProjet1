CREATE TABLE employee (
  id serial PRIMARY KEY NOT NULL,
  surname varchar(20) NOT NULL,
  name varchar(23) NOT NULL,
  email varchar(100) NOT NULL,
  phone varchar(25) NOT NULL, 
  length_of_service integer NOT NULL,
  works_for integer NOT NULL,
  foreign key (works_for) references office(id)
);


insert into employee values (default,	'Karolin'	,'Herrmann'		,'KarolinHerrmann@armyspy.com'	,'032 327 90 34',	24, 1);	
insert into employee values (default,	'Gaetane'	,'Coudert'		,'GaetaneCoudert@einrot.com'  	,'091 828 11 18',	13, 1);
insert into employee values (default,	'Roux'		,'Perreault'	,'RouxPerreault@gustr.com'	  	,'052 396 77 60',	1, 2);	
insert into employee values (default,	'Jennifer'	,'Burger'		,'JenniferBurger@rhyta.com'	  	,'062 824 46 82',	3, 2);	
insert into employee values (default,	'Henriette'	,'Busson'		,'HenrietteBusson@einrot.com' 	,'021 963 54 28',	7, 2);	
insert into employee values (default,	'Karin'		,'Kluge'		,'KarinKluge@dayrep.com'	  	,'041 398 67 85',	9, 3);	
insert into employee values (default,	'Mario'		,'Jaeger'		,'MarioJaeger@superrito.com'  	,'021 648 15 70',	9, 3);	
insert into employee values (default,	'Kathrin'	,'Hahn'			,'KathrinHahn@fleckens.hu'    	,'032 444 40 22',	10, 3);	
insert into employee values (default,	'Diana'		,'Bürger'		,'DianaBurger@armyspy.com'		,'041 607 86 71',	20, 3);	
insert into employee values (default,	'Ute'		,'Gaertner'		,'UteGaertner@cuvox.de'			,'041 369 78 51',	4, 3);	
insert into employee values (default,	'Sandra'	,'Dresner'		,'SandraDresner@einrot.com'		,'041 819 32 93',	14, 3);	
insert into employee values (default,	'Marie'		,'Seiler'		,'MarieSeiler@armyspy.com'		,'061 399 22 87',	8, 4);	
insert into employee values (default,	'Isaac'		,'Simard'		,'IsaacSimard@rhyta.com'		,'026 255 88 95',	6, 4);	
insert into employee values (default,	'Sabine'	,'Douffet'		,'SabineDouffet@einrot.com'		,'056 758 14 34',	22, 4);	
insert into employee values (default,	'Honore'	,'Blais'		,'HonoreBlais@einrot.com'		,'026 448 29 48',	11, 4);	
insert into employee values (default,	'Raison'	,'Chassé'		,'RaisonChasse@gustr.com'		,'081 892 78 82',	5, 4);	
insert into employee values (default,	'Gaetan'	,'Berthelet'	,'GaetanBerthelet@gustr.com'	,'044 788 92 35',	10, 4);	
insert into employee values (default,	'Ute'		,'Rothschild'	,'UteRothschild@einrot.com'		,'027 528 55 15',	8, 4);	
insert into employee values (default,	'Lucas'		,'Nussbaum'		,'LucasNussbaum@teleworm.us'	,'027 702 87 84',	5, 5);	
insert into employee values (default,	'Doreen'	,'Neumann'		,'DoreenNeumann@einrot.com'		,'091 401 77 77',	25, 5);	
insert into employee values (default,	'Eustache'	,'Labosse'		,'EustacheLabosse@rhyta.com'	,'062 568 40 15',	14, 5);	
insert into employee values (default,	'Martin'	,'Busch'		,'MartinBusch@dayrep.com'		,'021 283 14 57',	23, 5);	
insert into employee values (default,	'Noël'		,'Bizier'		,'NoelBizier@rhyta.com'			,'091 635 20 67',	14, 5);	
insert into employee values (default,	'Auguste'	,'Landry'		,'AugusteLandry@rhyta.com'	 	,'027 346 29 88',	10, 5);	
insert into employee values (default,	'Tim'		,'Schulze'		,'TimSchulze@gustr.com'			,'027 941 75 85',	10, 5);	
insert into employee values (default,	'Marco'		,'Schwab'		,'MarcoSchwab@fleckens.hu'		,'041 453 87 60',	5, 5);	
insert into employee values (default,	'Antje'		,'Kaestner'		,'AntjeKaestner@dayrep.com'		,'027 955 19 65',	13, 6);	
insert into employee values (default,	'Lukas'		,'Vogler'		,'LukasVogler@dayrep.com'		,'071 551 48 43',	10, 6);	
insert into employee values (default,	'Delphine'	,'Gadbois'		,'DelphineGadbois@fleckens.hu'  ,'026 688 94 55',	20, 6);	
insert into employee values (default,	'Orville'	,'Gadbois'		,'OrvilleGadbois@gustr.com'		,'091 633 90 55',	5, 6);	
insert into employee values (default,	'Tanja'		,'Brandt'		,'TanjaBrandt@rhyta.com'		,'061 487 44 48',	4, 6);	



