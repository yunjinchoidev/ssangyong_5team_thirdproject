CREATE TABLE attachedfile(
	fileKey	NUMBER PRIMARY KEY,
	fileName	VARCHAR2(100),
	filePath	VARCHAR2(100),
	fileType	VARCHAR2(100),
	fileSize	VARCHAR2(100),
	fileDate	DATE
);

SELECT *
FROM ATTACHEDFILE
ORDER BY filekey;

DELETE attachedfile WHERE filekey=4;

UPDATE ATTACHEDFILE
SET filepath='lec10.png'
WHERE filekey=210;


INSERT INTO attachedfile VALUES (201, '그림1', 'project3', 'jpg', '24mb', sysdate);

INSERT INTO attachedfile VALUES (206, '강의', 'l06.jpg', 'jpg', '2mb', sysdate);
INSERT INTO attachedfile VALUES (207, '강의', 'l07.jpg', 'jpg', '2mb', sysdate);
INSERT INTO attachedfile VALUES (208, '강의', 'l08.jpg', 'jpg', '2mb', sysdate);
INSERT INTO attachedfile VALUES (209, '강의', 'l09.jpg', 'jpg', '2mb', sysdate);
INSERT INTO attachedfile VALUES (210, '강의', 'l10.jpg', 'jpg', '2mb', sysdate);

COMMIT;

INSERT INTO Attachedfile VALUES (1,'1','1','1','1', to_date('1111/11/11','YYYY/MM/DD'));

SELECT filepath
FROM attachedfile
