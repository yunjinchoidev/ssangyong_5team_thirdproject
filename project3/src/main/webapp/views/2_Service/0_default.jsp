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
<style>
#Servicemenu{
	background-color: #EAEAEA;		
	width:100%;
	height: 50px;
}

#Servicemenu ul{
	margin: 0;
	padding: 0;
	text-align : center;
	width:700px;
	padding-left: 600px;
	
}
#Servicemenu ul li{
	display: inline-block;
	font-size: 23px;
	padding-left: 20px;
	padding-top: 10px;
}
</style>
</head>
<body>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->
	<div id="Servicemenu">
		<ul>
			<li>재능기부</li>
			<li>나의공상</li>
			<li>나의 판타스틱</li>
			<li>독서 클럽</li>
			<li>전체게시판</li>
		</ul>
	</div>

	<div class="contents">
		<div class="cards"></div>
	</div>





	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>