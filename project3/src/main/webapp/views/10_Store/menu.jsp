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
#Storemenu{
	background-color: #EAEAEA;		
	width:100%;
	height: 50px;
	position: fixed;
	top:200px;
	right:0;
	left: 0;
	z-index: 99;
}

#Storemenu ul{
	margin: 0;
	padding: 0;
	text-align : center;
	width:500px;
	padding-left: 700px;
	
}
#Storemenu ul li{
	display: inline-block;
	font-size: 23px;
	padding-left: 20px;
	padding-top: 10px;
}
</style>
</head>
<body>
	<!-- E헤더 삽입 -->
	<div id="Storemenu">
		<ul>
			<li>공식스토어</li>
			<li>렌탈</li>
			<li>1:1 매매</li>
			<li>강의</li>
		</ul>
	</div>
</body>
</html>