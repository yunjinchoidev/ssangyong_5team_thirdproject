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

#detailtalentdonatab{
	border : 3px solid blue;
	text-align: center;
	width:40%;
	height: 600px;
	font-size: 20px;
	margin : 0 auto;
}

p{
	font-size: 30px;
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
			<p>재능 기부 신청 상세 페이지</p>
			<table id="detailtalentdonatab" border>
				<tr><td>재능 기부 기간</td><td>####</td><td>봉사 시간</td><td>####</td></tr>
				<tr><td>모집 기간</td><td>####</td><td>활동요일</td><td>####</td></tr>
				<tr><td>봉사 장소</td><td>####</td><td>재능 구분</td><td>####</td><tr>
				<tr><td>모집인원</td><td>####</td><td>신청인원</td><td>####</td></tr>
				<tr><td>활동구분</td><td>####</td><td>첨부파일</td><td>####</td></tr>
			</table>
			<p>######################################<br>
			##################################<br></p>
			<input type="button" value="목록으로">
		</div>
	</div>





	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>