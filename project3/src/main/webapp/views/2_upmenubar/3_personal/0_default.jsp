<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>    
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="/project3/views/CSS/commoncss.css">
<style>
	.aboutus01{
		width: 50%;
		height : 40%;
		margin :0 auto;
		background-color: white;
		text-align: center;
	}
	.aboutus01 img{
		width : 300px;
		height: 300px;
	}
</style>	
	</head>
	<body>
			<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->


	<div class="contents">
		<div class="cards">
			<h1> XXXX에 오신 여러분을 환영합니다.</h1>
			<p> 이 곳은 당신의 두 번째 인격을 위한 공간입니다. <br>
				당신의 끼와 열정을 보여주십시오, <br>
				</p>
			<img src="/project3/views/Media/iwantyou.jpg">
		</div>
	</div>





	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
	</body>
</html>