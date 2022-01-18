CREATE TABLE rentalstoreT(
	rentalKey	NUMBER PRIMARY key,
	rentalPname	VARCHAR2(100),
	rentalterm	NUMBER,
	rentalExplain	varchar2(4000),
	rentalStartDay	DATE,
	rentalEndDay	DATE,
	proCateKey NUMBER CONSTRAINT rentalstoreT_proCateKey_fk REFERENCES productcategory(proCateKey),
	fileKey	varchar2(100) CONSTRAINT rentalstoreT_fileKey_fk REFERENCES attachedfileTest(fileKey),
	rentalPrice NUMBER
);

SELECT * 
FROM RENTALSTORET;

DROP TABLE RentalStoreT;

INSERT INTO rentalstoreT VALUES (0, NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL); 
INSERT INTO rentalstoreT VALUES (1, '반지', 10,'반지입니다','2021/1/16','2021/1/26',1,1,10000); 

