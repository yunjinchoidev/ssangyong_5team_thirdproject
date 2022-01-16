<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"
	import="readingClub.*"
	%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<style>
p {
	font-size: 20px;
	color: white;
}

.rcaddformtab {
	width: 1000px;
	height : 1200px;
	font-size: 20px;
	color: white;
	margin: 0 auto;
	padding: 10px;
}

.rcaddformtab table, .rcaddformtab td, .rcaddformtab tr {
	border: 3px solid yellow;
}

#rcbtn{
	width:500px;
	height: 100px;
	font-size: 30px;
	margin: 50px;
}

input[type=text]{
	width: 400px;
	height: 50px;
	font-size: 30px;
	text-align: center;
}

input[type=submit], input[type=reset]{
	width:300px;
	height: 100px;
	font-size: 30px;
}



</style>
<meta charset="UTF-8">
<title>글목록창</title>
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
			<div class="readingclubex">
				<h1>독서 클럽</h1>
				<p>독서클럽입니다. 이곳에 모여 다 같이 책을 읽어 보십시오</p>
			</div>

			
			<br><br>
			<hr style="border: 3px solid yellow">
			<br><br><br><br>



			<button id="rcbtn">독서클럽 등록하기</button>
			<form action="${contextPath}/rc/add.do">
				<table class="rcaddformtab">
					<colgroup>
						<col width="30%">
					</colgroup>
					<tr><td>독서클럽번호</td><td><input type="text" name="rcKey"></td></tr>
					<tr><td>이름</td><td><input type="text" name="rcName"></td></tr>
					<tr><td>모집인원</td><td><input type="text" name="rcCnt"></td></tr>
					<tr><td>시작일</td><td><input type="text" name="rcStartDate"></td></tr>
					<tr><td>운영기간</td><td><input type="text" name="rcOperTime"></td></tr>
					<tr><td>회비</td><td><input type="text" name="rcPrice"></td></tr>
					<tr><td>모집내용</td><td><input type="text" name="rcContents"></td></tr>
					<tr><td>등록자번호</td><td><input type="text" name="mKey"></td></tr>
					<tr><td>파일번호</td><td><input type="text" name="fileKey"></td></tr>
					<tr><td><input type="submit" value="등록하기"></td>
					<td><input type="reset" value="다시입력"></td></tr>
				</table>
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