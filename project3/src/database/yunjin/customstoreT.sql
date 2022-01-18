CREATE TABLE customStoreT(
	cusKey	NUMBER PRIMARY KEY,
	cusPname	VARCHAR2(100),
	cusExplain	VARCHAR2(100),
	cusRegDate	DATE,
	cusModiDate	DATE,
	cusStock	NUMBER,
	cusDiscount	NUMBER,
	mKey	NUMBER CONSTRAINT customStoreT_mKey_fk REFERENCES MEMBER(mKey),
	proCateKey NUMBER CONSTRAINT customStoreT_proCateKey_fk REFERENCES productcategory(proCateKey),
	fileKey	varchar2(100) CONSTRAINT customStoreT_fileKey_fk REFERENCES attachedfileTest(fileKey)
);

SELECT *
FROM customStore;

DELETE customstore;

DROP TABLE CUSTOMSTORE;


INSERT INTO customStoreT VALUES (0, NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL); 
