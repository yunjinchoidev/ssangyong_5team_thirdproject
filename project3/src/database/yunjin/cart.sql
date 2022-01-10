CREATE TABLE cart(
	cartKey	NUMBER PRIMARY KEY,
	cartDate	DATE,
	cartCnt	NUMBER,
	cartPrice	number, 
	mKey NUMBER CONSTRAINTS cart_mKey_fk REFERENCES member(mKey),
	officialKey NUMBER CONSTRAINTS cart_officialKey_fk REFERENCES officialStore(officialKey),
	rentalKey NUMBER CONSTRAINTS cart_rentalKey_fk REFERENCES rentalstore(rentalKey),
	cusKey	NUMBER CONSTRAINTS cart_cusKey_fk REFERENCES customstore(cusKey),
	lecKey	NUMBER CONSTRAINTS cart_lecKey_fk REFERENCES lecture(lecKey),
	requKey	NUMBER CONSTRAINTS cart_requKey_fk REFERENCES storyrequest(requKey)
);


DROP TABLE cart;

	