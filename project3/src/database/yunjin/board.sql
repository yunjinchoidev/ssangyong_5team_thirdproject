DELETE FROM board;
DROP TABLE board;

CREATE TABLE Board(
	boPostKey	NUMBER PRIMARY KEY,
	mKey NUMBER CONSTRAINT Board_mKey_fk REFERENCES member (mKey),
	fileKey	NUMBER CONSTRAINT Board_fileKey_fk REFERENCES attachedfile(fileKey),
	boCateKey	NUMBER CONSTRAINT Board_boCateKey_fk REFERENCES BoardCategory(boCateKey),
	boWriter	VARCHAR2(100),
	boWriterPass	VARCHAR2(100),
	boWriterEmail	VARCHAR2(200),
	boPostDate	DATE,
	boTitle	VARCHAR2(200),
	boModifyDate	DATE,
	boWriterIp	VARCHAR2(100),
	boViews	NUMBER,
	parentNO	NUMBER,
	boContent	VARCHAR2(4000)
);

SELECT max(boPostKey)
FROM Board;

INSERT INTO board values (1, 1, 1, 201, '홍길동',
			'abcd', 'a@naver.com', sysdate, '제목1', sysdate, '123.123.123', 
			500, 0, '콘텐츠1');
INSERT INTO board values (2, 201, 201, 201, '홍길동',
			'abcd', 'a@naver.com', sysdate, '제목1', sysdate, '123.123.123', 
			500, 1, '콘텐츠1');
INSERT INTO board values (3, 201, 201, 201, '홍길동',
			'abcd', 'a@naver.com', sysdate, '제목1', sysdate, '123.123.123', 
			500, 1, '콘텐츠1');
INSERT INTO board values (4, 201, 201, 201, '홍길동',
			'abcd', 'a@naver.com', sysdate, '제목1', sysdate, '123.123.123', 
			500, 0, '콘텐츠1');
INSERT INTO board values (5, 201, 201, 201, '홍길동',
			'abcd', 'a@naver.com', sysdate, '제목1', sysdate, '123.123.123', 
			500, 2, '콘텐츠1');
INSERT INTO board values (6, 201, 201, 201, '홍길동6',
			'abcd', 'a@naver.com', sysdate, '제목6', sysdate, '123.123.123', 
			500, 0, '콘텐츠6');
INSERT INTO board values (7, 201, 201, 201, '홍길동',
			'abcd', 'a@naver.com', sysdate, '제목7', sysdate, '123.123.123', 
			500, 6, '콘텐츠7');
INSERT INTO board values (8, 201, 201, 201, '홍길동',
			'abcd', 'a@naver.com', sysdate, '제목8', sysdate, '123.123.123', 
			500, 6, '콘텐츠8');
INSERT INTO board values (9, 201, 201, 201, '홍길동9',
			'abcd', 'a@naver.com', sysdate, '제목9', sysdate, '123.123.123', 
			500, 0, '콘텐츠9');
INSERT INTO board values (10, 201, 201, 201, '홍길동10',
			'abcd', 'a@naver.com', sysdate, '제목10', sysdate, '123.123.123', 
			500, 0, '콘텐츠10');
INSERT INTO board values (33, 201, 202, 201, '홍길동10',
			'abcd', 'a@naver.com', sysdate, '제목10', sysdate, '123.123.123', 
			500, 0, '콘텐츠10');
INSERT INTO board values (35, 201, 202, 202, '홍길동10',
			'abcd', 'a@naver.com', sysdate, '제목10', sysdate, '123.123.123', 
			500, 0, '콘텐츠10');
INSERT INTO board values (36, 201, 202, 202, '홍길동10',
			'abcd', 'a@naver.com', sysdate, '제목10', sysdate, '123.123.123', 
			500, 0, '콘텐츠10');

COMMIT;

ALTER TABLE board RENAME COLUMN bottitle TO boTitle;
ALTER TABLE board RENAME COLUMN bowriteip TO bowriterip;

SELECT * FROM board;

DROP TABLE board;

DELETE FROM board;


SELECT
	boPostKey,
	mKey,
	fileKey,
	boCateKey,
	boWriter,
	boWriterPass,
	boWriterEmail,
	boPostDate,
	LPAD(' ',4*(LEVEL-1))||BOTITLE "bottile", 
	boModifyDate,
	boWriterIp,
	boViews,
	PARENTNO ,
	boContent,
	LEVEL
FROM board
WHERE BOCateKey=202
START WITH PARENTNO=0
CONNECT BY PRIOR bopostkey=PARENTNO
ORDER BY bopostkey;





 SELECT *
	FROM Board
	WHERE boPostKey=1;	