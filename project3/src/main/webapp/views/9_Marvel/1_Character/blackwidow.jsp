<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>블랙위도우 캐릭터 소개</title>
<style>
* {
	padding: 0;
	margin: 0;
}

li {
	list-style: none;
}

a {
	text-decoration: none;
	color: white;
}

/* layout */
.wrap {
	width: 100%;
	overflow: hidden;
	border: 1px solid white;
}

.contents {
	width: 1000px;
	height: 500px;
	margin: 80px auto;
	text-align: center;
	padding: 50px 50px box-sizing: border-box;
	border: 3px solid white;
	position: relative;
}

}
.contents h2 {
	font-size: 200px;
	font-weight: normal;
	margin-bottom: 30px;
}

.contents p {
	font-size: 14px;
	font-color: white;
}

.contents ul.inner {
	overflow: hidden;
	width: 68%;
	text-align: center;
	position: absolute;
	right: 5%;
	top: 45%;
	padding-right: 10px;
	padding-bottom: 10px;
}

.contents ul.inner li {
	float: left;
	width: 32.32%;
	margin-right: 1.5%;
	padding: 10px 20px 0;
	box-sizing: border-box;
	height: 250px;
	box-shadow: 5px 5px 10px
}

.contents ul.inner li:nth-child(3) {
	margin-right: 0;
}

.contents ul.inner h3 {
	font-size: 55px;
	color: white;
}

.contents ul.inner .txtBox {
	margin-top: 20px;
}

.contents ul.inner .txtBox .tit {
	font-weight: bold;
	margin-bottom: 10px;
}

.contents ul.inner .txtBox .tit {
	font-size: 15px;
	margin-bottom: 20px;
}

</style>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
</head>
<body>
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

	<div class="wrap">
		<div class="contents">
		    <img src="../marvelmedia/blackwidow_image.png" style="margin-top:280px; width: 450px; height: 400px;">
			<h2 class="en" style="color: white; font-size: 45px;">BLACK WIDOW</h2>
			<p style="color: white; font-size: 25px;">Natalia Alianovna Romanoff</p>
			<ul class="inner">
				<li><a href="#" >
					<h3>01</h3>
					<div class="txtBox">
						<p class="tit" style="color: white; font-size: 35px;">Information</p>
						<p class="txt" style="color: white">블랙위도우에 대한 정보를 확인해보세요!</p>
					</div></a></li>

				<li><a href="#" >
					<h3>02</h3>
					<div class="txtBox">
						<p class="tit" style="color: white; font-size: 35px;">Power</p>
						<p class="txt" style="color: white">블랙위도우의 능력을 확인해보세요!</p>
					</div></a></li>
				<li><a href="#">
					<h3>03</h3>
					<div class="txtBox">
						<p class="tit" style="color: white; font-size: 35px;">Connections</p>
						<p class="txt" style="color: white">블랙위도우와 연관된 캐릭터를 확인해보세요!</p>
					</div></a></li>
			</ul>
		</div>
		<div id="footer">
			<!-- S푸터 삽입 -->
			<jsp:include page="/views/common/commonfooter.jsp">
				<jsp:param name="name" value="go" />
			</jsp:include>
			<!-- E푸터 삽입 -->
		</div>
		</div>
</body>
</html>