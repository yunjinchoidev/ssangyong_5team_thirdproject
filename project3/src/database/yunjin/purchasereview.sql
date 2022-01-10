 CREATE TABLE purchasereview(
	purchKey NUMBER PRIMARY KEY,
	contents	VARCHAR2(100),
	purchScore	NUMBER,
	purchlikecnt	NUMBER,
	purchdontlikecnt	NUMBER,
	purchview	NUMBER,
	orderKey	NUMBER CONSTRAINT purchasereview_orderKey_fk REFERENCES fvorder(orderKey),
	mKey NUMBER CONSTRAINT purchasereview_mKey_fk REFERENCES member (mKey),
	fileKey	NUMBER CONSTRAINT purchasereview_fileKey_fk REFERENCES attachedfile(fileKey)
);