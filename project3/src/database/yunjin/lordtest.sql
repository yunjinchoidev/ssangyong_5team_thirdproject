CREATE TABLE lordtest(
	lordtestKey number PRIMARY KEY,
	mKey NUMBER CONSTRAINT lordtest_mKey_fk REFERENCES member (mKey),
	sumoftest number
);