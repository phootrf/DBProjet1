-- office (id, name, address, postcode, city, email, phone)
INSERT INTO office VALUES(DEFAULT, 'Travel Agency Geneva', 'Rte du lac 1', 1211, 'Genève', 'geneva@travelagency.ch', '032 327 90 34');
INSERT INTO office VALUES(DEFAULT, 'Travel Agency Bern', 'Neuengasse 1', 3001, 'Bern', 'bern@travelagency.ch', '052 396 77 60');
INSERT INTO office VALUES(DEFAULT, 'Travel Agency Zürich', 'Färbergasse 1', 8001, 'Zürich', 'zurich@travelagency.ch', '032 444 40 22');
INSERT INTO office VALUES(DEFAULT, 'Travel Agency Basel', 'Falknerstrasse 41', 4001, 'Basel', 'basel@travelagency.ch', '026 255 88 95');
INSERT INTO office VALUES(DEFAULT, 'Travel Agency Luzern', 'Frohburgstrasse 1', 6002, 'Luzern', 'luzern@travelagency.ch', '091 401 77 77');
INSERT INTO office VALUES(DEFAULT, 'Travel Agency Lugano', 'Via San Gottardo 1', 6900, 'Lugano', 'lugano@travelagency.ch', '026 688 94 55');

-- employee (id, surname, name, email, phone, seniority, works_at, active)
-- generated with https://fr.fakenamegenerator.com/order.php
INSERT INTO employee VALUES (DEFAULT,	'Karolin'	,'Herrmann'		,'KarolinHerrmann@armyspy.com'	,'032 327 90 34',	24, 1);	
INSERT INTO employee VALUES (DEFAULT,	'Gaetane'	,'Coudert'		,'GaetaneCoudert@einrot.com'  	,'091 828 11 18',	13, 1);
INSERT INTO employee VALUES (DEFAULT,	'Roux'		,'Perreault'	,'RouxPerreault@gustr.com'	  	,'052 396 77 60',	1, 2);	
INSERT INTO employee VALUES (DEFAULT,	'Jennifer'	,'Burger'		,'JenniferBurger@rhyta.com'	  	,'062 824 46 82',	3, 2);	
INSERT INTO employee VALUES (DEFAULT,	'Henriette'	,'Busson'		,'HenrietteBusson@einrot.com' 	,'021 963 54 28',	7, 2);	
INSERT INTO employee VALUES (DEFAULT,	'Karin'		,'Kluge'		,'KarinKluge@dayrep.com'	  	,'041 398 67 85',	9, 3);	
INSERT INTO employee VALUES (DEFAULT,	'Mario'		,'Jaeger'		,'MarioJaeger@superrito.com'  	,'021 648 15 70',	9, 3);	
INSERT INTO employee VALUES (DEFAULT,	'Kathrin'	,'Hahn'			,'KathrinHahn@fleckens.hu'    	,'032 444 40 22',	10, 3);	
INSERT INTO employee VALUES (DEFAULT,	'Diana'		,'Bürger'		,'DianaBurger@armyspy.com'		,'041 607 86 71',	20, 3);	
INSERT INTO employee VALUES (DEFAULT,	'Ute'		,'Gaertner'		,'UteGaertner@cuvox.de'			,'041 369 78 51',	4, 3);	
INSERT INTO employee VALUES (DEFAULT,	'Sandra'	,'Dresner'		,'SandraDresner@einrot.com'		,'041 819 32 93',	14, 3);	
INSERT INTO employee VALUES (DEFAULT,	'Marie'		,'Seiler'		,'MarieSeiler@armyspy.com'		,'061 399 22 87',	8, 4);	
INSERT INTO employee VALUES (DEFAULT,	'Isaac'		,'Simard'		,'IsaacSimard@rhyta.com'		,'026 255 88 95',	6, 4);	
INSERT INTO employee VALUES (DEFAULT,	'Sabine'	,'Douffet'		,'SabineDouffet@einrot.com'		,'056 758 14 34',	22, 4, false); --fired  	
INSERT INTO employee VALUES (DEFAULT,	'Honore'	,'Blais'		,'HonoreBlais@einrot.com'		,'026 448 29 48',	11, 4);	
INSERT INTO employee VALUES (DEFAULT,	'Raison'	,'Chassé'		,'RaisonChasse@gustr.com'		,'081 892 78 82',	5, 4);	
INSERT INTO employee VALUES (DEFAULT,	'Gaetan'	,'Berthelet'	,'GaetanBerthelet@gustr.com'	,'044 788 92 35',	10, 4);	
INSERT INTO employee VALUES (DEFAULT,	'Ute'		,'Rothschild'	,'UteRothschild@einrot.com'		,'027 528 55 15',	8, 4);	
INSERT INTO employee VALUES (DEFAULT,	'Lucas'		,'Nussbaum'		,'LucasNussbaum@teleworm.us'	,'027 702 87 84',	5, 5);	
INSERT INTO employee VALUES (DEFAULT,	'Doreen'	,'Neumann'		,'DoreenNeumann@einrot.com'		,'091 401 77 77',	25, 5, false); --retired	
INSERT INTO employee VALUES (DEFAULT,	'Eustache'	,'Labosse'		,'EustacheLabosse@rhyta.com'	,'062 568 40 15',	14, 5);	
INSERT INTO employee VALUES (DEFAULT,	'Martin'	,'Busch'		,'MartinBusch@dayrep.com'		,'021 283 14 57',	23, 5);	
INSERT INTO employee VALUES (DEFAULT,	'Noël'		,'Bizier'		,'NoelBizier@rhyta.com'			,'091 635 20 67',	14, 5);	
INSERT INTO employee VALUES (DEFAULT,	'Auguste'	,'Landry'		,'AugusteLandry@rhyta.com'	 	,'027 346 29 88',	10, 5);	
INSERT INTO employee VALUES (DEFAULT,	'Tim'		,'Schulze'		,'TimSchulze@gustr.com'			,'027 941 75 85',	10, 5);	
INSERT INTO employee VALUES (DEFAULT,	'Marco'		,'Schwab'		,'MarcoSchwab@fleckens.hu'		,'041 453 87 60',	5, 5);	
INSERT INTO employee VALUES (DEFAULT,	'Antje'		,'Kaestner'		,'AntjeKaestner@dayrep.com'		,'027 955 19 65',	13, 6);	
INSERT INTO employee VALUES (DEFAULT,	'Lukas'		,'Vogler'		,'LukasVogler@dayrep.com'		,'071 551 48 43',	10, 6);	
INSERT INTO employee VALUES (DEFAULT,	'Delphine'	,'Gadbois'		,'DelphineGadbois@fleckens.hu'  ,'026 688 94 55',	20, 6, false);	
INSERT INTO employee VALUES (DEFAULT,	'Orville'	,'Gadbois'		,'OrvilleGadbois@gustr.com'		,'091 633 90 55',	5, 6);	
INSERT INTO employee VALUES (DEFAULT,	'Tanja'		,'Brandt'		,'TanjaBrandt@rhyta.com'		,'061 487 44 48',	4, 6);

