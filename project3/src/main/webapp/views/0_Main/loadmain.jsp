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
<link rel="stylesheet" type="text/css" href="/project3/views/CSS/commoncss.css">
<style>
	body{
		width:100%;
	}
</style>
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
		<div class="up">
			<div class="up01">
				<div class="child">
					<a href="#">안녕하세요 최윤진입니다.</a>
				</div>
				<div class="child">
					<a href="#">세계관</a>
				</div>
				<div class="child">
					<a href="#">장터</a>
				</div>
			</div>
			<div class="up02">
				<div class="child">
					<a href="#">제왕장터</a>
				</div>
				<div class="child">
					<a href="#">자랑하기</a>
				</div>
				<div class="child">
					<a href="#">제왕 소식</a>
				</div>
			</div>
			
		</div>
	</div>


	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
	
	
</body>
</html>