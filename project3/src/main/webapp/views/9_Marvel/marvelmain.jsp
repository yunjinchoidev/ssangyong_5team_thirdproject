<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마블-메인페이지</title>
<style>
body {
	background-color: #111111;
}

button {
	font-style: italic;
	color: white;
	width: 100px;
	height: 40px;
	font-weight: bold;
	border: solid 3px #5D4283;
	background-color: rgba(0, 0, 0, 0);
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
}

button:hover {
	font-style: italic;
	color: white;
	width: 100px;
	height: 40px;
	font-weight: bold;
	background-color: #5D4283;
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
}

#marvelLogo {
	position: absolute;
	left: 500px;
	top: 300px;
}

#marvelBanner {
	position: absolute;
	top: 1000px;
	left: 300px;
}

#marvelBannerText {
	color: white;
	font-size: 20pt;
	position: absolute;
	top: 1350px;
	left: 850px;
}

#marvelShop {
	position: absolute;
	top: 1700px;
	left: 800px;
}

#mavelShopText {
	color: white;
	font-size: 20pt;
	position: absolute;
	top: 1900px;
	left: 450px;
}

#mavelBoard {
	position: absolute;
	top: 2400px;
	left: 300px;
}

#mavelBoardText {
	color: white;
	font-size: 20pt;
	position: absolute;
	top: 2700px;
	left: 850px;
}
</style>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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

	<div id="marvelLogo">
		<img src="marvelmedia/marvellogo.png">
	</div>

	<!-- 마블캐릭터 -->
	<div id="marvelBanner" data-aos="fade-up">
		<img src="marvelmedia/marvelbanner.png" width="800px" height="400px">
	</div>
	<div id="marvelBannerText" data-aos="fade-up">
		<h1>좋아하는 캐릭터를 선택해주세요!</h1>
		<button type="button" style="position: absolute;">캐릭터 선택</button>
	</div>

	<!-- 스토어 이동 -->
	<div id="marvelShop" data-aos="fade-up">
		<img src="marvelmedia\marvelshop.png" width="600px" height="400px">
	</div>
	<div id="marvelShopText" data-aos="fade-up">
		<h1>쇼핑할 준비는 되셨나요?</h1>
		<button type="button" style="position: absolute;">스토어 이동</button>
	</div>

	<div id="marvelBoard" data-aos="fade-up">
		<img src="marvelmedia\marvelboard.png" width="600px" height="400px">
	</div>
	<div id="mavelBoardText" data-aos="fade-up">
		<h1>마블에 관련된 이야기를 나누어볼까요?</h1>
		<button type="button" style="position: absolute;">게시판 이동</button>
	</div>

	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->
</body>
</html>