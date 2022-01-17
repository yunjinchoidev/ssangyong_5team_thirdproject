CREATE TABLE rentalstore(
	rentalKey	NUMBER PRIMARY key,
	rentalPname	VARCHAR2(100),
	rentalterm	NUMBER,
	rentalExplain	varchar2(4000),
	rentalStartDay	DATE,
	rentalEndDay	DATE,
	proCateKey NUMBER CONSTRAINT rentalstore_proCateKey_fk REFERENCES productcategory(proCateKey),
	fileKey	NUMBER CONSTRAINT rentalstore_fileKey_fk REFERENCES attachedfile(fileKey)
);

SELECT * 
FROM RENTALSTORE;

DROP TABLE RentalStore;

DELETE FROM RENTALSTORE;