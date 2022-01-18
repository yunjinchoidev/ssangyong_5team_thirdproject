CREATE TABLE productCategory(
	proCateKey	NUMBER PRIMARY KEY,
	proCateName	VARCHAR2(100),
	proLagreCate	VARCHAR2(100),
	proMiddleCate	VARCHAR2(100),
	proSmallCate	VARCHAR2(100)
);

SELECT * FROM productCategory;

INSERT INTO productCategory VALUES (1, '공식반지', '반지의제왕', '악세사리', '공용');
INSERT INTO productCategory VALUES (2, '공식마블', '마블', '마블', '공용');
INSERT INTO productCategory VALUES (3, '공식해리포터', '해리포터', '해리포터', '공용');
INSERT INTO productCategory VALUES (4, '렌탈', '반지의제왕', '악세사리', '공용');
INSERT INTO productCategory VALUES (5, '1:1 거래', '반지의제왕', '악세사리', '공용');
INSERT INTO productCategory VALUES (6, '강의', '반지의제왕', '악세사리', '공용');
INSERT INTO productCategory VALUES (7, '스토리매매', '반지의제왕', '악세사리', '공용');

COMMIT;