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
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<style>

body{
	border : 3px solid;
}
.donabox01{
	display: flex;
}

.donabox01 img{
	width: 100px;
	height: 100px;
	border: 3px solid;
	flex : 1;
}
</style>
</head>
<body>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

	<!-- S서비스메뉴 삽입 -->
	<jsp:include page="/views/2_Service/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E서비스 메뉴삽입 -->


	<div class="contents">
		<div class="cards">
				<div>
					<h1>재능기부</h1>
					<p>당신의 재능이 누군가에겐 필요합니다.</p>
					<p>당신이 가진 선한 영향력이 아이의 인생을 바꿀 수 있습니다</p>
				</div>
				<div class="donabox01">
						<img src="dona01.jpg">
						<img src="dona02.jpg">
						<img src="dona03.jpg">
				</div>
				
				<div>
					<ul>
						<li><a href="1_list.jsp">재능 기부 참여 하기(목록으로 이동)</a>
						<li><a href="">재능을 나누고 싶어요(신청서 작성)</a>
						<li><a href="#">재능 기부 후기 게시판</a>
					</ul>
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