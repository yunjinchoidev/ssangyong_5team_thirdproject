create TABLE talentapply(
	taKey	NUMBER PRIMARY KEY,
	taname	varchar2(100),
	tamytalent	VARCHAR2(100),
	taapplydate	VARCHAR2(100),
	tatime	VARCHAR2(100),
	taloc	VARCHAR2(100),
	mKey NUMBER CONSTRAINTS talentapply_mKey_fk REFERENCES member(mKey)
);


SELECT *
FROM talentapply;
