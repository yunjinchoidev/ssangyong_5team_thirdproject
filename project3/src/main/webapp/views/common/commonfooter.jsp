<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
<link rel="stylesheet" type="text/css" href="/project3/views/CSS/commoncss.css">
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<style type="text/css">

/*푸터 전체 배경 색깔 지정, height를 일부러 넣어줌(주의)*/
.footer {
	background-color: #2c3e50;
	width: 100%;
	height: 300px;
}

.footerlogo {
	width: 400px;
	height: 300px;
	padding-left: 100px;
	float : left;
}

.footerlogo img{
	display: inline-block;
	width: 300px;
	height: 300px;
}

/*5조 설명 박스 꾸미기*/
.bottom {
	border: 3px solid;
	width: 500px;
	height: 200px;
	font-size: 20px;
	font-style: italic;
	font-weight: bolder;
	color: white;
	display : inline-block;
	margin-top: 50px;
}

.bottom ul {
	list-style: none;
}
</style>


</head>
<body>
	<footer>
		<div class="footer">
			<div class="footerlogo">
				<a href="#"> <img src="/project3/views/Media/footerFantasylogo.png"></a>
			</div>
			<div class="bottom">
				<ul>
					<li>쌍용 3번째 프로젝트</li>
					<li>제작 : <5조> 마혜민, 장훈주, 최윤진</li>
					<li>프로젝트 기간 : 21.12.30 ~ 22.1.21</li>
					<li>연락처 : XXX-XXXX-XXXX</li>
					<li>영업시간 : 연중무휴</li>
				</ul>
			</div>
		</div>
	</footer>
</body>
</html>