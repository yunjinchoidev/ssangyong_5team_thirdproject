DROP TABLE orderstatus;

CREATE TABLE orderstatus(
	orderstatus	VARCHAR2(100) PRIMARY KEY,
	receiptstatus	VARCHAR2(100)
)

INSERT INTO orderstatus VALUES ('배송중', '미수령');
INSERT INTO orderstatus VALUES ('배송완료', '수령');
INSERT INTO orderstatus VALUES ('배송준비', '미수령');
INSERT INTO orderstatus VALUES ('배송취소', '미수령');

SELECT * FROM ORDERSTATUS;