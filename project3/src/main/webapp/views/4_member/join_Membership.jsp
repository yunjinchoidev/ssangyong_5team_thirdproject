<%@page import="java.io.PrintWriter"%>
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
background-color: #051f30;
color:white;
}

h1{
font-size: 40pt;

}

#title{
position:absolute;
width:650px;
left:650px;
top:200px;
}

#inputMember{
position:absolute;
left:750px;
top:400px;
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

#footer{
position:absolute;
width:100%;
height:200px;
top:900px;
}
</style>

<script src="/project3/a00_com/jquery-3.6.0.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


</head>
<%
String path = request.getContextPath();

String status = (String)request.getAttribute("status");
%>
  
<script>
$().ready(function(){
	
	var status = "<%=status%>";
	var form = $('#form').serialize();
	
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
	
	$('#joinBtn').on("click", function(){
		if(confirm("회원가입 하시겠습니까?")==true){
			$.ajax({
				url:'${pageContext.request.contextPath}/member.do',
				type:'post',
				data:form,
				dataType:'json',
				complete:function(data){
					if($("[name=id]").val()==""){
						alert('아이디를 입력해주세요');
						return false;
					}else if($("[name=pass]").val()==""){
						alert('비밀번호를 입력해주세요');
						return false;
					}else if($("[name=name]").val()==""){
						alert('이름을 입력해주세요');
						return false;
					}else if($("[name=numfirst]").val()==""){
						alert('주민번호 앞자리를 입력해주세요');
						return false;
					}else if($("[name=numsecond]").val()==""){
						alert('주민번호 뒷자리를 입력해주세요');
						return false;
					}else if($("[name=phonenum]").val()==""){
						alert('전화번호를 입력해주세요');
						return false;
					}else if($("[name=phonenum]").val()==""){
						alert('전화번호를 입력해주세요');
						return false;
					}else if($("[name=nickname]").val()==""){
						alert('닉네임 입력해주세요');
						return false;
					}else if($("[name=address]").val()==""){
						alert('주소를 입력해주세요');
						return false;
					}else if($("[name=addfirst]").val()==""){
						alert('이메일을 입력해주세요');
						return false;
					}else{
			      		alert("회원가입이 완료되었습니다");
			      		location.href="<%=path%>/login.do";
					}
					
				}
				
			});
			 
			 
       }
		
		
	
	});
	
	
});

</script>
<body>
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->
	
	<div id="title">
	<h1>FantasyVillage 회원가입</h1>
	<hr>
	</div>
	<div id="inputMember">
		<form method="post" id="form">
			<table>
				<!-- ID 입력 -->
				<tr><th>ID</th><td><input type="text" name="id" size="26" placeholder="아이디를 입력해주세요"></td>
				</tr>
				<!-- 비밀번호 입력 -->
				<tr><th>Password</th><td><input type="text" size="26" name="pass" placeholder="비밀번호를 입력해주세요"></td></tr>
				<!-- 이름 입력 -->
				<tr><th>이름</th><td><input type="text" size="26" name="name" placeholder="이름을 입력해주세요"></td></tr>
				<!-- 주민등록번호 입력 -->
				<tr><th>주민등록번호</th>
				<td><input type="text" name="numfirst" maxlength="6" size="8"> - 
				<input type="text" name="numsecond" size="9"></td>
				</tr>
				<!-- 전화번호 입력 -->
				<tr><th>전화번호</th><td><input type="text" size="26" name="phonenum" placeholder="-없이 숫자만 입력 해주세요"></td></tr>
				<!-- 닉네임 입력 -->
				<tr><th>닉네임</th><td><input type="text" size="26" name="nickname" placeholder="닉네임을 입력 해주세요"></td>
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
			<a href="<%=path%>/login.do">
			<button id="canclebtn" type= "button" style="position:absolute;left:80px;">취소</button>
			</a>
			<button type="submit" id="joinBtn" style="position:absolute;left:220px;">회원가입</button>	
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