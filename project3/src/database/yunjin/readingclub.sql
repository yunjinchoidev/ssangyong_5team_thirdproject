CREATE TABLE readingclub(
	rcKey	NUMBER PRIMARY KEY,
	rcName	VARCHAR2(100),
	rcCnt	NUMBER,
	rcDate	DATE,
	rcDues	NUMBER,
	rsContents	VARCHAR2(4000),
	proCateKey NUMBER CONSTRAINT readingclub_proCateKey_fk REFERENCES productcategory(proCateKey),
	fileKey	NUMBER CONSTRAINT readingclub_fileKey_fk REFERENCES attachedfile(fileKey)
);

DROP TABLE readingclub;