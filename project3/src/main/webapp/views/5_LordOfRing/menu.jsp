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
#loadmenu{
	background-color: #EAEAEA;		
	width:100%;
	height: 50px;
	 position: fixed;
	  top: 200px;
	  left: 0;
	  right: 0;
	  z-index:99;
}

#loadmenu ul{
	margin: 0;
	padding: 0;
	text-align : center;
	width:900px;
	padding-left: 530px;
	
}
#loadmenu ul li{
	display: inline-block;
	font-size: 23px;
	padding-left: 20px;
	padding-top: 10px;
}

#loadmenu a{
	text-decoration: none;
	color:black;
}

#ladmenu ul li a:hover{
	background-color: #C8C2BC;
}

</style>
</head>
<body>
	<!-- E헤더 삽입 -->
	<div id="loadmenu">
		<ul>
			<li><a href="/project3/views/5_LordOfRing/1_worldview/0_default.jsp">세계관</a></li>
			<li><a href="/project3/views/5_LordOfRing/2_meeting/0_default.jsp">정기모임</a></li>
			<li><a href="/project3/views/5_LordOfRing/3_test/0_default.jsp">반지 자격 테스트</a></li>
			<li><a href="/project3/views/5_LordOfRing/4_lordboard/listArticles.jsp">반지의 제왕 게시판</a></li>
			<li><a href="/project3/views/5_LordOfRing/5_loadshop/0_default.jsp">Absolute Ring shop</a></li>
		</ul>
	</div>
</body>
</html>