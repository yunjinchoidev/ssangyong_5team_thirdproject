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
<link href="https: //fonts.googleapis.com/css2? family= Parisienne & display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/project3/views/CSS/commoncss.css">
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<link
	href="https: //fonts.googleapis.com/css2? family= Parisienne & display=swap"
	rel="stylesheet">
<style>
/*전체 헤더 영역 초기화*/

body{
}
.header {
	width: 100%;
	height: 200x;
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
	width: 250px;
	height: 125px;
	margin-left: 850px;
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


/*헤더 두번째 박스*/
.headup02{
	width:100%;
	height: 75px;
	margin-top: 10px;
}

.tab{
	width:100%;
	height : 100%;
	text-align: center;
	margin : 0;
	padding: 0; 

}

.fansort{
	color : white;
	font-size: 30px;
}
.fansort a{
	color : white;
	font-size: 30px;
	text-decoration: none;
}



.tab img{
}





</style>
<script type="text/javascript">
	
</script>
</head>
<body>

	<header>
		<div class="header">
			<div class="headup01">
				<a href="/project3/views/0_Main/aboutus.jsp"><img src="/project3/views/Media/logo5.png" id="logo"></a>
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
						<a href="/project3/views/3_login/Login.jsp"><img src="/project3/views/Media/account3.png"
							id="acc"></a> <a href="#"><img
							src="/project3/views/Media/shopping-cart2.png"></a>
					</div>
				</div>
			</div>
			<div class="headup02">
				<table class="tab">
					<colgroup>
							<col style="width: 26%;">
							<col style="width: 16%;">
							<col style="width: 16%;">
							<col style="width: 16%;">
							<col style="width: 26%;">
						</colgroup>
					<tr>
						<td><img src="/project3/views/Media/leftbong.png"></td>
						<td class="fansort"><a href="/project3/views/9_Marvel/marvelmain.jsp">Marvel</a></td>
						<td class="fansort"><a href="/project3/views/8_HarryPotter/main.jsp">HarryPotter</a></td>
						<td class="fansort"><a href="/project3/views/5_LoadOfRing/loadmain.jsp">The Load</a></td>
						<td><img src="/project3/views/Media/rightbong.png"></td>
					</tr>
				</table>
			</div>
		</div>
	</header>


</body>
</html>