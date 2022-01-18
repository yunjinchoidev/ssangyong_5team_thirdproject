DELETE FROM FVORDER;
DROP TABLE fvorder;

CREATE TABLE fvorder(
	orderKey NUMBER PRIMARY KEY,
	sellerId VARCHAR2(100) DEFAULT 'fv',
	orderDate DATE,
	installType	VARCHAR2(100),
	orderPrice	NUMBER,
	payType	VARCHAR2(100),
	orderEmail VARCHAR2(100),
	cardType VARCHAR2(100),
	cartKey	NUMBER CONSTRAINTS order_cartKey_fk REFERENCES cart(cartKey),
	mKey NUMBER CONSTRAINTS order_mKey_fk REFERENCES member(mKey),
	officialKey	NUMBER CONSTRAINTS order_officialKey_fk REFERENCES officialStore(officialKey),
	rentalKey NUMBER CONSTRAINTS order_rentalKey_fk REFERENCES rentalstore(rentalKey),
	cusKey NUMBER CONSTRAINTS order_cusKey_fk REFERENCES customstore(cusKey),
	lecKey	NUMBER CONSTRAINTS order_lecKey_fk REFERENCES lecture(lecKey),
	requKey NUMBER CONSTRAINTS order_requKey_fk REFERENCES storyrequest(requKey),
	orderstatus	VARCHAR2(100) CONSTRAINTS order_orderstatus_fk REFERENCES orderstatus(orderstatus)
);

DROP TABLE fvorder;



