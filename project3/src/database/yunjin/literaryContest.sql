CREATE TABLE literarycontest (
	literKey number PRIMARY KEY,
	literTitle	VARCHAR2(100) default 'A',
	literContents	VARCHAR2(4000) default 'A',
	literSort	VARCHAR2(100) default 'A',
	literCareer	VARCHAR2(100) default 'A',
	literProductionDate	NUMBER DEFAULT 0,
	literSubmissionDate	DATE DEFAULT sysdate,
	mKey NUMBER DEFAULT 0,
	fileKey	NUMBER DEFAULT 0
);

DROP TABLE literarycontest; 


select * from  LiteraryContest;

INSERT INTO LITERARYCONTEST VALUES (1, '3초간의 불안', '한 인간의 순간적인 불안을 담은 이야기입니다', '판타지/미스터리', '2년', '30', sysdate, 1, 1);

INSERT INTO LiteraryContest(literkey, literTitle,literContents, literSort, literCareer,literProductionDate,literSubmissionDate) VALUES(2, 'a', 'a', 'a', 'a', 3, '2021/2/3');

INSERT INTO LiteraryContest(literkey, literTitle,literContents, literSort, literCareer,literProductionDate,literSubmissionDate)
	VALUES(3, 'a', 'a', 'a', 'a', 3, '2021/3/4');
INSERT INTO LiteraryContest(literkey, literTitle,literContents, literSort, literCareer,literProductionDate,literSubmissionDate)
	VALUES(4, 'a', 'a', 'a', 'a', 3, '2021/3/4');

INSERT INTO LiteraryContest(literkey,literTitle,literContents, literSort, literCareer,literProductionDate,literSubmissionDate)
	VALUES(5, '판타지5', '판타지5내용', '미스터리', '5년', 30, '2021/3/4');
INSERT INTO LiteraryContest(literkey,literTitle,literContents, literSort, literCareer,literProductionDate)
	VALUES(6, '판타지6', '판타지6내용', '미스터리', '6년', 30);

