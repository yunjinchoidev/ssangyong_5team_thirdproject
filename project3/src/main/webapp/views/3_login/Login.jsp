<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판타지빌리지-로그인</title>
<style>
body{
background-color: #051f30;
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
top: 500px;

}


#idbtn{
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
}

#idbtn:hover{
width:100px;
height:30px;
background-color:#3F3F3F;
color : white;
border:none;
}

#passbtn{
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
}

#passbtn:hover{
width:100px;
height:30px;
background-color:#3F3F3F;
color : white;
border:none;
}

#loginbtn{
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

}

#loginbtn:hover{
width:100px;
height:30px;
background-color:#3F3F3F;
color : white;
border:none;
}

#btn{
left:795px;
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


<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>

$(document).ready(function() {
	$('#loginbtn').on("click", function(){
		Swal.fire({
			  title: '로그인',
			  text: "로그인 하시겠습니까?",
			  icon: 'confirm',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: '확인',
			  cancelButtonText: '취소'
			}).then((result) => {
			  if (result.value) {
	              $('form').submit();
	          
			  }
			})
	});

});

</script>

<%
// 컨트롤러에서 받아온 DB의 id, pass
String path = request.getContextPath();

String id = (String) request.getAttribute("id");
String pass = (String) request.getAttribute("pass");

// jsp에서 받아온 id, pass
String id2 = request.getParameter("id");
String pass2 = request.getParameter("pass");

try{
	if(id2!=null && pass2!=null){
		if(id.equals(id2) && pass.equals(pass2)){
			session.setAttribute("ID", id2);
			session.setAttribute("PASSWORD", pass2);
	
			response.sendRedirect("views/0_Main/aboutus.jsp");
	
		}
	}
}catch(Exception e){
	out.println(e.getMessage());
	out.println("<script>alert('로그인 정보를 확인해주세요')</script>");
}

%>
	
<body>
<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

<div id="title">
<h1>FantasyVillage 로그인</h1>
<div id="titleh3">
<!-- ../4_member/join_Membership.jsp -->
<h3>계정이 없으신가요? <a href="<%=path%>/member.do">회원가입</a></h3>
</div>
</div>
<div id = "loginForm">
	<form method="post">
		<img src="./img/user.png" id="userImg" width="55px" height="54px" style="background-color:lightgray;
		position:relative; top:22px; left:5px;">
		<input type=text name = id placeholder="아이디를 입력해주세요" style="width:250px;height:49px;">
		<br><br>
		<img src="./img/key.png" width="55px" height="54px" style="background-color:lightgray;
		position:relative; top:22px; left:5px;">
		<input type=text name = pass placeholder="비밀번호를 입력해주세요" style="width:250px;height:49px;">
		<br><br>
		<div id = "btn">
		<a href="<%=path%>/findid.do"><button type="button" id="idbtn">아이디 찾기</button></a>
		<button type="button" id="loginbtn">로그인</button>
		<a href="../7_find/PassFind.jsp"><button type="button" id ="passbtn">비밀번호 찾기</button></a>>
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