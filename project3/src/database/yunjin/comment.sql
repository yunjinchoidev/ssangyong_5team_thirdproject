CREATE TABLE fvComment(
	commKey	NUMBER PRIMARY KEY,
	boPostKey NUMBER  CONSTRAINT fvComment_boPostKey_fk REFERENCES Board(boPostKey),
	mKey NUMBER CONSTRAINT fvComment_mKey_fk REFERENCES member(mKey),
	commContent	VARCHAR2(500),
	commDate	DATE,
	commModifyDate	DATE,
	commReport	CHAR,
	commGoodNum	NUMBER,
	commHateNum	NUMBER
);