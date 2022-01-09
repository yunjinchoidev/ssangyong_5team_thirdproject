<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<style>
.litertab{
	width: 600px;
	height: 300px;
	font-size: 30px;
	text-decoration: none;
	color: black;
	margin : 0 auto;
}
</style>
</head>
<body>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->
	
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/11_Event/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->
	

	<div class="contents">
		<div class="cards">
			<h1>새로운 세계를 공모하십시오.</h1>
			<p> 제 1회 판타지 빌리지 신춘문예</p>
			<p> 톨킨같은 유명한 판타지 작가가 되고 싶습니까? <br>
				판타지 빌리지에서 주최하는 신춘문예는<br> 
				커리어의 시작점으로 분명 탁월한 선택이 될 것입니다.<br>
				당신의 끼와 재능을 온전히 원고지에 담아 보내주십시오.<br>
				기다리겠습니다.
				<br><br>
				
			<div>
				<img src="example.jpg" style="width:300px; height:300px">
				<img src="example.jpg" style="width:300px; height:300px">
				<img src="example.jpg" style="width:300px; height:300px">
			</div>
			
			<table class="litertab" border="3">
					<tr><td><a href="1_apply.jsp">공모하기(apply)</a></td>
						<td><a href="2_lastwinner.jsp">지난 해 최우승작</a></td></tr>
					<tr><td><a href="3_interview.jsp">우승자 인터뷰</a></td>
						<td><a href="3_interview.jsp">문의하기</a></td></tr>
			</table>


		</div>
	</div>




	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>