-- client (id, surname, name, address, postcode, city, email, phone)
-- generated with https://fr.fakenamegenerator.com/order.php
INSERT INTO client VALUES(DEFAULT,'Karin','Hartmann','Landstrasse 133',8207,'Schaffhausen','KarinHartmann@gustr.com','044 286 68 44');
INSERT INTO client VALUES(DEFAULT,'Claude','Dennis','Herrenberg 131',1663,'Pringy','ClaudeDennis@fleckens.hu','026 297 20 94');
INSERT INTO client VALUES(DEFAULT,'Noël','Boivin','Caltgadira 79',6883,'Novazzano','NoelBoivin@teleworm.us','091 221 63 20');
INSERT INTO client VALUES(DEFAULT,'Brigliador','Despins','Damunt 36',4924,'Obersteckholz','BrigliadorDespins@superrito.com','062 390 70 30');
INSERT INTO client VALUES(DEFAULT,'Timothée','Landry','Zürichstrasse 44',5402,'Baden','TimotheeLandry@gustr.com','056 456 61 91');
INSERT INTO client VALUES(DEFAULT,'Pansy','Croteau','Auerstrasse 98',8708,'Männedorf','PansyCroteau@teleworm.us','044 383 23 39');
INSERT INTO client VALUES(DEFAULT,'Karin','Thalberg','Bösch 69',1053,'Cugy','KarinThalberg@jourrapide.com','021 963 98 38');
INSERT INTO client VALUES(DEFAULT,'Alexander','Gottschalk','Via Vigizzi 68',5625,'Unterniesenberg','AlexanderGottschalk@dayrep.com','062 557 30 93');
INSERT INTO client VALUES(DEFAULT,'Matthias','Schröder','Lichtmattstrasse 121',6018,'Buttisholz','MatthiasSchroder@dayrep.com','041 398 13 95');
INSERT INTO client VALUES(DEFAULT,'Bertrand','Laisné','Herrenberg 15',3271,'Radelfingen','BertrandLaisne@armyspy.com','032 329 58 56');
INSERT INTO client VALUES(DEFAULT,'Aleron','Laboissonnière','Mühle 79',4325,'Schupfart','AleronLaboissonniere@fleckens.hu','049 407 36 28');
INSERT INTO client VALUES(DEFAULT,'Jessica','Hartmann','Erlenweg 66',3015,'Bern','JessicaHartmann@fleckens.hu','031 806 12 99');
INSERT INTO client VALUES(DEFAULT,'Hélène','Charette','Kopfhölzistrasse 115',8637,'Laupen','HeleneCharette@armyspy.com','052 346 76 78');
INSERT INTO client VALUES(DEFAULT,'Gay','Marseau','Via Albarelle 78',6312,'Steinhausen','GayMarseau@dayrep.com','041 250 78 12');
INSERT INTO client VALUES(DEFAULT,'Yvonne','Reiniger','Avenue d''Ouchy 51',6742,'Pollegio','YvonneReiniger@gustr.com','091 888 12 29');
INSERT INTO client VALUES(DEFAULT,'Michael','Freud','Seefeldstrasse 88',6064,'Kerns','MichaelFreud@dayrep.com','041 726 25 78');
INSERT INTO client VALUES(DEFAULT,'Petra','Meyer','Gerbiweg 121',6343,'Buonas','PetraMeyer@superrito.com','041 654 11 18');
INSERT INTO client VALUES(DEFAULT,'Ormazd','Savard','Postfach 67',7710,'Alp Grüm','OrmazdSavard@superrito.com','081 422 15 82');
INSERT INTO client VALUES(DEFAULT,'Catherine','L''Anglais','Möhe 98',3822,'Isenfluh','CatherineLAnglais@fleckens.hu','033 985 12 47');
INSERT INTO client VALUES(DEFAULT,'Lucas','Allard','Schuepisstrasse 98',4571,'Ichertswil','LucasAllard@cuvox.de','032 728 90 82');
INSERT INTO client VALUES(DEFAULT,'Lisa','Abend','Herrenberg 59',1009,'Pully','LisaAbend@teleworm.us','021 656 39 20');
INSERT INTO client VALUES(DEFAULT,'Roland','D''Aubigné','Üerklisweg 59',3237,'Brüttelen','RolandDAubigne@cuvox.de','032 686 17 27');
INSERT INTO client VALUES(DEFAULT,'Juliane','Kortig','Via Albarelle 93',3114,'Stockeren','JulianeKortig@armyspy.com','031 916 93 78');
INSERT INTO client VALUES(DEFAULT,'Romain','Tremblay','Brunnacherstrasse 99',5330,'Zurzach','RomainTremblay@jourrapide.com','062 598 71 51');
INSERT INTO client VALUES(DEFAULT,'Édouard','Sciverit','Avenue d''Ouchy 122',6742,'Pollegio','EdouardSciverit@armyspy.com','091 597 46 54');
INSERT INTO client VALUES(DEFAULT,'Guy','Lépicier','Landstrasse 7',7202,'Says','GuyLepicier@dayrep.com','081 442 75 68');
INSERT INTO client VALUES(DEFAULT,'Honore','Rossignol','Clius 36',5073,'Oberfrick','HonoreRossignol@gustr.com','062 928 31 23');
INSERT INTO client VALUES(DEFAULT,'Heike','Freud','Casut 125',4254,'Liesberg','HeikeFreud@rhyta.com','061 268 15 66');
INSERT INTO client VALUES(DEFAULT,'Dominique','Pellerin','Kappelergasse 147',8914,'Aeugst am Albis','DominiquePellerin@fleckens.hu','044 496 88 47');
INSERT INTO client VALUES(DEFAULT,'Heike','Hoch','Via Camischolas sura 21',1410,'Denezy','HeikeHoch@einrot.com','024 778 18 13');
INSERT INTO client VALUES(DEFAULT,'Dieter','Braun','Bahnhofstrasse 113',1124,'Gollion','DieterBraun@einrot.com','021 396 22 71');
INSERT INTO client VALUES(DEFAULT,'Burkett','Coupart','Casut 8',4253,'Liesberg','BurkettCoupart@armyspy.com','061 775 37 43');
INSERT INTO client VALUES(DEFAULT,'Jonas','Decker','Brunnenstrasse 98',6017,'Rüediswil','JonasDecker@dayrep.com','041 636 52 44');
INSERT INTO client VALUES(DEFAULT,'Yvette','Benjamin','Untere Aegerten 91',6594,'Contone','YvetteBenjamin@dayrep.com','091 502 67 62');
INSERT INTO client VALUES(DEFAULT,'Searlait','Lépicier','Rasenstrasse 105',3172,'Herzwil','SearlaitLepicier@rhyta.com','031 515 36 30');
INSERT INTO client VALUES(DEFAULT,'Sylvie','Jobin','Pfaffacherweg 104',5044,'Schlossrued','SylvieJobin@gustr.com','062 468 53 96');
INSERT INTO client VALUES(DEFAULT,'Jonas','Maurer','Kopfhölzistrasse 67',1014,'Lausanne','JonasMaurer@gustr.com','021 643 33 70');
INSERT INTO client VALUES(DEFAULT,'Jan','Gersten','Rägetenstrasse 73',3949,'Hohtenn','JanGersten@dayrep.com','027 968 98 28');
INSERT INTO client VALUES(DEFAULT,'Magnolia','Bordeleau','Via Gabbietta 95',1358,'Valeyres-sous-Rances','MagnoliaBordeleau@armyspy.com','021 281 15 21');
INSERT INTO client VALUES(DEFAULT,'Belle','Jetté','Bergrain 93',1473,'Châtillon','BelleJette@armyspy.com','024 734 50 51');
INSERT INTO client VALUES(DEFAULT,'Anna','Gloeckner','Lichtmattstrasse 80',4917,'Busswil bei Melchnau','AnnaGloeckner@armyspy.com','062 301 58 99');
INSERT INTO client VALUES(DEFAULT,'Angelika','Gärtner','Semperweg 85',8307,'Bisikon','AngelikaGartner@armyspy.com','044 652 51 48');
INSERT INTO client VALUES(DEFAULT,'Lena','Baumgartner','Brunnenstrasse 51',1554,'Rossens','LenaBaumgartner@superrito.com','021 318 12 99');
INSERT INTO client VALUES(DEFAULT,'Lukas','König','Lützelflühstrasse 142',5058,'Wiliberg','LukasKonig@jourrapide.com','062 991 45 97');
INSERT INTO client VALUES(DEFAULT,'Bernadette','Simard','Untere Aegerten 7',1647,'Corbières','BernadetteSimard@einrot.com','026 919 31 33');
INSERT INTO client VALUES(DEFAULT,'Mike','Weiss','Bergrain 130',1148,'Chavannes-le-Veyron','MikeWeiss@gustr.com','021 241 30 85');
INSERT INTO client VALUES(DEFAULT,'Christine','Kuefer','Sonnenbergstr 42',4917,'Breitacher','ChristineKuefer@teleworm.us','062 298 83 43');
INSERT INTO client VALUES(DEFAULT,'Nadine','Gruenewald','Möhe 58',1914,'Isérables','NadineGruenewald@jourrapide.com','027 425 68 81');
INSERT INTO client VALUES(DEFAULT,'Yolande','Echeverri','Via Luzzas 43',1724,'Ferpicloz','YolandeEcheverri@dayrep.com','026 543 41 45');
INSERT INTO client VALUES(DEFAULT,'Swen','Luft','Untere Bahnhofstrasse 56',7187,'Camischolas','SwenLuft@gustr.com','081 566 21 64');
INSERT INTO client VALUES(DEFAULT,'Tim','Lang','Glennerstrasse 33',6232,'Geuensee','TimLang@fleckens.hu','041 668 57 94');
INSERT INTO client VALUES(DEFAULT,'Ray','Sabourin','Untere Aegerten 84',1937,'Commeire','RaySabourin@armyspy.com','027 638 28 24');
INSERT INTO client VALUES(DEFAULT,'Georges','Beaupré','Lichtmattstrasse 101',8863,'Buttikon','GeorgesBeaupre@dayrep.com','055 857 89 62');
INSERT INTO client VALUES(DEFAULT,'Philipp','Schröder','Casa Gielgia 116',5524,'Nesselnbach','PhilippSchroder@cuvox.de','056 207 85 33');
INSERT INTO client VALUES(DEFAULT,'Guy','Senneville','Boldistrasse 130',8500,'Neuhusen','GuySenneville@dayrep.com','052 234 91 31');
INSERT INTO client VALUES(DEFAULT,'Peter','Müller','Via Vigizzi 121',8634,'Uetzikon','PeterMuller@armyspy.com','052 965 12 41');
INSERT INTO client VALUES(DEFAULT,'Vaden','Simon','Schuetzenweg 15',8706,'Meilen','VadenSimon@gustr.com','044 435 99 47');
INSERT INTO client VALUES(DEFAULT,'Chapin','Gadbois','Vallerstrasse 76',6684,'Piano','ChapinGadbois@cuvox.de','091 807 31 51');
INSERT INTO client VALUES(DEFAULT,'Jesper','Clavet','Herrenberg 142',1618,'Prayoud','JesperClavet@cuvox.de','026 310 54 52');
INSERT INTO client VALUES(DEFAULT,'Pansy','Sansouci','Untere Aegerten 142',1535,'Combremont-le-Grand','PansySansouci@armyspy.com','021 535 49 49');
INSERT INTO client VALUES(DEFAULT,'Lukas','Kuester','Caltgadira 23',1845,'Noville','LukasKuester@jourrapide.com','024 587 31 88');
INSERT INTO client VALUES(DEFAULT,'Benjamin','Fenstermacher','Mittlerer Thalackerweg 22',3153,'Rüschegg-Graben','BenjaminFenstermacher@teleworm.us','031 269 36 59');
INSERT INTO client VALUES(DEFAULT,'Roger','Bélanger','Kappelergasse 10',7250,'Aeuja','RogerBelanger@gustr.com','081 605 90 19');
INSERT INTO client VALUES(DEFAULT,'Leala','Plouffe','Piazza Indipendenza 70',1436,'Treycovagnes','LealaPlouffe@gustr.com','024 961 81 77');
INSERT INTO client VALUES(DEFAULT,'Gauthier','Lafrenière','Möhe 149',3953,'Inden','GauthierLafreniere@fleckens.hu','027 561 45 22');
INSERT INTO client VALUES(DEFAULT,'Eustache','Patry','Mülhauserstrasse 123',4583,'Mühledorf','EustachePatry@superrito.com','032 612 85 58');
INSERT INTO client VALUES(DEFAULT,'Luce','Savard','Kappelergasse 9',7180,'Acletta','LuceSavard@jourrapide.com','081 549 99 17');
INSERT INTO client VALUES(DEFAULT,'Marco','König','Kammelenbergstrasse 108',7018,'Flims Waldhaus','MarcoKonig@armyspy.com','081 227 80 50');
INSERT INTO client VALUES(DEFAULT,'Capucine','Paulet','Lichtmattstrasse 35',8236,'Büttenhardt','CapucinePaulet@cuvox.de','044 260 97 53');

