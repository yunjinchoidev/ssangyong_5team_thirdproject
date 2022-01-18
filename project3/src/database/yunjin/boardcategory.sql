DROP TABLE boardcategory;

CREATE TABLE BoardCategory(
	boCateKey	NUMBER PRIMARY KEY,
	boCateMain	VARCHAR2(50),
	boCateMiddle	VARCHAR2(50),
	boCateSub	VARCHAR2(50)
);

SELECT *
FROM BOARDCATEGORY
ORDER BY bocatekey;

DROP TABLE BOARDCATEGORY;

UPDATE BOARDCATEGORY 
SET bocatemain = '판타지',
	bocatemiddle ='반지의제왕게시판',
	bocatesub ='반지의제왕게시판'
WHERE bocatekey=303;

COMMIT;

UPDATE BOARDCATEGORY 
SET bocatemain = '서비스',
	bocatemiddle ='공상하다',
	bocatesub ='공상하다게시판'
WHERE bocatekey=202;

INSERT INTO BOARDCATEGORY VALUES(203, '서비스', '나의판타스틱', '나의판타스틱게시판');
INSERT INTO BOARDCATEGORY VALUES(204, '서비스', '독서클럽', '독서클럽게시판');
INSERT INTO BOARDCATEGORY VALUES(205, '서비스', '전체게시판', '전체게시판게시판');

INSERT INTO BOARDCATEGORY VALUES(301, '판타지', '마블', '마블게시판');
INSERT INTO BOARDCATEGORY VALUES(302, '판타지', '해리포터', '해리포터게시판');
INSERT INTO BOARDCATEGORY VALUES(303, '판타지', '반지의제왕', '반지의제왕게시판');
INSERT INTO BOARDCATEGORY VALUES(304, '판타지', '반지의제왕', '반지의제왕정기모임게시판');




DELETE FROM BOARDCATEGORY WHERE BOcatemain='게시판';