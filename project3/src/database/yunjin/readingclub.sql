CREATE TABLE readingclub(
	rcKey	NUMBER PRIMARY KEY,
	rcName	VARCHAR2(100),
	rcCnt	NUMBER,
	rcDate	DATE,
	rcDues	NUMBER,
	rsContents	VARCHAR2(4000),
	mKey NUMBER CONSTRAINT readingclub_mKey_fk REFERENCES member(mKey),
	fileKey	NUMBER CONSTRAINT readingclub_fileKey_fk REFERENCES attachedfile(fileKey)
);

DROP TABLE readingclub;