CREATE TABLE BoardCategory(
	boCateKey	NUMBER PRIMARY KEY,
	boCateMain	VARCHAR2(50),
	boCateMiddle	VARCHAR2(50),
	boCateSub	VARCHAR2(50)
);

SELECT * FROM BoardCategory;

DROP TABLE BoardCategory;

INSERT INTO BOARDCATEGORY VALUES (201, '게시판', '반지의제왕', '자유게시판');
INSERT INTO BOARDCATEGORY VALUES (202, '게시판', '나의 판타지', '게시판');
INSERT INTO BOARDCATEGORY VALUES (203, '게시판', '나의 판타스틱', '게시판');
INSERT INTO BOARDCATEGORY VALUES (204, '게시판', '재능기부', '게시판');