-- trip (id, name, start_date, end_date, description, price, bought_by, sold_by, transaction_date)
INSERT INTO trip VALUES(DEFAULT, 'Hartmann London-Paris Jan21', '2021-01-01', '2021-01-07', 'A week in London and Paris for Hartmann family', 2500, 1, 1, '2020-10-01');
INSERT INTO trip VALUES(DEFAULT, 'Dennis Venice Jul21', '2021-07-10', '2021-07-17', 'Venice and its attractions', 1500, 2, 2, '2021-04-10');
INSERT INTO trip VALUES(DEFAULT, 'Boivin Italy Aug21', '2021-08-01', '2021-08-15', 'Two week adventure in Italy', 3500, 3, 3, '2021-03-01');
INSERT INTO trip VALUES(DEFAULT, 'Travel to Rome Jul21', '2021-07-25', '2021-07-31', 'Visit Rome and all famous monuments', 1450, 23, 1, '2021-06-14' );
INSERT INTO trip VALUES(DEFAULT, 'City Trip Fribourg', '2021-07-03', '2021-07-7', 'A City Trip for Ms. Karin Hartmann', 856.85, 1, 1, '2021-06-14');
INSERT INTO trip VALUES(DEFAULT, 'Canada with Rockies', '2021-07-01', '2021-07-30', 'Canada West Coast Trip including Camper Rental for Mr. Brigliador Despins', 11556.00, 4, 7, '2021-06-01');
INSERT INTO trip VALUES(DEFAULT, 'City Trip Singapore via Dubai', '2021-07-03', '2021-07-7', 'A combined City Trip for Mr. Bertrand Laisné', 1654.35, 11, 3, '2020-11-12');
INSERT INTO trip VALUES(DEFAULT, 'Day Trip Luzern', '2021-09-09', '2021-09-9', 'A day City Trip for Mr. Thimotée Landry', 160.50, 5, 1, '2021-05-02');
INSERT INTO trip VALUES(DEFAULT, 'Three Weeks of Japan with Japan Rail Pass', '2021-09-04', '2021-09-26', 'Japan Trip including a Green Car Japan Rail Pass for Ms. Yvonne Reiniger', 6654.00, 15, 5, '2020-03-10');

