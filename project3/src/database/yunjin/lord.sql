CREATE TABLE lord(
	lordKey	NUMBER PRIMARY KEY,
	lordCharacter	VARCHAR2(100),
	lordTribe	VARCHAR2(100),
	lordPaciBattle	VARCHAR2(100),
	lordloc	VARCHAR2(100),
	lordHeight	NUMBER,
	lordWeight	NUMBER,
	mKey NUMBER CONSTRAINT lord_mKey_fk REFERENCES member (mKey)
);

DROP TABLE lord;