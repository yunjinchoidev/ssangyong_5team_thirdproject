CREATE TABLE harrypotter(
	harryKey	NUMBER PRIMARY key,
	harryCharacter	VARCHAR2(100),
	harryDomioty	VARCHAR2(100),
	harryMagicLevel	VARCHAR2(100),
	harryBirth	NUMBER,
	harryMagic	VARCHAR2(100),
	harryHeight	NUMBER,
	harryWeight	NUMBER,
	mKey NUMBER CONSTRAINT harrypotter_mKey_fk REFERENCES member (mKey)
);

DROP TABLE harrypotter;
