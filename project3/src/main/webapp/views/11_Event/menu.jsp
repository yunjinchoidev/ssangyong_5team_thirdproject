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
#eventmenu{
	background-color: #EAEAEA;		
	width:100%;
	height: 50px;
	position: fixed;
	top:200px;
	right:0;
	left: 0;
	z-index: 99;
}
#eventmenu ul{
	margin: 0;
	padding: 0;
	text-align : center;
	width:300px;
	padding-left: 800px;
	
}
#eventmenu ul li{
	display: inline-block;
	font-size: 23px;
	padding-left: 20px;
	padding-top: 10px;
}

#eventmenu ul li a{
	text-decoration: none;
	color : black;
}
</style>
</head>
<body>
	
	<div id="eventmenu">
		<ul>
			<li><a href="/project3/views/11_Event/1_LiteracyContest/0_default.jsp">신춘문예</a></li>
			<li><a href="/project3/views/11_Event/2_ThisMonthFantasy/0_default.jsp">이달의 판타지</a></li>
		</ul>
	</div>


</body>
</html>