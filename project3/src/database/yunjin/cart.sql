CREATE TABLE cart(
	cartKey	NUMBER PRIMARY KEY,
	cartDate	DATE,
	cartCnt	NUMBER,
	cartPrice	number, 
	mKey(FK)	NUMBER,
	cusKey(FK)	NUMBER,
	rentalKey(FK)	NUMBER,
	offictialKey(FK)	NUMBER
	lecKey(FK)	NUMBER
	rcKey(FK)	NUMBER
)