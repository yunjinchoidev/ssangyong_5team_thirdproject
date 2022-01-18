CREATE TABLE storyrequestT(
	requKey	NUMBER primary KEY,
	requTitle	VARCHAR2(100),
	requContents	VARCHAR2(4000),
	requPrice	NUMBER,
	requModicnt	NUMBER,
	requSort	VARCHAR2(100),
	mKey	NUMBER CONSTRAINT stotyrequestT_mKey_fk REFERENCES MEMBER(mKey),
	proCateKey NUMBER CONSTRAINT stotyrequestT_proCateKey_fk REFERENCES productcategory(proCateKey),
	fileKey	varchar2(100) CONSTRAINT stotyrequestT_fileKey_fk REFERENCES attachedfileTest(fileKey)
);

INSERT INTO storyrequestT VALUES (0, NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL); 

SELECT * FROM STORYREQUESTT