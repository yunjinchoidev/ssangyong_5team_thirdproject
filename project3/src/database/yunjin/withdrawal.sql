CREATE TABLE withdrawal(
	drawKey	NUMBER PRIMARY KEY,
	mKey NUMBER CONSTRAINT withdrawal_mKey_fk REFERENCES member (mKey),
	drawReason	VARCHAR2(100),
	drawDate	DATE,
	drawConfirmDate	DATE
);