-- payment (id, amount, date, method, trip_id)
INSERT INTO payment VALUES(DEFAULT, 2500, '2020-12-31','paypal' ,1);
INSERT INTO payment VALUES(DEFAULT, 1000, '2021-04-30','transfer' ,2);
INSERT INTO payment VALUES(DEFAULT, 500, '2021-03-30','cash' ,3);
INSERT INTO payment VALUES(DEFAULT, 3000, '2021-06-30','transfer' ,3);
INSERT INTO payment VALUES(DEFAULT, 450, '2021-06-30','transfer' ,4);
INSERT INTO payment VALUES(DEFAULT, 1000, '2021-07-15','transfer' ,4);

-- activity (id, name, description, type, city, country)
INSERT INTO activity VALUES(DEFAULT, 'Louvre', 'Louvre Museum Paris', 'culture', 'Paris', 'France' );
INSERT INTO activity VALUES(DEFAULT, 'Eifel Tower', 'Eifel Tower Paris', 'sightseeing', 'Paris', 'France');
INSERT INTO activity VALUES(DEFAULT, 'Chelsea football match', 'Premier League at Stamford Bridge', 'sport', 'London', 'UK');
INSERT INTO activity VALUES(DEFAULT, 'Bungee Jumping Milano', 'Bungee Jumping in the city center of Milano', 'sport', 'Milano', 'Italy' );
INSERT INTO activity VALUES(DEFAULT, 'Il Colosseo', 'Roman Colosseum Rome', 'culture', 'Roma', 'Italia' );
INSERT INTO activity VALUES(DEFAULT, 'Stadio Olimpico', 'football match', 'sport', 'Roma', 'Italia' );
INSERT INTO activity VALUES(DEFAULT, 'Città del Vaticano', 'touristic tour', 'culture', 'Roma', 'Italia');

