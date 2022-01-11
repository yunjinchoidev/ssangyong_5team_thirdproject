CREATE TABLE Report(
	repKey	NUMBER PRIMARY key,
	mKey NUMBER CONSTRAINT Report_mKey_fk REFERENCES member (mKey),
	repReason	VARCHAR2(100),
	repDate	DATE,
	repUser	VARCHAR2(100)
);

DROP TABLE Report;