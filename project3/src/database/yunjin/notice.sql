CREATE TABLE notice(
	noticeKey	NUMBER PRIMARY KEY,
	noticeTitle	VARCHAR2(100),
	noticeContents	VARCHAR2(4000),
	noticeDate	DATE,
	noticeView	NUMBER
);