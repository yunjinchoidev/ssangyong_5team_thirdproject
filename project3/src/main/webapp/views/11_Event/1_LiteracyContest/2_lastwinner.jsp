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
<style>

</style>
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
	

	<div class="contents">
		<div class="cards">
			<h1>작년의 우승자들</h1>
			<p> ㅏㅈ년에 
			
			<div>
				<img src="example.jpg" style="width:300px; height:300px">
				<img src="example.jpg" style="width:300px; height:300px">
				<img src="example.jpg" style="width:300px; height:300px">
			</div>

			<div>
				<img src="example.jpg" style="width:300px; height:300px">
			</div>
			
			<ul>
				<li><a href="#">공모하기(apply)</a></li>
				<li><a href="#">지난 해 최우승작</a></li>
				<li><a href="#">우승자 인터뷰</a></li>
			</ul>


		</div>
	</div>




	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>