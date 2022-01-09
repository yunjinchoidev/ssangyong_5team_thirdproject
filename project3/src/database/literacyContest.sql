CREATE TABLE literarycontest (
	liberKey NUMBER PRIMARY KEY,
	liberTitle	VARCHAR2(100),
	liberContents	VARCHAR2(4000),
	liberSort	VARCHAR2(100),
	liberCareer	VARCHAR2(100),
	liberProductionDate	NUMBER,
	liberSubmissionDate	DATE,
	mKey NUMBER,
	fileKey	NUMBER
);

INSERT INTO LITERARYCONTEST VALUES (1, '3초간의 불안', '한 인간의 순간적인 불안을 담은 이야기입니다', '판타지/미스터리', '2년', '30', sysdate, 1, 1);

