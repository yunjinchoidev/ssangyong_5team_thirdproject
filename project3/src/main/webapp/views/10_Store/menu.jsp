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
	width:600px;
	padding-left: 650px;
	
}
#Storemenu ul li{
	display: inline-block;
	font-size: 23px;
	padding-left: 20px;
	padding-top: 10px;
}

#Storemenu ul li a{
	text-decoration: none;
	color: black;
}

#Storemenu ul li a:hover{
	background-color: #C8C2BC;
}
</style>
</head>
<body>
	<!-- E헤더 삽입 -->
	<div id="Storemenu">
		<ul>
			<li><a href="/project3/views/10_Store/1_official/0_default.jsp">공식스토어</a></li>
			<li><a href="/project3/views/10_Store/2_lental/0_default.jsp">렌탈</a></li>
			<li><a href="/project3/views/10_Store/3_personal/0_default.jsp">1:1 매매</a></li>
			<li><a href="/project3/views/10_Store/4_lecture/0_default.jsp">강의</a></li>
			<li><a href="/project3/views/10_Store/5_storytrade/0_default.jsp">스토리매매</a></li>
		</ul>
	</div>
</body>
</html>