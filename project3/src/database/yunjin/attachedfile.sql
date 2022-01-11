CREATE TABLE attachedfile(
	fileKey	NUMBER PRIMARY KEY,
	fileName	VARCHAR2(100),
	filePath	VARCHAR2(100),
	fileType	VARCHAR2(100),
	fileSize	VARCHAR2(100),
	fileDate	DATE
);

SELECT *
FROM ATTACHEDFILE;

DROP TABLE attachedfile;

INSERT INTO attachedfile VALUES (201, '그림1', 'project3', 'jpg', '24mb', sysdate);