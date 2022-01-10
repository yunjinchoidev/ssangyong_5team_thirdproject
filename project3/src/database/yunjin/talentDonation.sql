CREATE TABLE talentDonation(
	talenKey	NUMBER PRIMARY key,
	talentYouWant	VARCHAR2(100),
	talenChildPer	VARCHAR2(100),
	talenDate	VARCHAR2(100),
	talenLoc	VARCHAR2(100),
	mKey NUMBER CONSTRAINT talentDonation_mKey_fk REFERENCES MEMBER(mKey)
);