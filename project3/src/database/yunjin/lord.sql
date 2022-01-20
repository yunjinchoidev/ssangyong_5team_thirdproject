DELETE FROM  lord;
DROP TABLE  lord;

CREATE TABLE lord(
	lordKey	NUMBER PRIMARY KEY,
	lordCharacter	VARCHAR2(100),
	lordTribe	VARCHAR2(100),
	lordPaciBattle	VARCHAR2(100),
	lordloc	VARCHAR2(100),
	lordHeight	NUMBER,
	lordWeight	NUMBER,
	mKey NUMBER CONSTRAINT lord_mKey_fk REFERENCES member (mKey)
)

SELECT *
FROM lord;

INSERT INTO lord(lordKey, lordCharacter, lordTribe, lordPaciBattle,
lordloc,lordHeight,lordWeight,mKey) 
VALUES ((SELECT NVL(MAX(lordKey)+1,1) FROM lord),'미지정','미지정'
,'미지정','미지정',0,0,(SELECT NVL(MAX(mkey)+1,1)FROM lord));

DELETE FROM lord
WHERE mkey=2;

SELECT * FROM lord;

INSERT INTO lord(lordKey, lordCharacter, lordTribe, lordPaciBattle,
lordloc,lordHeight,lordWeight,mKey) 
VALUES (7,'미지정','미지정'
,'미지정','미지정',0,0,7);



