DROP TABLE PURCHASEREVIEW;
 CREATE TABLE purchasereview(
	purchKey NUMBER PRIMARY KEY,
	contents	VARCHAR2(100),
	purchScore	NUMBER,
	purchlikecnt	NUMBER,
	purchdontlikecnt	NUMBER,
	purchview	NUMBER,
	orderKey	NUMBER CONSTRAINT purchasereview_orderKey_fk REFERENCES fvorder(orderKey),
	mKey NUMBER CONSTRAINT purchasereview_mKey_fk REFERENCES member (mKey),
	fileKey	NUMBER CONSTRAINT purchasereview_fileKey_fk REFERENCES attachedfile(fileKey)
);

drop table attachedfile CASCADE CONSTRAINTS;
drop table attachedfileTest  CASCADE CONSTRAINTS;
drop table block  CASCADE CONSTRAINTS;
drop table board  CASCADE CONSTRAINTS;
drop table boardcategory  CASCADE CONSTRAINTS;
drop table cart  CASCADE CONSTRAINTS;
drop table cartT  CASCADE CONSTRAINTS;
drop table COMMENT  CASCADE CONSTRAINTS;
drop table customstore  CASCADE CONSTRAINTS;
drop table customstoreT  CASCADE CONSTRAINTS;
drop table faq  CASCADE CONSTRAINTS;
drop table fvorder  CASCADE CONSTRAINTS;
drop table fvorderTT  CASCADE CONSTRAINTS;
drop table inquiry  CASCADE CONSTRAINTS;
drop table lecture  CASCADE CONSTRAINTS;
drop table lectureT  CASCADE CONSTRAINTS;
drop table literaryContest  CASCADE CONSTRAINTS;
drop table lord CASCADE CONSTRAINTS;
drop table marvel CASCADE CONSTRAINTS;
drop table MEMBER CASCADE CONSTRAINTS;
drop table monthfantasy CASCADE CONSTRAINTS;
drop table notice CASCADE CONSTRAINTS;
drop table officialstore CASCADE CONSTRAINTS;
drop table officialstoreT CASCADE CONSTRAINTS;
drop table orderstaus CASCADE CONSTRAINTS;
drop table potter CASCADE CONSTRAINTS;
drop table productcategory CASCADE CONSTRAINTS;
drop table purchasereview CASCADE CONSTRAINTS;
drop table readingclub CASCADE CONSTRAINTS;
drop table rentalstore CASCADE CONSTRAINTS;
drop table rentalstoreT CASCADE CONSTRAINTS;
drop table report CASCADE CONSTRAINTS;
drop table stotyrequest CASCADE CONSTRAINTS;
drop table stotyrequestT CASCADE CONSTRAINTS;
drop table talentapply CASCADE CONSTRAINTS;
drop table talentDonation CASCADE CONSTRAINTS;
drop table withdrawal CASCADE CONSTRAINTS;





DROP TABLE attachedfile
DROP TABLE attachedfileTest
DROP TABLE block
DROP TABLE board
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE







create table attachedfile;--
create table attachedfileTest;
create table block;
create table board;
create table boardcategory;--
create table cart;
create table cartT;
create table COMMENT;
create table customstore;
create table customstoreT;
create table faq;
create table fvorder;
create table fvorderTT;
create table inquiry;
create table lecture;
create table lectureT;
create table literaryContest;
create table lord;
create table marvel;
create table MEMBER;
create table monthfantasy;
create table notice;
create table officialstore;
create table officialstoreT;
create table orderstaus;
create table potter;
create table productcategory;
create table purchasereview;
create table readingclub;
create table rentalstore;
create table rentalstoreT;
create table report;
create table stotyrequest;
create table stotyrequestT;
create table talentapply;
create table talentDonation;
create table withdrawal;


