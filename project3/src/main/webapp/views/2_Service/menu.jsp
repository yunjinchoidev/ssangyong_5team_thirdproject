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
	position: fixed;
	  top: 200px;
	  left: 0;
	  right: 0;
	z-index: 99;
}

#Servicemenu ul{
	margin: 0;
	padding: 0;
	text-align : center;
	width:900px;
	padding-left: 500px;
	
}
#Servicemenu ul li{
	display: inline-block;
	font-size: 23px;
	padding-left: 20px;
	padding-top: 10px;
}

#Servicemenu ul li a{
	text-decoration: none;
	color:black;
}

#Servicemenu ul li a:hover{
	background-color: #C8C2BC;
}

.li{
	background-color: #9D9D9D;
}
</style>

<script>

</script>
</head>
<body>
	<div id="Servicemenu">
		<ul>
			<li><a href="/project3/views/2_Service/1_talentdona/0_default.jsp">재능기부</a></li>
			<li><a href="/project3/views/2_Service/2_myfancy/0_default.jsp">공상하다</a></li>
			<li><a href="/project3/views/2_Service/3_myfantastic/0_default.jsp">나의 판타스틱</a></li>
			<li><a href="/project3/views/2_Service/4_readingclub/0_default.jsp">독서 클럽</a></li>
			<li><a href="/project3/views/2_Service/5_storytrade/0_default.jsp">스토리매매</a></li>
			<li><a href="/project3/views/2_Service/6_totalboard/listArticles.jsp">전체 게시판</a></li>
		</ul>
	</div>






</body>
</html>