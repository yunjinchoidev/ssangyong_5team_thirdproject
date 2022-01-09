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
#lordshopwrap01{
	display: flex;
	width: 90%;
	height: 400px;
	margin: 0 auto;
	padding: 20px;
}
.indivi{
	flex:1;
	margin: 20px;
}
.indivi img{
	width: 200px;
	height: 200px;
}
</style>
</head>
<body>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

	<!-- S반지제왕 메뉴 삽입 -->
	<jsp:include page="/views/5_LordOfRing/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E반지제왕 메뉴 삽입 -->


	<div class="contents">
		<div class="cards">
				<h1> Absolute Ring ship</h1>
				<p> 엄선된 물건들이 있습니다. 마음껏 둘러보십시오</p>
				<div id=lordshopwrap01>
					<div class="indivi">
						<a href="1_detail.jsp"><img src="example.jpg"></a>
						<p>#########<br>
							#########<br>
						#########<br></p>
					</div>
					<div class="indivi">
						<a href="#"><img src="example.jpg"></a>
						<p>#########<br>
							#########<br>
						#########<br></p>
					</div>
					<div class="indivi">
						<a href="#"><img src="example.jpg"></a>
						<p>#########<br>
							#########<br>
						#########<br></p>
					</div>
				</div>
				<div id=lordshopwrap01>
					<div class="indivi">
						<a href="#"><img src="example.jpg"></a>
						<p>#########<br>
							#########<br>
						#########<br></p>
					</div>
					<div class="indivi">
						<a href="#"><img src="example.jpg"></a>
						<p>#########<br>
							#########<br>
						#########<br></p>
					</div>
					<div class="indivi">
						<a href="#"><img src="example.jpg"></a>
						<p>#########<br>
							#########<br>
						#########<br></p>
					</div>
				</div>
				<div id=lordshopwrap01>
					<div class="indivi">
						<a href="#"><img src="example.jpg"></a>
						<p>#########<br>
							#########<br>
						#########<br></p>
					</div>
					<div class="indivi">
						<a href="#"><img src="example.jpg"></a>
						<p>#########<br>
							#########<br>
						#########<br></p>
					</div>
					<div class="indivi">
						<a href="#"><img src="example.jpg"></a>
						<p>#########<br>
							#########<br>
						#########<br></p>
					</div>
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