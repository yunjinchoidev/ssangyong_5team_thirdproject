<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판타지 빌리지 - 아이디 찾기</title>
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
top: 480px;
}

h1{
font-size: 50pt;
color:white;
position: absolute;
top: 250px;
left:600px;
}

#btnDiv{
position: absolute;
left:60px;
}

#iddiv{
position: absolute;
left:1200px;
top:500px;
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
	$('#confirmBtn').on("click", function(){
		Swal.fire({
			  title: 'ID찾기',
			  text: "ID를 찾으시겠습니까?",
			  icon: 'confirm',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: '확인',
			  cancelButtonText: '취소'
			}).then((result) => {
			  if (result.value) {
	              $('form').submit();
	              idPopup();
			  }
			})
	});
	
	function idPopup(){
		
		window.open('views/7_find/IdFindResult.jsp','아이디 찾기','width=500, height=300');

	}
	
});

</script>
</head>
<%
String path = request.getContextPath();

String rid = (String) request.getAttribute("rid");
String rid2 = "당신의 ID는 검색되지 않았습니다";
%>
<body>

<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

<h1>FantasyVillage ID찾기</h1>
<div id="findId">
	<form method="post">
		<table>
			<tr><th>이름</th>
			<td><input type="text" name="name" placeholder="이름을 입력해주세요" size="26"></td>
			</tr>
			
			<tr><th>주민등록번호</th>
			<td><input type="text" name="firstNum" maxlength="6" style="width:125px;"> -
			<input type="text" name="numsecond" style="width:125px;"></td>
			</tr>
		</table>
		</form>
		<br>
		<div id="btnDiv">
		<a href="<%=path%>/login.do">
		<button id="cancelBtn" type= "button" style="position:absolute;left:80px;">취소</button>
		</a>
		<button type="button" id="confirmBtn">확인</button>
		</div>
	
	
</div>
<%if(rid!=null) {
session.setAttribute("rid", rid);%>
<%}%>

<div id="iddiv">
<%if(rid==null){%>
<h2 style="color:red;">정보를 확인해주세요.</h2>
<%} %>
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