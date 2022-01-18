DELETE FROM fvorderTT;
DROP TABLE fvorderTT;

CREATE TABLE fvorderTT(
	orderKey NUMBER PRIMARY KEY,
	sellerId VARCHAR2(100),
	orderDate DATE,
	installType	VARCHAR2(100),
	orderPrice	NUMBER,
	payType	VARCHAR2(100),
	orderEmail VARCHAR2(100),
	cardType VARCHAR2(100),
	cartKey	NUMBER CONSTRAINTS fvorderTT_cartKey_fk REFERENCES cartT(cartKey),
	mKey NUMBER CONSTRAINTS fvorderTT_mKey_fk REFERENCES member(mKey),
	orderstatus	VARCHAR2(100) CONSTRAINTS fvorderTT_orderstatus_fk REFERENCES orderstatus(orderstatus)
);

DROP TABLE fvorder;



