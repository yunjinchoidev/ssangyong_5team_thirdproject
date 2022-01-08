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

body{
	border : 3px solid;
}
.myfancywrap{
	display: flex;
	padding-left: 320px;
}

.myfancywrap img{
	width: 100px;
	height: 100px;
	border: 3px solid;
	flex : 1;
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
			<p> 판타스틱들..</p>
			<table>
				<tr><td>1</td><td>####</td></tr>
				<tr><td>2</td><td>####</td></tr>
				<tr><td>3</td><td>####</td></tr>
				<tr><td>4</td><td>####</td></tr>
				<tr><td>5</td><td>####</td></tr>
			</table>
			
			<input type="button" value="나의 판타스틱 메인으로">
			<input type="button" value="글 쓰기">
			
		</div>
	</div>





	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>