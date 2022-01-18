DELETE FROM inquiry;
DROP TABLE inquiry;

CREATE TABLE inquiry(
	inquiryKey	NUMBER PRIMARY key,
	inquiryType	VARCHAR2(100),
	inquiryName	VARCHAR2(100),
	inquiryEmail	VARCHAR2(100),
	inquiryTitle	VARCHAR2(100),
	inquiryContents	VARCHAR2(4000),
	inquiryStatus	VARCHAR2(100),
	inquiryRegi	DATE,
	inquiryAnswerContents	VARCHAR2(100),
	mKey NUMBER CONSTRAINT inquiry_mKey_fk REFERENCES member (mKey)
);