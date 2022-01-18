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

INSERT INTO BOARDCATEGORY VALUES(1, '서비스', '재능기부', '재능기부게시판');
INSERT INTO BOARDCATEGORY VALUES(2, '서비스', '공상하다', '공상하다게시판');
INSERT INTO BOARDCATEGORY VALUES(3, '서비스', '나의판타스틱', '나의판타스틱게시판');
INSERT INTO BOARDCATEGORY VALUES(4, '서비스', '독서클럽', '독서클럽게시판');
INSERT INTO BOARDCATEGORY VALUES(5, '서비스', '전체게시판', '전체게시판게시판');
INSERT INTO BOARDCATEGORY VALUES(6, '판타지', '마블', '마블게시판');
INSERT INTO BOARDCATEGORY VALUES(7, '판타지', '해리포터', '해리포터게시판');
INSERT INTO BOARDCATEGORY VALUES(8, '판타지', '반지의제왕', '반지의제왕게시판');
INSERT INTO BOARDCATEGORY VALUES(9, '판타지', '반지의제왕', '반지의제왕정기모임게시판');
INSERT INTO BOARDCATEGORY VALUES(10, '후기', '후기', '후기');
INSERT INTO BOARDCATEGORY VALUES(11, '고객센터', '고객센터', '고객센터');




DELETE FROM BOARDCATEGORY WHERE BOcatemain='게시판';







