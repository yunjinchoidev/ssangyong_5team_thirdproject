CREATE TABLE lecture(
	lecKey	NUMBER PRIMARY KEY,
	lecName	VARCHAR2(100),
	lecTeacher	VARCHAR2(100),
	leclimitcnt	NUMBER,
	leconlineavail	NUMBER,
	lecdifficulty	VARCHAR2(100),
	leccontents	VARCHAR2(4000),
	lecscore	NUMBER,
	proCateKey number CONSTRAINTS lecture_proCateKey_fk REFERENCES productcategory(proCateKey),
	fileKey number CONSTRAINTS lecture_fileKey_fk REFERENCES attachedfile(fileKey)
);

SELECT * FROM lecture;

DROP table lecture;

INSERT INTO lecture VALUES (1, '톨킨따라잡기', '홍길동', 30, 0, '초급', '이 강의는 판타지를 끝까지 써본 적이 없는 수강생들을 위한 것입니다.', 88, 201, 201);
COMMIT;