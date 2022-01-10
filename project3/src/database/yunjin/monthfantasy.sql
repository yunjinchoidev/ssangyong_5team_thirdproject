CREATE TABLE monthfantasy(
	monthindiviKey	NUMBER PRIMARY KEY,
	monthindivicontents	VARCHAR2(4000),
	monthindivisort	VARCHAR2(100),
	monthindivititle	VARCHAR2(100),
	monthindivilikecnt	NUMBER,
	monthindividonlikecnt	NUMBER,
	monthindiviwriter	VARCHAR(100),
	mKey NUMBER CONSTRAINT monthfantasy_mKey_fk REFERENCES member (mKey),
	fileKey	NUMBER CONSTRAINT monthfantasy_fileKey_fk REFERENCES attachedfile(fileKey)
);

SELECT * FROM monthfantasy;
DROP TABLE monthfantasy;