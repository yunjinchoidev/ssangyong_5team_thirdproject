CREATE TABLE marvel(
	marvelKey	NUMBER PRIMARY KEY,
	marvelCharacter	VARCHAR2(100),
	MarvelAbility	VARCHAR2(100),
	MarvelHobby	VARCHAR2(100),
	MarvelHeight	NUMBER,
	MarvelWeight	NUMBER,
	mKey NUMBER CONSTRAINT marvel_mKey_fk REFERENCES member (mKey)
);