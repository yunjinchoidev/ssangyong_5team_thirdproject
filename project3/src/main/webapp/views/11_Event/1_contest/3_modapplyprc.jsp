A<%@page import="literacyContest.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />  
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/project3/views/CSS/commoncss.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<style>
.literapplytab{
	width : 1000px;
	height : 800px;
	border: 3px solid white;
	font-size: 30px;
}


input[type=text], input[type=date], select{
	width:500px;
	height: 50px;
	font-size: 30px;
	text-align: center;
}
.literapplytab td, .literapplytab tr, .literapplytab table{
	border : 3px solid yellow;
		font-size: 30px;
}

</style>
<script>
function check() {
    if (!confirm("확인(예) 또는 취소(아니오)를 선택해주세요.")) {
        alert("취소(아니오)를 누르셨습니다.");
    } else {
        alert("확인(예)을 누르셨습니다.");
    }
}

window.location.href="0_default.jsp"

</script>
</head>
<body>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

	<!-- S헤더 삽입 -->
	<jsp:include page="/views/11_Event/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->


<jsp:useBean id="conapply" class="literacyContest.LiteraryContestVO"></jsp:useBean>

<%
int literKey=0;
String literKeyS = request.getParameter("literKey");
if(literKeyS!=null) {literKey=Integer.parseInt(literKeyS);};

String literTitle = request.getParameter("literTitle"); if(literTitle==null) {literTitle="";};
String literContents = request.getParameter("literContents"); if(literContents==null) {literContents="";};
String literSort = request.getParameter("literSort"); if(literSort==null) {literSort="";};
String literCareer = request.getParameter("literCareer"); if(literCareer==null) {literCareer="";};

int literProductionDate=0;
String literProductionDateS = request.getParameter("literProductionDate");
if(literProductionDateS!=null) {literProductionDate=Integer.parseInt(literProductionDateS);};


String literSubmissionDateS = request.getParameter("literSubmissionDateS"); if(literSubmissionDateS==null) {literSubmissionDateS="";};


int mKey=0;
String mKeyS = request.getParameter("mKey");
if(mKeyS!=null) {mKey=Integer.parseInt(mKeyS);}; 

int fileKey=0;
String fileKeyS = request.getParameter("fileKey");
if(fileKeyS!=null) {fileKey=Integer.parseInt(fileKeyS);}; 


LiteraryContestDAO dao = new LiteraryContestDAO();
dao.updatelt(new LiteraryContestVO(
		literKey,literTitle,literContents,
		literSort,literCareer,
		literProductionDate,literSubmissionDateS,
		mKey, fileKey));

%>





	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>