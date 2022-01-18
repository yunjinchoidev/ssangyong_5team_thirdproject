DELETE cutomStore;
DROP TABLE customStroe;

CREATE TABLE customStore(
	cusKey	NUMBER PRIMARY KEY,
	cusPname	VARCHAR2(100),
	cusExplain	VARCHAR2(100),
	cusRegDate	DATE,
	cusModiDate	DATE,
	cusStock	NUMBER,
	cusDiscount	NUMBER,
	mKey	NUMBER CONSTRAINT customStore_mKey_fk REFERENCES MEMBER(mKey),
	proCateKey NUMBER CONSTRAINT customStore_proCateKey_fk REFERENCES productcategory(proCateKey),
	fileKey	NUMBER CONSTRAINT customStore_fileKey_fk REFERENCES attachedfile(fileKey)
);

SELECT *
FROM customStore;

DELETE customstore;

DROP TABLE CUSTOMSTORE;