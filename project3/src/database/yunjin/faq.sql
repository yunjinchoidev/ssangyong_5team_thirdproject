DELETE FROM faq;

DROP TABLE faq;

CREATE TABLE faq(
	faqKey	NUMBER PRIMARY key,
	faqTitle	VARCHAR(100),
	faqContents	VARCHAR(4000),
	faqDate	DATE,
	faqView	NUMBER
)