
CREATE TABLE officialStore(
	officialKey	NUMBER PRIMARY KEY,
	officialPname	VARCHAR2(100),
	officialExplain	VARCHAR2(100),
	officialRegDate	DATE,
	officialnventory	NUMBER,
	officialDiscount	NUMBER,
	proCateKey NUMBER CONSTRAINT officialStore_proCateKey_fk REFERENCES productcategory(proCateKey),
	fileKey	NUMBER CONSTRAINT officialStore_fileKey_fk REFERENCES attachedfile(fileKey)
);

DROP TABLE officialstore;

SELECT * 
FROM officialStore;