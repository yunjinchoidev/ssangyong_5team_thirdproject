CREATE TABLE Board(
	boPostKey	NUMBER PRIMARY KEY,
	mKey NUMBER CONSTRAINT Board_mKey_fk REFERENCES member (mKey),
	fileKey	NUMBER CONSTRAINT Board_fileKey_fk REFERENCES attachedfile(fileKey),
	boCateKey	NUMBER CONSTRAINT Board_boCateKey_fk REFERENCES BoardCategory(boCateKey),
	boWriter	VARCHAR2(100),
	boWriterPass	VARCHAR2(100),
	boWriterEmail	VARCHAR2(200),
	boPostDate	DATE,
	boTtitle	VARCHAR2(200),
	boModifyDate	DATE,
	boWriteIp	VARCHAR2(100),
	boViews	NUMBER,
	boParWritNum	NUMBER,
	boContent	VARCHAR2(4000)
);