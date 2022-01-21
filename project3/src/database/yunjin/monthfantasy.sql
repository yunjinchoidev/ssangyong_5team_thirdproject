DELETE FROM  monthfantasy;
DROP TABLE  monthfantasy;

CREATE TABLE monthfantasy(
	monthindiviKey	NUMBER PRIMARY KEY,
	monthindivicontents	VARCHAR2(4000),
	monthindivisort	VARCHAR2(100),
	monthindivititle	VARCHAR2(100),
	monthindivilikecnt	NUMBER,
	monthindividonlikecnt	NUMBER,
	monthindiviwriter	VARCHAR2(100),
	mKey NUMBER CONSTRAINT monthfantasy_mKey_fk REFERENCES member (mKey),
	fileKey	NUMBER CONSTRAINT monthfantasy_fileKey_fk REFERENCES attachedfile(fileKey)
);

INSERT INTO monthfantasy VALUES (1, '신의아바타', 1, '신의아바타', 0, 0, '홍길동', 1, 301);
INSERT INTO monthfantasy VALUES (2, '천하제일 쟁지수', 1, '천차제일 쟁지수', 0, 0, '홍길동', 1, 302);

INSERT INTO monthfantasy VALUES (3, '전장의 지배자', 1, '전장의 지배자', 0, 0, '마길동', 1, 303);

INSERT INTO monthfantasy VALUES (4, '권능의 반지', 1, '권능의 반지', 0, 0, '김철수', 1, 304);

INSERT INTO monthfantasy VALUES (5, '병검무림', 1, '병검무림', 0, 0, '김영희', 1, 305);

INSERT INTO monthfantasy VALUES (6, '환생의 정석', 1, '환생의 정석', 0, 0, '지은영', 1, 306);

INSERT INTO monthfantasy VALUES (7, '나는 마법사다', 1, '나는 마법사다', 0, 0, '홍석반', 1, 307);

INSERT INTO monthfantasy VALUES (8, '내가 키운 S급들', 1, '내가 키운 S들', 0, 0, '유형락', 1, 308);

INSERT INTO monthfantasy VALUES (9, '0살부터 슈퍼스타', 1, '0살부터 슈퍼트타', 0, 0, '안은석', 1, 309);




SELECT * FROM monthfantasy;
DROP TABLE monthfantasy;


SELECT * FROM monthfantasy
ORDER BY Monthindivilikecnt desc;

SELECT Monthindivilikecnt
FROM MonthFantasy
WHERE monthindiviKey=2;


SELECT *
FROM MONTHFANTASY
WHERE ROWNUM =1;


SELECT *
FROM MonthFantasy
order by Monthindivilikecnt DESC;
