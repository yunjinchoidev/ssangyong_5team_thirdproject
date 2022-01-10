CREATE TABLE literarycontest (
	literKey number PRIMARY KEY,
	literTitle	VARCHAR2(100) default 'A',
	literContents	VARCHAR2(4000) default 'A',
	literSort	VARCHAR2(100) default 'A',
	literCareer	VARCHAR2(100) default 'A',
	literProductionDate	NUMBER DEFAULT 0,
	literSubmissionDate	DATE DEFAULT sysdate,
	mKey NUMBER CONSTRAINT literarycontest_mKey_fk REFERENCES member (mKey),
	fileKey	NUMBER CONSTRAINT literarycontest_fileKey_fk REFERENCES attachedfile(fileKey)
);



DROP TABLE literarycontest; 

