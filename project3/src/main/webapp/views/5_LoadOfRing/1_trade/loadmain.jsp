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

</head>

<body>


<script>
AOS.init();
</script>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->


	<div>
	
	</div>

	

	<!-- 반지의 제왕 디테일 -->
	<!-- 상단 메뉴 -->
	<div class="contents" >
		<div class="cards" >
		</div>
	</div>


	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->


</body>
</html>