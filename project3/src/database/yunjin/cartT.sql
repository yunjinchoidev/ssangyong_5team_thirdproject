DROP TABLE cartT;

CREATE TABLE cartT(
	cartKey	NUMBER PRIMARY KEY,
	cartDate	DATE,
	cartCnt	NUMBER,
	cartPrice	NUMBER,
	mKey NUMBER CONSTRAINTS cartT_mKey_fk REFERENCES member(mKey),
	officialKey NUMBER CONSTRAINTS cartT_officialKey_fk REFERENCES officialStoreT(officialKey),
	rentalKey NUMBER CONSTRAINTS cartT_rentalKey_fk REFERENCES rentalstoreT(rentalKey),
	cusKey	NUMBER CONSTRAINTS cartT_cusKey_fk REFERENCES customstoreT(cusKey) ,
	lecKey	NUMBER CONSTRAINTS cartT_lecKey_fk REFERENCES lectureT(lecKey),
	requKey	NUMBER CONSTRAINTS cartT_requKey_fk REFERENCES storyrequestT(requKey)
);



SELECT * FROM CARTT;

DROP TABLE cartT;

 select cartKey, mname, lecname
from member m, lecture l, cart c
  where m.mKey=c.mKey and c.lecKey=l.lecKey;
 
DELETE FROM cartT
WHERE cartKey=4;
 
 

	