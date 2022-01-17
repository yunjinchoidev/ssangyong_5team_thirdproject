CREATE TABLE lectureT(
	lecKey	NUMBER PRIMARY KEY,
	lecName	VARCHAR2(100),
	lecTeacher	VARCHAR2(100),
	leclimitcnt	NUMBER,
	leconlineavail	NUMBER,
	lecdifficulty	VARCHAR2(100),
	leccontents	VARCHAR2(4000),
	lecscore	NUMBER,
	proCateKey number CONSTRAINTS lectureT_proCateKey_fk REFERENCES productcategory(proCateKey),
	fileKey varchar2(100) CONSTRAINTS lectureT_fileKey_fk REFERENCES attachedfileTest(fileKey)
);

SELECT * FROM lecture ORDER BY lecKey;

DROP table lecture;

ALTER TABLE lecture ADD lecPrice number;

DELETE from lecture ;

WHERE leckey=302;

INSERT all
 INTO lecture VALUES (1, '톨킨따라잡기', '강사1', 30, 0, '초급', '강의 설명1', 8, 201, 201, 200000)
 INTO lecture VALUES (2, '반지의제왕 완전분해', '강사2', 40, 1, '중급', '강의 설명2', 9, 201, 202, 300000)
 INTO lecture VALUES (3, '이야기란 무엇인가', '강사3', 20, 0, '고급', '강의 설명3', 3, 201, 203, 400000)
 INTO lecture VALUES (4, '상상력의 비밀', '강사4', 25, 1, '초급', '강의 설명4', 9, 201, 204, 250000)
 INTO lecture VALUES (5, '마블 속 신화', '강사5', 10, 0, '초급', '강의 설명5',3, 201, 205, 400000)
 INTO lecture VALUES (6, '첨삭 강의', '강사6', 80, 1, '고급', '강의 설명6', 1, 201, 206, 300000)
 INTO lecture VALUES (7, '영화 이론', '강사7', 20, 0, '중급', '강의 설명7', 3, 201, 207, 100000)
 INTO lecture VALUES (8, '디즈니와 판타지', '강사8', 35, 1, '고급', '강의 설명10', 4, 201, 208, 500000)
 INTO lecture VALUES (9, '판타지 뒤집어보기', '강사9', 40, 0, '초급', '강의 설명9', 7, 201, 209, 400000)
SELECT * FROM dual;

COMMIT;

INSERT INTO lecture VALUES (2, '')



SELECT *
FROM lecture
WHERE lecKey=1;
