
CREATE TABLE officialStoreT(
	officialKey	NUMBER PRIMARY KEY,
	officialPname	VARCHAR2(100),
	officialExplain	VARCHAR2(100),
	officialRegDate	DATE,
	officialnventory	NUMBER,
	officialDiscount	NUMBER,
	proCateKey NUMBER CONSTRAINT officialStoreT_proCateKey_fk REFERENCES productcategory(proCateKey),
	fileKey	varchar2(100) CONSTRAINT officialStoreT_fileKey_fk REFERENCES attachedfileTest(fileKey)
);

COMMIT;
DROP TABLE officialstoreT;

SELECT * 
FROM officialStoreT;


ALTER TABLE officialstoreT RENAME COLUMN officialnventory TO officialInventory;


INSERT INTO officialStoreT VALUES (0, NULL,NULL,NULL,NULL,NULL,NULL,NULL); 
