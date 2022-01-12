CREATE TABLE storyrequest(
	requKey	NUMBER primary KEY,
	requTitle	VARCHAR2(100),
	requContents	VARCHAR2(4000),
	requPrice	NUMBER,
	requModicnt	NUMBER,
	requSort	VARCHAR2(100),
	mKey	NUMBER CONSTRAINT stotyrequest_mKey_fk REFERENCES MEMBER(mKey),
	proCateKey NUMBER CONSTRAINT stotyrequest_proCateKey_fk REFERENCES productcategory(proCateKey),
	fileKey	NUMBER CONSTRAINT stotyrequest_fileKey_fk REFERENCES attachedfile(fileKey)
);

