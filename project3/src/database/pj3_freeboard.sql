create table pj3_freeboard (
	articleNO number PRIMARY KEY,
	parentNO number DEFAULT 0,
	title VARCHAR2(500) NOT NULL,
	content VARCHAR2(4000),
	imageFileName VARCHAR2(100),
	writeDate DATE DEFAULT sysdate NOT NULL,
	id VARCHAR2(50)
);

SELECT * FROM PJ3_FREEBOARD;

COMMIT;

