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

SELECT *
FROM LITERARYCONTEST;

DELETE LITERARYCONTEST;

update LiteraryContest
	SET literTitle=222222222,
	literContents = 1,
	literSort= 1,
	literCareer= 1,
	literProductionDate= 1,
	literSubmissionDate= to_date('2021/1/11','YYYY/MM/DD'),
	mKey=201,
	fileKey= 201
where literKey=1;



DROP TABLE literarycontest; 
