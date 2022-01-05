<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반지의제왕 메인</title>
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">

<style>
body {
	width: 100%;
}

.cards {
	width: 85%;
	height: 1200px;
	background-color: #3FA796;
	font-size: 15px;
	margin: 0 auto;
	text-align: center;
}

.cards img {
	width: 300px;
	height: 300px;
}
</style>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js%22%3E"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js%22%3E"> </script>

</head>

<body>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->




	

	<!-- 반지의 제왕 디테일 -->
	<!-- 상단 메뉴 -->
	<div class="contents">
		<div class="cards">
			<h2>반지 세계에 오신 여러분을 환영합니다.</h2>
		</div>
	</div>


	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->


</body>
</html>