DROP TABLE attachedfileTest;

CREATE TABLE attachedfileTest(
	fileKey	varchar2(100) PRIMARY KEY,
	fileName	VARCHAR2(100),
	filePath	VARCHAR2(100),
	fileType	VARCHAR2(100),
	fileSize	VARCHAR2(100),
	fileDate	DATE
);

ALTER TABLE attachedfile MODIFY(fileKey varchar2(100));


SELECT *
FROM ATTACHEDFILE
ORDER BY filekey;

DELETE attachedfile WHERE filekey=4;

UPDATE ATTACHEDFILE
SET filepath='lec10.png'
WHERE filekey=210;


INSERT INTO attachedfileTest VALUES (201, '그림1', 'project3', 'jpg', '24mb', sysdate);
INSERT INTO attachedfileTest VALUES (206, '강의', 'l06.jpg', 'jpg', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES (207, '강의', 'l07.jpg', 'jpg', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES (208, '강의', 'l08.jpg', 'jpg', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES (209, '강의', 'l09.jpg', 'jpg', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES (210, '강의', 'l10.jpg', 'jpg', '2mb', sysdate);

COMMIT;

INSERT INTO AttachedfileTest VALUES (1,'1','1','1','1', to_date('1111/11/11','YYYY/MM/DD'));
INSERT INTO AttachedfileTest VALUES ('1.jpg','1','1','1','1', to_date('1111/11/11','YYYY/MM/DD'));

SELECT filepath
FROM attachedfile



INSERT INTO attachedfileTest VALUES (301, '이달의판타지1', 'mf01.png', 'png', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES (302, '이달의판타지2', 'mf02.png', 'png', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES (303, '이달의판타지3', 'mf03.png', 'png', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES (304, '이달의판타지4', 'mf04.png', 'png', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES (305, '이달의판타지5', 'mf05.png', 'png', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES (306, '이달의판타지6', 'mf06.png', 'png', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES (307, '이달의판타지7', 'mf07.png', 'png', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES (308, '이달의판타지8', 'mf08.png', 'png', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES (309, '이달의판타지9', 'mf09.png', 'png', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES (309, '이달의판타지9', 'mf09.png', 'png', '2mb', sysdate);



INSERT INTO attachedfileTest VALUES (401, '반지의제왕물품1', '401.png', 'png', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES (401, '반지의제왕물품1', '401.png', 'png', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES ('401.jpg', '반지의제왕물품1', '401.jpg', 'png', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES (701, '반지의제왕물품1', '401.jpg', 'png', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES (801, '스토리매매', '401.jpg', 'png', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES ('701.jpg', '반지의제왕물품1', '401.jpg', 'png', '2mb', sysdate);
INSERT INTO attachedfileTest VALUES ('801.jpg', '스토리매매', '401.jpg', 'png', '2mb', sysdate);

COMMIT;

SELECT *
FROM attachedfileTest;

