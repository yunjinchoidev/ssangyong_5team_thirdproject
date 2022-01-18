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

input[type=text]{
width:170px;
height:30px;
}

#closebtn{
width:70px;
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
left:300px;
top:200px;
}

#closebtn:hover{
width:70px;
height:30px;
background-color:#3F3F3F;
color : white;
border:none;
}

#pscheckbtn{
width:70px;
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
left:400px;
top:90px;
}

#pscheckbtn:hover{
width:70px;
height:30px;
background-color:#3F3F3F;
color : white;
border:none;
}

#confirmbtn{
width:70px;
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

#confirmbtn:hover{
width:70px;
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
		$('#pscheckbtn').click(function(){
			var pass = $("[name=pass]").val();
			var pscheck = $("[name=passcheck]").val();
			
			
			if(pass!= "" && pscheck!= ""){
				if(pass==pscheck){
					alert('비밀번호가 일치합니다');
				}else{
					alert('비밀번호가 일치하지 않습니다');
				}
			}else{
				alert("비밀번호를 입력해주세요");
			}
			
		});
	});
</script>
<%
String rpass = (String) session.getAttribute("rpass");
String rid = (String) session.getAttribute("rid");
%>
</head>

<body>
	
	<h1 align="center">비밀번호 변경</h1>
	<form>
	<table align="center">
		<tr><th>비밀번호</th><td><input type="text" name="pass"></td></tr>
		<tr><th>비밀번호 확인</th><td><input type="text" name="passcheck"></td></tr>
	</table>
	<input type="hidden" name="pssession" value="<%=rpass%>">
	<input type="hidden" name="idsession" value="<%=rid%>">
	<button id="confirmbtn">변경</button>
	</form>
	<button id="pscheckbtn">확인</button>
	<button id="closebtn" onclick='window.close()'>닫기</button>

</body>
</html>