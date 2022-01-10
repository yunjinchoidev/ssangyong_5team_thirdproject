CREATE TABLE Report(
	repKey	NUMBER PRIMARY key,
	repReason	VARCHAR2(100),
	repDate	DATE,
	repUser	VARCHAR2(100),
	mKey NUMBER CONSTRAINT Report_mKey_fk REFERENCES member (mKey)
);