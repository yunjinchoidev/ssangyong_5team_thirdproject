<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.z01_vo.*"
    import="jspexp.a03_database.*"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet" 
	href="${path}/a00_com/a00_com.css">
<style>

button{
width:100px;
height:30px;
background-color:rgba(0,0,0,0);
color : grey;
border: 1px solid grey;
font-weight:bold;
border-top-left-radius: 5px;
border-bottom-left-radius: 5px;
border-top-right-radius: 5px;
border-bottom-right-radius: 5px;
position: absolute;
left:200px;
top:200px;
}

button:hover{
width:100px;
height:30px;
background-color:#3F3F3F;
color : white;
border:none;
}

</style>
<script type="text/javascript" 
  src="${path}/a00_com/jquery-3.6.0.js"></script>
<script type="text/javascript">
<%--
 
 
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>

<%
String rpass = (String) session.getAttribute("rpass");
%>
<body>
	<%if(rpass!=null) {%>
	<h1 align="center">당신의 비밀번호는</h1>
	<h1 align="center" style="color: red;"><%=rpass%></h1>
	<button onclick='window.close()'>닫기</button>
	<%}%>
</body>
</html>