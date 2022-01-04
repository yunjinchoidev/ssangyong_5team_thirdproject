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
position:absolute;
left:180px;
}

#title{
position:absolute;
left:650px;
top:120px;
}

#loginForm{
position:absolute;
left:850px;
top: 380px;
}

img{
position: fixed;
left:796px;
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
position:fixed;
left:795px;
}
</style>

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.3.3/dist/sweetalert2.all.min.js"></script>

<script>
/*
$().ready(function () {
    $("#loginbtn").click(function () {
        Swal.fire({
            icon: 'success',
            title: 'Alert가 실행되었습니다.',
            text: '이곳은 내용이 나타나는 곳입니다.',
        });
    });
});
*/
	
</script>
</head>
<body>
<div id="title">
<h1>FantasyVillage 로그인</h1>
<h3>계정이 없으신가요? <a href="../4_member/join_Membership.jsp">회원가입</a></h3>
</div>
<div id = "loginForm">
	<form>
		<img src="./img/user.png" width="55px" height="54px" style="background-color:lightgray">
		<input type=text name = id placeholder="아이디를 입력해주세요" style="width:250px;height:49px;">
		<br><br>
		<img src="./img/key.png" width="55px" height="54px" style="background-color:lightgray">
		<input type=text name = pass placeholder="비밀번호를 입력해주세요" style="width:250px;height:49px;">
		<br><br>
		<div id = "btn">
		<a href="../7_find/IdFind.jsp"><button type="button" id="idbtn">아이디 찾기</button></a>
		<button id="loginbtn">로그인</button>
		<a href="../7_find/PassFind.jsp"><button type="button" id ="passbtn">비밀번호 찾기</button></a>>
		</div>
	</form>
	
</div>
</body>
</html>