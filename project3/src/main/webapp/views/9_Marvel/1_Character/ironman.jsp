<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이언맨 캐릭터 소개</title>
<style>
</style>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->
	<div class="wrap">
		<div class="contents">
			<h2 class="en">IRON MAN</h2>
			<p>Anthony Edward Stark</p>
			<ul class="inner">
				<li><a href="#"></a>
					<h3>01</h3>
					<div class="txtBox">
						<p class="tit">Information</p>
						<p class="txt">아이언맨의 정보를 확인해보세요!</p>
					</div> </a></li>

				<li><a href="#"></a>
					<h3>02</h3>
					<div class="txtBox">
						<p class="tit">Power</p>
						<p class="txt">아이언맨의 능력을 확인해보세요!</p>
					</div> </a></li>
				<li><a href="#"></a>
					<h3>03</h3>
					<div class="txtBox">
						<p class="tit">Connections</p>
						<p class="txt">아이언맨과 연관된 캐릭터를 확인해보세요!</p>
					</div> </a></li>
			</ul>
		</div>
		<div id="footer">
			<!-- S푸터 삽입 -->
			<jsp:include page="/views/common/commonfooter.jsp">
				<jsp:param name="name" value="go" />
			</jsp:include>
			<!-- E푸터 삽입 -->
		</div>
</body>
</html>