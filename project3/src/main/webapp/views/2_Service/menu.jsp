<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
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
			<li><a href="${contextPath }/talent/list.do">재능기부</a></li>
			<li><a href="${contextPath }/fantasize/list.do">공상하다</a></li>
			<li><a href="${contextPath }/myfantastic/list.do">나의 판타스틱</a></li>
			<li><a href="${contextPath }/rc/list.do">독서 클럽</a></li>
			<li><a href="${contextPath }/board/list.do">전체 게시판</a></li>
		</ul>
	</div>






</body>
</html>