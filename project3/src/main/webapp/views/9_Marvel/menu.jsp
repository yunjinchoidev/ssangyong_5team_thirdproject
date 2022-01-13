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
#marvelmenu{
	background-color: #EAEAEA;		
	width:100%;
	height: 50px;
	 position: fixed;
	  top: 200px;
	  left: 0;
	  right: 0;
	  z-index:99;
}

#marvelmenu ul{
	margin: 0;
	padding: 0;
	text-align : center;
	width:900px;
	padding-left: 530px;
	
}
#marvelmenu ul li{
	display: inline-block;
	font-size: 23px;
	padding-left: 20px;
	padding-top: 10px;
}

#marvelmenu a{
	text-decoration: none;
	color:black;
}

#marvelmenu ul li a:hover{
	background-color: #C8C2BC;
}

</style>
</head>
<body>
	<!-- E헤더 삽입 -->
	<div id="marvelmenu">
		<ul>
			<li><a href="/project3/views/9_Marvel/1_Character/spiderman.jsp">SPIDER-MAN</a></li>
			<li><a href="/project3/views/9_Marvel/1_Character/ironman.jsp">IRON MAN</a></li>
			<li><a href="/project3/views/9_Marvel/1_Character/thor.jsp">THOR</a></li>
			<li><a href="/project3/views/9_Marvel/1_Character/blackwidow.jsp">BLACK WIDOW</a></li>
		</ul>
	</div>
</body>
</html>