-- has_activity (trip_id, activity_id, date)
INSERT INTO has_activity VALUES(1, 1, '2020-01-02');
INSERT INTO has_activity VALUES(1, 2, '2020-01-03');
INSERT INTO has_activity VALUES(1, 3, '2020-01-06');
INSERT INTO has_activity VALUES(3, 4, '2020-08-06');
INSERT INTO has_activity VALUES(4, 5, '2021-07-25');
INSERT INTO has_activity VALUES(4, 6, '2021-07-26');
INSERT INTO has_activity VALUES(4, 7, '2021-07-27');

-- transport (id, start, destination, type)
INSERT INTO transport VALUES(DEFAULT, 'Bern', 'Roma Termini', 'train');
INSERT INTO transport VALUES(DEFAULT, 'Roma Termini', 'Bern', 'train');
INSERT INTO transport VALUES(DEFAULT, 'Zürich', 'Venezia Sta Lucia', 'train');
INSERT INTO transport VALUES(DEFAULT, 'Venezia Sta Lucia', 'Zürich', 'train');

-- has_transport (trip_id, transport_id, date)
INSERT INTO has_transport VALUES(4, 1, '2021-07-25');
INSERT INTO has_transport VALUES(4, 2, '2021-07-31');
INSERT INTO has_transport VALUES(2, 3, '2021-07-10');
INSERT INTO has_transport VALUES(2, 4, '2021-07-17');

-- accommodation (ID, city, country, address, name, type)
INSERT INTO accommodation VALUES(DEFAULT, 'Roma', 'Italia', 'Piazza del Popolo', 'Il Grande Hotel', 'hotel');
INSERT INTO accommodation VALUES(DEFAULT, 'Venezia', 'Italia', 'Via Ortigara 10', 'Anda Venice Hostel', 'hostel');
INSERT INTO accommodation VALUES(DEFAULT, 'Paris', 'France', '108 Rue Saint-Lazare', 'Hilton Paris Opera', 'hotel');
INSERT INTO accommodation VALUES(DEFAULT, 'London', 'UK', '8-14 Coopers Row', 'Leonardo Royal London City', 'hotel');

-- has_accommodation(trip_id, accommodation_id, date, duration)
INSERT INTO has_accommodation VALUES(4, 1, '2021-07-25', 6);
INSERT INTO has_accommodation VALUES(2, 2, '2021-07-10', 7);
INSERT INTO has_accommodation VALUES(1, 3, '2021-01-01', 3);
INSERT INTO has_accommodation VALUES(1, 4, '2021-01-04', 4);
