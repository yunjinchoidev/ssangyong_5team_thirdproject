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
.lecturedetailtab{
	border : 3px solid yellow;
	margin : 0 auto;
	width : 1000px;
	height: 700px;
}
p, td{
	color : white;
	font-size: 30px;
}
.leclin{
	 width:300px;
	 height: 150px;
	 font-size: 30px;
	 margin: 40px;
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
	<jsp:include page="/views/10_Store/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->


	<div class="contents">
		<div class="cards">
			<p> 상세 강의 정보 </p>
			<table border class="lecturedetailtab">
			<colgroup>
				<col width="30%">
			</colgroup>
				<tr><td>강의 명</td><td>####</td></tr>
				<tr><td>강의 일정</td><td>####</td></tr>
				<tr><td>첫 모임일</td><td>####</td></tr>
				<tr><td>강사</td><td>#####</td></tr>
				<tr><td>수강제한인원</td><td>####</td></tr>
				<tr><td>난이도</td><td>####</td></tr>
				<tr><td>강의 내용</td><td>####</td></tr>
				<tr><td>별점</td><td>####</td></tr>
			</table>
			
			<form>
				<input type="button" value="메인으로이동" onclick="location.href='0_default.jsp'" class="leclin">
				<input type="submit" value="수강신청하기" class="leclin">
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