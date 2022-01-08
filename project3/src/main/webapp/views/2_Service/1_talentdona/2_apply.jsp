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
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<style>

body{
	border : 3px solid;
}
.donabox01{
	display: flex;
}

.donabox01 img{
	width: 100px;
	height: 100px;
	border: 3px solid;
	flex : 1;
}

#talentapplytab{
	width:70%;
	height: 400px;
	margin : 0 auto;
}

h1{
	padding-top: 40px;
}
</style>
</head>
<body>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

	<!-- S서비스메뉴 삽입 -->
	<jsp:include page="/views/2_Service/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E서비스 메뉴삽입 -->


	<div class="contents">
		<div class="cards">
			<h1> 신청서 작성</h1>
			<form>
			<table id="talentapplytab" border>
				<tr><td>신청자</td><td><input type="text"></td></tr> 
				<tr><td>재능</td><td><input type="text"></td></tr> 
				<tr><td>신청일</td><td><input type="text"></td></tr> 
				<tr><td>참여 가능한 시간대</td><td><input type="text"></td></tr> 
				<tr><td>이메일 수신 여부</td><td><input type="text"></td></tr> 
			</table>
			<input type="submit" value="제출하기" onclick="location.href='1_list.jsp'">
			<input type="button" value="돌아가기" onclick="location.href='0_default.jsp'">
			</form>
		</div>
	</div>





	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>