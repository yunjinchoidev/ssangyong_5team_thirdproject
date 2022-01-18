DROP TABLE marvel;

CREATE TABLE marvel(
	marvelKey	NUMBER PRIMARY KEY,
	marvelCharacter	VARCHAR2(100),
	MarvelAbility	VARCHAR2(100),
	MarvelHobby	VARCHAR2(100),
	MarvelHeight	NUMBER,
	MarvelWeight	NUMBER,
	mKey NUMBER CONSTRAINT marvel_mKey_fk REFERENCES member (mKey)
);

SELECT * FROM marvel;

INSERT INTO marvel(marvelkey, marvelCharacter, MarvelAbility, MarvelHobby,
MarvelHeight,MarvelWeight,mkey) 
VALUES ((SELECT NVL(MAX(MARVELKEY)+1,1) FROM MARVEL),'미지정','미지정','미지정',0,0,
(SELECT NVL(MAX(mkey)+1,1)FROM MARVEL));

DELETE FROM marvel
WHERE mkey=2;

UPDATE marvel
SET MARVELCHARACTER='아이언맨'
WHERE mkey = (SELECT mkey
FROM MEMBER
WHERE mid = 'himan'
AND mpass='7777');

SELECT  marvelCharacter
FROM marvel
WHERE MKEY = (SELECT mkey
FROM MEMBER
WHERE mid='himan'
AND mpass = '7777');