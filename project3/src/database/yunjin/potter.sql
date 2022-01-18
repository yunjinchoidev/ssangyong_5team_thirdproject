DROP TABLE potter;

CREATE TABLE potter(
	harryKey	NUMBER PRIMARY key,
	harryCharacter	VARCHAR2(100),
	harryDomioty	VARCHAR2(100),
	harryMagicLevel	VARCHAR2(100),
	harryBirth	varchar2(50),
	harryMagic	VARCHAR2(100),
	harryHeight	NUMBER,
	harryWeight	NUMBER,
	mKey NUMBER CONSTRAINT harrypotter_mKey_fk REFERENCES member (mKey)
);

DROP TABLE POTTER;

SELECT * FROM potter;

INSERT INTO potter(HARRYKEY, harrycharacter, harrydomioty
, harrymagiclevel, harrybirth, harrymagic, harryheight,harryweight,mkey) VALUES(
(SELECT NVL(MAX(harrykey)+1,1) FROM POTTER),'미지정','미지정',
'0','미지정','미지정',0,0,(SELECT NVL(MAX(mkey)+1,1) FROM POTTER));


			
DELETE FROM potter
WHERE mkey=1;

UPDATE potter
SET harrycharacter='해리포터'
WHERE mkey = (SELECT mkey
FROM MEMBER
WHERE mid = 'himan'
AND mpass='7777');

UPDATE POTTER 
SET HARRYDOMIOTY =?
WHERE mkey = (SELECT mkey
FROM MEMBER
WHERE mid = 'himan'
AND mpass='7777');

SELECT HARRYMAGICLEVEL , HARRYCHARACTER , HARRYDOMIOTY 
FROM POTTER
WHERE MKEY = (SELECT mkey
FROM MEMBER
WHERE mid='himan'
AND mpass = '7777');