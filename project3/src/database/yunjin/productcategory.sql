CREATE TABLE productCategory(
	proCateKey	NUMBER PRIMARY KEY,
	proCateName	VARCHAR2(100),
	proLagreCate	VARCHAR2(100),
	proMiddleCate	VARCHAR2(100),
	proSmallCate	VARCHAR2(100)
);

SELECT * FROM productCategory;

INSERT INTO productCategory VALUES (201, '반지', '반지의제왕', '악세사리', '공용');
INSERT INTO productCategory VALUES (401, '반지', '반지의제왕', '악세사리', '공용');
INSERT INTO productCategory VALUES (501, '렌탈', '반지의제왕', '악세사리', '공용');

COMMIT;