
CREATE TABLE offictialStore(
	offictialKey	NUMBER PRIMARY KEY,
	offictialPname	VARCHAR2(100),
	offictialExplain	VARCHAR2(100),
	offictialRegDate	DATE,
	offictialnventory	NUMBER,
	offictialDiscount	NUMBER,
	proCateKey NUMBER CONSTRAINT offictialStore_proCateKey_fk REFERENCES productcategory(proCateKey),
	fileKey	NUMBER CONSTRAINT offictialStore_fileKey_fk REFERENCES attachedfile(fileKey)
);

DROP TABLE officialstore;