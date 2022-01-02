create table boardfw (
	articleNO NUMBER,
	parentNO NUMBER,
	title VARCHAR2(500),
	content VARCHAR2(4000),
	imageFileName VARCHAR2(100),
	writeDate DATE,
	id varchar2(100), CONSTRAINT FK_ID FOREIGN KEY(id) REFERENCES memberfw(id)
);

SELECT *
FROM boardfw;

insert into boardfw (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (1, 1, 'St. Thomas Aquinas College', 'kworvill0@woothemes.com', 'VelAccumsanTellus.mp3', '2021-11-06', 'shuzzay0');
insert into boardfw (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (2, 2, 'Universidad de la Tercera Edad', 'rfawloe1@springer.com', 'DiamCras.png', '2021-10-09', 'twolverson1');
insert into boardfw (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (3, 3, 'Ahsanullah University of Science & Technology', 'wtigner2@kickstarter.com', 'VelEnimSit.mp3', '2021-05-07', 'shuzzay0');
insert into boardfw (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (4, 4, 'Universidad Don Vasco', 'iripley3@spotify.com', 'NequeDuis.png', '2021-04-09', 'mgreenhouse2');
insert into boardfw (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (5, 5, 'The Chicago School of Professional Psychology', 'dwillmer4@google.it', 'NuncVestibulum.jpeg', '2021-03-30', 'mgreenhouse2');
insert into boardfw (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (6, 6, 'Université de Kairouan', 'aprew5@paginegialle.it', 'Praesent.avi', '2021-04-28', 'mgreenhouse2');
insert into boardfw (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (7, 7, 'Universidad Distral "Francisco José de Caldas"', 'skilliam6@nsw.gov.au', 'DonecUtMauris.xls', '2021-06-20', 'shuzzay0');
insert into boardfw (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (8, 8, 'Universidad Tecnológica San Antonio de Machala', 'lpepon7@globo.com', 'Integer.mp3', '2021-04-08', 'twolverson1');
insert into boardfw (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (9, 9, 'Thierry Graduate School of Leadership', 'cmattack8@booking.com', 'PrimisInFaucibus.mov', '2021-06-17', 'twolverson1');
insert into boardfw (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (10, 10, 'Facultés Universitaires Catholiques de Mons', 'lgianulli9@arizona.edu', 'Dolor.txt', '2021-01-18', 'twolverson1');
