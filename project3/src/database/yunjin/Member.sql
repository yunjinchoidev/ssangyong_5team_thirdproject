DELETE FROM  Member;
DROP TABLE  Member;

CREATE TABLE Member (
	MKEY NUMBER NOT NULL,
	MID VARCHAR2(100),
	MPASS VARCHAR2(100),
	MNAME VARCHAR2(30),
	MEMAIL VARCHAR2(100),
	phonenum varchar2(50),
	MREG varchar2(50),
	nickname varchar2(100),
	MGENDER varchar2(10),
	MMANIAQUOT NUMBER,
	MJOINDATE DATE,
	MAUTHNUM NUMBER,
	MCASH NUMBER,
	MPOINT NUMBER,
	MLEVEL NUMBER,
	MEMAILWHETHER CHAR(2),
	MADDRESS VARCHAR2(100),
	MSTATE CHAR(10),
	MBLOCKLIST VARCHAR2(100),
	MSELLERRATE FLOAT,
	MGIFTLEVEL NUMBER,
	MUNDERFIFTEEN CHAR(2),
	MGIFTDONECNT NUMBER,
	MGIFTDONEEXIST varchar(2),
	MMYGIFT VARCHAR2(200),
	MIP VARCHAR2(50),
	CONSTRAINT MEMBER_PK PRIMARY KEY (MKEY)
);

SELECT * FROM MEMBER;

DELETE from board;

DELETE FROM MEMBER;

DELETE FROM marvel;
DELETE FROM potter;
DELETE FROM lord;

DROP TABLE MEMBER;

SELECT *
FROM MEMBER
WHERE mid='himan'
AND mpass='7777';

UPDATE MEMBER 
SET nickname='변경',
memail='이메일변경',
phonenum = '01012345678',
maddress='주소변경',
MGIFTDONEEXIST = 'Y', 
MMYGIFT='손편지쓰기'
WHERE m.MID = 'himan'
AND m.MPASS = '7777';

SELECT * FROM MEMBER;
SELECT * FROM POTTER;
SELECT * FROM MARVEL;
SELECT * FROM lord;

DELETE FROM MEMBER;
DELETE FROM POTTER;
DELETE FROM MARVEL;
DELETE FROM lord;

SELECT MNAME , MID ,NICKNAME ,MLEVEL , MMANIAQUOT , MCASH ,
MPOINT , MGIFTLEVEL , MMYGIFT, MGIFTDONEEXIST, MGIFTDONECNT 
FROM MEMBER
WHERE mid='himan'
AND mpass='7777';



INSERT INTO MEMBER (mkey, mid, mpass, mname, memail, phonenum,mreg, nickname,mgender, mjoindate, 
				mlevel, maddress,mmygift ,MSELLERRATE,mgiftlevel,MIP,MMANIAQUOT,MCASH,MPOINT,MGIFTDONECNT,MGIFTDONEEXIST)
				VALUES (
				(SELECT NVL(MAX(mkey)+1,1) FROM MEMBER),?,?,?
				,?,?,?,?,
				?, sysdate, 0,?,'없음', 0.0, 0, '192.100.0.0',0,0,0,0,'N');
			

SELECT mid
FROM MEMBER
WHERE MNAME ='홍길동'
AND MREG ='1234561234567';

SELECT mid,mpass
FROM MEMBER
WHERE mid = 'himan' 
AND MNAME ='홍길동'
AND MREG ='1234561234567';

UPDATE member 
SET mpass = '2222'
WHERE mid = 'himan';

INSERT INTO MEMBER VALUES (
2,
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)




INSERT INTO Member VALUES(
	1,
	'himan',
	'7777',
	'최윤진',
	'cyj000@naver.com',
	'01011111111',
	'1111111111111',
	'판타지덕후',
	'남',
	1,
	sysdate,
	1,
	10000,
	10000,
	20,
	'1',
	'서울',
	'1',
	'블랙',
	1.1,
	10,
	'1',
	2,
	'1',
	'1',
	'100.1.1'
);

INSERT INTO Member VALUES(
	2,
	'admin',
	'7777',
	'관리자',
	'admin@naver.com',
	'01011111111',
	'1111111111111',
	'판타지덕후',
	'남',
	1,
	sysdate,
	2,
	10000,
	10000,
	20,
	'1',
	'서울',
	'1',
	'블랙',
	1.1,
	10,
	'1',
	2,
	'1',
	'1',
	'100.1.1'
);
INSERT INTO Member VALUES(
	3,
	'cyj',
	'7777',
	'최윤진',
	'admin@naver.com',
	'01011111111',
	'1111111111111',
	'판타지덕후',
	'남',
	1,
	sysdate,
	2,
	10000,
	10000,
	20,
	'1',
	'서울',
	'1',
	'블랙',
	1.1,
	10,
	'1',
	2,
	'1',
	'1',
	'100.1.1'
);
INSERT INTO Member VALUES(
	4,
	'mhm',
	'7777',
	'마혜민',
	'admin@naver.com',
	'01011111111',
	'1111111111111',
	'판타지덕후',
	'여',
	1,
	sysdate,
	2,
	10000,
	10000,
	20,
	'1',
	'서울',
	'1',
	'블랙',
	1.1,
	10,
	'1',
	2,
	'1',
	'1',
	'100.1.1'
);
INSERT INTO Member VALUES(
	5,
	'jhj',
	'7777',
	'장훈주',
	'admin@naver.com',
	'01011111111',
	'1111111111111',
	'판타지덕후',
	'여',
	1,
	sysdate,
	2,
	10000,
	10000,
	20,
	'1',
	'서울',
	'1',
	'블랙',
	1.1,
	10,
	'1',
	2,
	'1',
	'1',
	'100.1.1'
);

DELETE FROM MEMBER
WHERE mKey=2;

SELECT *
FROM MEMBER;


UPDATE MEMBER
SET NICKNAME ='최윤진'
WHERE mKey=3;