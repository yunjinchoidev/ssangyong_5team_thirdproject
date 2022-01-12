<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<style>
#talentreviewtab{
	width:800px;
	height: 800px;
	border : 2px solid black;
	margin: 0 auto;
}
</style>
</head>
<body>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

	<!-- S서비스메뉴 삽입 -->
	<jsp:include page="/views/2_Service/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E서비스 메뉴삽입 -->


	<div class="contents">
		<div class="cards">
					<table id="talentreviewtab" border>
					<tr><td>번호</td><td>진행상태</td><td>제목</td></tr>
					<tr><td>##</td><td>##</td><td>##</td></tr>
					<tr><td>##</td><td>##</td><td>##</td></tr>
					<tr><td>##</td><td>##</td><td>##</td></tr>
					<tr><td>##</td><td>##</td><td>##</td></tr>
					<tr><td>##</td><td>##</td><td>##</td></tr>
					<tr><td>##</td><td>##</td><td>##</td></tr>
				</table>
		</div>
	</div>





	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>