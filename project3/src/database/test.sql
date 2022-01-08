CREATE table t_member(
	id varchar2(100) PRIMARY KEY,
	pwd varchar2(100)
);

DROP TABLE T_MEMBER;
INSERT into t_member VALUES ('hong', '1111');
INSERT into t_member VALUES ('go', '1111');

create table t_Board (
	articleNO number PRIMARY KEY,
	parentNO number,
	title VARCHAR2(100),
	content VARCHAR2(3000),
	imageFileName VARCHAR2(100),
	writeDate DATE,
	id VARCHAR2(100)
);

DROP TABLE t_Board CASCADE CONSTRAINTS;
DROP TABLE t_member CASCADE CONSTRAINTS;


INSERT all
into t_Board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (1, 1, 'Pink', 'Aerostar', 'VariusUt.xls', '2021/02/08', 'laimer0')
into t_Board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (2, 2, 'Purple', 'Town & Country', 'UltriciesEuNibh.doc', '2021/12/13', 'averbruggen1')
into t_Board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (3, 3, 'Fuscia', 'Journey', 'Nibh.ppt', '2021/06/14', 'ekluge2')
into t_Board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (4, 4, 'Blue', 'Outlander Sport', 'OdioDonecVitae.png', '2021/09/08', 'bforward3')
into t_Board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (5, 5, 'Pink', 'Escort', 'DiamNam.avi', '2021/04/24', 'scastellet4')
into t_Board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (6, 6, 'Goldenrod', 'Express 1500', 'PorttitorLorem.avi', '2021/06/11', 'slehrer5')
into t_Board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (7, 7, 'Fuscia', 'Tacoma', 'ElementumLigula.mov', '2021/01/20', 'hcalbert6')
into t_Board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (8, 8, 'Violet', 'Sierra 2500HD', 'Amet.jpeg', '2021/10/18', 'eleall7')
into t_Board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (9, 9, 'Violet', 'GTI', 'Nonummy.avi', '2021/10/29', 'aroistone8')
into t_Board (articleNO, parentNO, title, content, imageFileName, writeDate, id) values (10, 10, 'Pink', 'Econoline E350', 'NecSem.xls', '2021/08/19', 'chayman9')
SELECT * FROM dual;