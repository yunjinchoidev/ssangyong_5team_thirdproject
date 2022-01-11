<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="lecture.LectureDao"
	import="lecture.LectureVO"
	%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<style>
.lectureregtab{
	border : 3px solid yellow;
	margin : 0 auto;
	width : 1000px;
	height: 700px;
}

input[type=text]{
	width:500px;
	height: 50px;
	font-size: 40px;
}

p, td{
	color : white;
	font-size: 30px;
}
.leclin{
	 width:300px;
	 height: 150px;
	 font-size: 30px;
	 margin: 40px;
}


</style>
</head>
<body>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/10_Store/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

<%
	int lecKey=0; 
	int leclimitcnt=0; 
	int leconlineavail=0;
	int lecscore=0; 
	int proCateKey=0;
	int fileKey=0;
	
	String lecKeyS = request.getParameter("lecKey");
	if(lecKeyS!=null) {lecKey=Integer.parseInt(lecKeyS);}; 
	
	String lecName = 	request.getParameter("lecName");
	String lecTeacher = request.getParameter("lecTeacher");
	
	String leclimitcntS = request.getParameter("leclimitcnt");
	if(leclimitcntS!=null) {leclimitcnt=Integer.parseInt(leclimitcntS);}; 
	
	String leconlineavailS = request.getParameter("leconlineavail");
	if(leconlineavailS!=null) {leconlineavail=Integer.parseInt(leconlineavailS);}; 

	String lecdifficulty = request.getParameter("lecdifficulty");
	String leccontents = request.getParameter("leccontents");
	
	String proCateKeyS = request.getParameter("proCateKey");
	if(proCateKeyS!=null) {proCateKey=Integer.parseInt(proCateKeyS);}; 
	
	String lecscoreS = request.getParameter("lecscore");
	if(lecscoreS!=null) {lecscore=Integer.parseInt(lecscoreS);}; 

	String fileKeyS =request.getParameter("fileKey");
	if(fileKeyS!=null) {fileKey=Integer.parseInt(fileKeyS);}; 

	
	
	LectureDao dao = new LectureDao();
	dao.insertLec(new LectureVO(
			lecKey, lecName, lecTeacher,
			leclimitcnt,leconlineavail, lecdifficulty, 
			leccontents, lecscore, proCateKey, 
			fileKey));
	
%>



	<div class="contents">
		<div class="cards">
			<p> 강의 등록하기</p>
			<form>
			<table border class="lectureregtab">
			<colgroup>
				<col width="30%">
			</colgroup>
				<tr><td>강의 고유 번호</td><td><input type="text" name="lecKey"></td></tr>
				<tr><td>강의 명</td><td><input type="text" name="lecName"></td></tr>
				<tr><td>강사</td><td><input type="text" name="lecTeacher"></td></tr>
				<tr><td>수강제한인원</td><td><input type="text" name="leclimitcnt"></td></tr>
				<tr><td>온라인 여부</td><td><input type="text" name="leconlineavail"></td></tr>
				<tr><td>난이도</td><td><input type="text" name="lecdifficulty"></td></tr>
				<tr><td>강의 내용</td><td><input type="text" name="leccontents"></td></tr>
				<tr><td>수강 별점</td><td><input type="text" name="lecscore"></td></tr>
				<tr><td>강의 분류</td><td><input type="text" name="proCateKey"></td></tr>
				<tr><td>파일명</td><td><input type="text" name="fileKey"></td></tr>
			</table>
			
			
				<input type="button" value="메인으로이동" onclick="location.href='0_default.jsp'" class="leclin">
				<input type="submit" value="등록하기" onclick="location.href='0_default.jsp'" class="leclin">
			</form>
			
		</div>
	</div>


	


	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>