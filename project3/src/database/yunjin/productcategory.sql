CREATE TABLE productCategory(
	proCateKey	NUMBER PRIMARY KEY,
	proCateName	VARCHAR2(100),
	proLagreCate	VARCHAR2(100),
	proMiddleCate	VARCHAR2(100),
	proSmallCate	VARCHAR2(100)
);

SELECT * FROM productCategory;

INSERT INTO productCategory VALUES (201, '반지', '반지의제왕', '악세사리', '공용');
INSERT INTO productCategory VALUES (202, '반지', '반지의제왕', '악세사리', '공용');
INSERT INTO productCategory VALUES (203, '반지', '반지의제왕', '악세사리', '공용');
INSERT INTO productCategory VALUES (204, '반지', '반지의제왕', '악세사리', '공용');
INSERT INTO productCategory VALUES (205, '반지', '반지의제왕', '악세사리', '공용');