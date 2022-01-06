<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판타지 빌리지 - 비밀번호 찾기</title>
<style>
body{
background-color: #051f30;
color:white;
}

th{
color: white;
}

input[type=text]{
width:276px;
height:49px;
}

#confirmBtn{
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
left:190px;
}

#cancelBtn{
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

#confirmBtn:hover{
width:100px;
height:30px;
background-color:#3F3F3F;
color : white;
border:none;
}

#cancelBtn:hover{
width:100px;
height:30px;
background-color:#3F3F3F;
color : white;
border:none;
}

#findId{
position: absolute;
left:720px;
top: 380px;
}

h1{
font-size: 50pt;
color:white;
position: absolute;
top: 150px;
left:550px;
}

#btnDiv{
position: absolute;
left:60px;
}

</style>
</head>
<body>
<div id="findId">
	<form>
		<table>
			<tr><th>ID</th>
			<td><input type="text" name="name" placeholder="ID를 입력해주세요" size="26"></td>
			</tr>
			
			<tr><th>이름</th>
			<td><input type="text" name="name" placeholder="이름을 입력해주세요" size="26"></td>
			</tr>

			<tr><th>주민등록번호</th>
			<td><input type="text" name="firstNum" maxlength="6" style="width:125px;"> -
			<input type="text" name="numsecond" style="width:125px;"></td>
			</tr>
		</table>
		<br>
		<div id="btnDiv">
		<a href="../3_login/Login.jsp"><button id="cancelBtn" type= "button" style="position:absolute;left:80px;">취소</button>	</a>
		<button id="confirmBtn">확인</button>
		</div>
	</form>
</div>
</body>
</html>