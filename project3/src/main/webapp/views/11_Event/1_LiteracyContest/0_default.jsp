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
			<h1>당신의 상상력을 공모하십시오.</h1>
			<p> 제 1회 판타지 빌리지 신춘문예</p>
			<p> 톨킨같은 유명한 판타지 작가가 되고 싶습니까? <br>
				판타지 빌리지에서 주최하는 신춘문예 입상은 그 시작점으로 분명 훌륭한 선택입니다.
				당신의 끼와 재능을 온전히 원고지에 담아 보내주십시오<br>
				<br><br>
				당신의</p>
				
		
		
		</div>
	</div>




	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>