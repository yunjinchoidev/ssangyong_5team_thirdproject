<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>common header</title>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<link
	href="https: //fonts.googleapis.com/css2? family= Parisienne & display=swap"
	rel="stylesheet">
<style>
/*전체 헤더 영역 초기화*/
.header {
	width: 100%;
	height: 200px;
	background-color: black;
}

/*header를 headup01과 headup02로 나눔*/
.headup01 {
	width: 100%;
	height: 125px;
}

.headup02 {
	width: 100%;
	height: 75px;
}

/*로고 크기 설정*/
#logo {
	width: 125px;
	height: 125px;
	margin-left: 900px;
}

/* 최우측 최상단 메뉴 */
.headermenu01 {
	width: 300px;
	height: 50px;
	display: inline-block;
	margin-right: 30px;
}

.headermenu01 ul li {
	display: inline-block;
	color: white;
	font-size: 25px;
	padding-left: 10px;
	text-decoration: none;
}

.headermenu01 ul li a {
	text-decoration: none;
	color: white;
}

.headermenu02 {
	width: 300px;
	height: 50px;
	display: inline-block;
	margin-top: 5px;
}

.headermenu02 img {
	width: 60px;
	height: 50px;
	display: inline-block;
	padding-left: 30px;
}

.headermenuwrap {
	float: right;
}

#acc {
	margin-left: 60px;
}

.headup01:::after {
	content: '';
	display: block;
	clear: both;
}

.headup02 {
	padding-top: 10px;
}

.headup02box {
	display: flex;
	width: 50%;
	padding-left: 30%;
	font-size: 50px;
}

.headup02box div {
	flex: 1;
}

.headup02box div a {
	flex: 1;
	color: white;
	text-decoration: none;
}

#left {
	width: 500px;
	height: 50px;
	display: inline-block;
}

#right {
	width: 500px;
	height: 50px;
	display: inline-block;
}

.head2wrap {
	visibility: hidden;
}

.headup02{
	width:100%;	
}
.headup02 img {
	display: inline-block;
}

.wrap{
	display:flex;
	width:100%;
}

.child{
	flex:1;
	text-decoration: none;
	font-size: 50px;
	color : white;
}


</style>
<script type="text/javascript">
	
</script>
</head>
<body>

	<header>
		<div class="header">
			<div class="headup01">
				<a href="#"><img src="/project3/views/Media/logo2.png" id="logo"></a>
				<div class="headermenuwrap">
					<div class="headermenu01">
						<ul>
							<li><a href="#">서비스</a></li>
							<li><a href="#">스토어</a></li>
							<li><a href="#">이벤트</a></li>
						</ul>
					</div>
					<br>
					<div class="headermenu02">
						<a href="#"><img src="/project3/views/Media/account2.png"
							id="acc"></a> <a href="#"><img
							src="/project3/views/Media/shopping-cart2.png"></a>
					</div>
				</div>
			</div>
			<div class="headup02">
				<div class="wrap" >
					<div class="child">
						<img src="/project3/views/Media/go1.png" id="left">
					</div>
					<div class="child">
						<a href="#">Marvel</a>
						<a href="#">HarryPotter</a>
						<a href="#">The Load</a>
					</div>
					<div class="child">
						<img src="/project3/views/Media/go2.png" id="right">
					</div>
				</div>
			</div>
		</div>
	</header>


</body>
</html>