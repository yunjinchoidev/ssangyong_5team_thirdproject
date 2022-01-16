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