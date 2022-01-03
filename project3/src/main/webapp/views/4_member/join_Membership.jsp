<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판타지월드-회원가입</title>
<style>
body{
background-color: #5D4283;
color:white;
}

h1{
font-size: 40pt;

}

#title{
position:absolute;
width:600px;
left:600px;
top:100px;
}

#inputMember{
position:absolute;
left:700px;
top:300px;
}

input[type=text]{
height:30px;
}

select{
height:40px;
}

button{
background-color: black;
background-color:rgba(0,0,0,0);
width:100px;
height:30px;
color : skyblue;
border: 1px solid skyblue;
font-weight:bold;
border-top-left-radius: 5px;
border-bottom-left-radius: 5px;
border-top-right-radius: 5px;
border-bottom-right-radius: 5px;
}

button:hover{
width:100px;
height:30px;
background-color:#3F3F3F;
color : white;
border:none;
}
</style>

<script src="/javaexp/a00_com/jquery-3.6.0.js"></script>

<script>
$().ready(function(){
	// 이메일 select Box 직접 입력 선택 시 함수
	$("#seldirect").hide();
	$("#addsecond").change(function(){
		if($("#addsecond").val()=="direct"){
			$("#addsecond").hide();
			$("#seldirect").show();
		}else{
			$("#addsecond").show();
			$("#seldirect").hide();
		}	
	})
	
	
});
</script>
</head>
<body>
	<div id="title">
	<h1>FantasyVillage 회원가입</h1>
	<hr>
	</div>
	<div id="inputMember">
		<form>
			<table>
				<!-- ID 입력 -->
				<tr><th>ID</th><td><input type="text" name="id" size="26" placeholder="아이디를 입력해주세요"></td>
				<td><button type="button">확인</button></td>
				</tr>
				<!-- 비밀번호 입력 -->
				<tr><th>Password</th><td><input type="text" size="26" name="pass" placeholder="비밀번호를 입력해주세요"></td></tr>
				<!-- 이름 입력 -->
				<tr><th>이름</th><td><input type="text" size="26" name="name" placeholder="이름을 입력해주세요"></td></tr>
				<!-- 주민등록번호 입력 -->
				<tr><th>주민등록번호</th>
				<td><input type="text" name="numfirst" maxlength="6" size="8"> - 
				<input type="text" name="numsecond" size="10"></td>
				</tr>
				<!-- 전화번호 입력 -->
				<tr><th>전화번호</th><td><input type="text" size="26" name="phonenum" placeholder="-없이 숫자만 입력 해주세요"></td></tr>
				<!-- 닉네임 입력 -->
				<tr><th>닉네임</th><td><input type="text" size="26" name="nickname" placeholder="닉네임을 입력 해주세요"></td>
				<td><button type="button">확인</button></td>
				</tr>
				<!-- 주소 입력 -->
				<tr><th>주소</th><td><input type="text" size="26" name="address" placeholder="주소를 입력 해주세요"></td></tr>
				<!-- 이메일 입력 -->
				<tr><th>이메일</th>
				<td><input type="text" name="addfirst" size="8"> @
				<select name = "addsecond" id="addsecond" style="width:100px;">
					<option value="naver.com">naver.com</option>
					<option value="daum.net">daum.net</option>
					<option value="gmail.com">gmail.com</option>
					<option value="direct">직접입력</option>
				</select>
				<input type="text" id="seldirect" size="9" placeholder="직접입력" /></td>
				</tr>
				<!-- 성별 입력 -->
				<tr>
				<th>성별</th>
				<td><input type="radio" name="gender" value="M" checked="checked">남자 <input type="radio" name="gender" value="W">여자</td>
				</tr>
			</table>
			<br>
			<button style="position:absolute;left:170px;">회원가입</button>	
		</form>
		
	</div>
</body>
</html>