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
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<style type="text/css">
.commonload01 { /*상단 카테고리 전체박스*/
	font-size: 15px;
	background-color: red;
	border: 1px soild;
	width: 1400px;
	height: 70px;
	text-align: center;
	border: 3px solid black;
	margin : 0 auto;
	margin-top: -60px;
	margin-bottom: 30px;
}

.commonload02 {
	display: flex;
	width: 1380px;
	height: 50px;
	background-color: white;
	margin-bottom: 20px;
	margin-top: 10px;
	margin-left: 10px;
	border: 3px solid black;
}

.commonload03 {
	flex: 1;
	border: 3px solid black;
	padding-top: 10px;
}

.commonload03 a {
	text-decoration: none;
	color: black;
}

.commonload03:hover { /*개별 박스에 마우스 올렸을 때 배경색 변하게 처리*/
	background-color: #A3E4DB;
}

</style>
</head>
<body>
	<div class="commonload01">
		<div class="commonload02">
			<div class="commonload03">
				<a href="/project3/views/5_loadofring/0_test/0_default.jsp">반지
					자격 테스트</a>
			</div>
			<div class="commonload03">
				<a href="#">세계관/캐릭터</a>
			</div>
			<div class="commonload03">
				<a href="#">거래</a>
			</div>
			<div class="commonload03">
				<a href="#">릴레이 서사</a>
			</div>
			<div class="commonload03">
				<a href="#">자랑하기</a>
			</div>
			<div class="commonload03">
				<a href="#">제왕 소식</a>
			</div>
		</div>
	</div>
</body>
</html>