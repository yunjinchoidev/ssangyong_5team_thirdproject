<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판타지빌리지-회원탈퇴</title>
<style>
body{
background-color: #051f30;
color:white;
}

h1{
font-size: 50pt;
color:white;
}

h3{
color:white;
left:180px;
}

#title{
position:absolute;
left:600px;
top:200px;
}

#titleh3{
position: absolute;
left:200px;
top:200px;
}


#loginForm{
position:absolute;
left:750px;
top: 450px;

}


#delbtn{
width:100px;
height:30px;
background-color:rgba(0,0,0,0);
color : skyblue;
border: 1px solid skyblue;
font-weight:bold;
border-top-left-radius: 5px;
border-bottom-left-radius: 5px;
border-top-right-radius: 5px;
border-bottom-right-radius: 5px;
position: absolute;
left:80px;
top:150px;
}

#delbtn:hover{
width:100px;
height:30px;
background-color:#3F3F3F;
color : white;
border:none;
}

#canclebtn{
width:100px;
height:30px;
background-color:rgba(0,0,0,0);
color : skyblue;
border: 1px solid skyblue;
font-weight:bold;
border-top-left-radius: 5px;
border-bottom-left-radius: 5px;
border-top-right-radius: 5px;
border-bottom-right-radius: 5px;
position: absolute;
left:220px;
top:150px;
}

#canclebtn:hover{
width:100px;
height:30px;
background-color:#3F3F3F;
color : white;
border:none;
}




.swal-button {
  padding: 7px 19px;
  border-radius: 2px;
  background-color: #4962B3;
  font-size: 12px;
  border: 1px solid #3e549a;
  text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.3);
}

#footer{
position:absolute;
width:100%;
height:200px;
top:800px;
}
</style>


<script src="/project3/a00_com/jquery-3.6.0.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<%
// 컨트롤러에서 받아온 DB의 id, pass
String path = request.getContextPath();

String sessionid = (String)session.getAttribute("ID");
String sessionpass = (String)session.getAttribute("PASSWORD");

String status = (String) request.getAttribute("status");

%>

<script>
var status = "<%=status%>";

$().ready(function() {
	
	var form = $('#form').serialize();
	
	
	$("#delbtn").on("click",function(){
		if(confirm("회원탈퇴 하시겠습니까?")){
			alert("탈퇴되었습니다.");	
		};		
	});
	
	});



</script>
	
<body>
<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

<div id="title">
<h1>FantasyVillage 회원탈퇴</h1>
<div id="titleh3">
<!-- ../4_member/join_Membership.jsp -->
</div>
</div>
<div id = "loginForm">
	<form method="post" id="form">
		<table>
		<tr><th>아이디</th><td><input type="text" name="id" placeholder="아이디를 입력해주세요" style="width:250px;height:49px;"></td></tr>
		<tr><th>비밀번호</th><td><input type="text" name="pass" placeholder="비밀번호를 입력해주세요" style="width:250px;height:49px;"></td></tr>
		</table>
		<input type="hidden" name="sid" value="<%=sessionid%>">
		<input type="hidden" name="spass" value="<%=sessionpass%>">
		<div id = "btn">
		<button type="submit" id="delbtn">회원탈퇴</button>
		<a href="<%=path%>/mypage.do">
		<button type="button" id="canclebtn">취소</button>
		</a>
		</div>
		</form>
		
	</div>
		
	
	
	<div id="footer">
	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
	</div>
	
</body>
</html>