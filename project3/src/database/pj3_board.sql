create table pj3_board (
	articleNO number PRIMARY KEY,
	parentNO number DEFAULT 0,
	title VARCHAR2(500) NOT NULL,
	content VARCHAR2(4000),
	imageFileName VARCHAR2(100),
	writeDate DATE DEFAULT sysdate NOT NULL,
	id VARCHAR2(50)
);

SELECT * FROM PJ3_BOARD;

COMMIT;


insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (1, 0, 'Wood', 'בְּרֵאשִׁית, בָּרָא אֱלֹהִים, אֵת הַשָּׁמַיִם, וְאֵת הָאָרֶץ', 'IntegerTincidunt.jpeg', '2021/06/16', 'tsinney0');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (2, 0, 'Plastic', 'ヽ༼ຈل͜ຈ༽ﾉ ヽ༼ຈل͜ຈ༽ﾉ ', 'Cras.gif', '2021/11/21', 'wandryushchenko1');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (3, 2, 'Aluminum', '‫test‫', 'Nulla.ppt', '2021/08/28', 'bginie2');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (4, 0, 'Wood', '̦H̬̤̗̤͝e͜ ̜̥̝̻͍̟́w̕h̖̯͓o̝͙̖͎̱̮ ҉̺̙̞̟͈W̷̼̭a̺̪͍į͈͕̭͙̯̜t̶̼̮s̘͙͖̕ ̠̫̠B̻͍͙͉̳ͅe̵h̵̬͇̫͙i̹͓̳̳̮͎̫̕n͟d̴̪̜̖ ̰͉̩͇͙̲͞ͅT͖̼͓̪͢h͏͓̮̻e̬̝̟ͅ ̤̹̝W͙̞̝͔͇͝ͅa͏͓͔̹̼̣l̴͔̰̤̟͔ḽ̫.͕', 'DuiVel.pdf', '2021/05/14', 'troulston3');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (5, 3, 'Aluminum', 'nil', 'UrnaPretiumNisl.txt', '2021/04/16', 'pdadley4');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (6, 2, 'Rubber', '../../../../../../../../../../../etc/hosts', 'OrnareImperdiet.tiff', '2021/01/25', 'ahasard5');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (7, 2, 'Aluminum', 'ﾟ･✿ヾ╲(｡◕‿◕｡)╱✿･ﾟ', 'Vivamus.txt', '2021/11/15', 'dschenkel6');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (8, 3, 'Vinyl', '1.00', 'PhasellusIdSapien.png', '2021/02/15', 'cwalczynski7');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (9, 4, 'Glass', '✋🏿 💪🏿 👐🏿 🙌🏿 👏🏿 🙏🏿', 'AnteVestibulumAnte.mp3', '2021/03/08', 'ekervin8');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (10, 4, 'Brass', '␢', 'InPurus.xls', '2021/12/16', 'mbedells9');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (11, 5, 'Plastic', 'Œ„´‰ˇÁ¨ˆØ∏”’', 'TurpisAdipiscing.txt', '2021/03/30', 'jcomollia');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (12, 5, 'Steel', '和製漢語', 'UtAt.doc', '2021/12/16', 'jhellikesb');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (13, 5, 'Plexiglass', '␡', 'IdNislVenenatis.mp3', '2021/02/23', 'parmellc');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (14, 5, 'Vinyl', '部落格', 'Augue.ppt', '2021/07/25', 'sarthursd');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (15, 0, 'Vinyl', '() { 0; }; touch /tmp/blns.shellshock1.fail;', 'PedeLibero.tiff', '2021/09/08', 'wdunkerlye');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (16, 0, 'Wood', '"', 'LiberoNonMattis.xls', '2021/08/25', 'gpilkingtonf');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (17, 0, 'Vinyl', 'ﾟ･✿ヾ╲(｡◕‿◕｡)╱✿･ﾟ', 'Morbi.mov', '2021/10/12', 'bgunbyg');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (18, 0, 'Stone', 'ÅÍÎÏ˝ÓÔÒÚÆ☃', 'IdConsequatIn.mp3', '2021/08/20', 'rpigdenh');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (19, 1, 'Rubber', '😍', 'EnimBlanditMi.mp3', '2021/12/10', 'jsalmani');
insert into pj3_board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (20, 2, 'Aluminum', '・(￣∀￣)・:*:', 'UltriciesEu.avi', '2021/10/12', 'gsutliffj');
