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

.rclisttab {
	width: 1400px;
	font-size: 20px;
	color: white;
	margin: 0 auto;
}

.rclisttab table, .rclisttab td, .rclisttab tr {
	border: 3px solid yellow;
}

#rcbtn{
	width:500px;
	height: 100px;
	font-size: 30px;
	margin: 50px;
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

			<button id="rcbtn" onclick="location.href='${contextPath}/rc/addForm.do'">독서클럽을 찾고 있는 사람들</button>
			
			
			
			<br><br>
			<hr style="border: 3px solid yellow">
			<br><br><br><br>



			<button id="rcbtn" onclick="location.href='${contextPath}/rc/addForm.do'">독서클럽 등록하기</button>
			<table class="rclisttab">
				<tr>
					<td>독서클럽번호</td>
					<td>이름</td>
					<td>모집인원</td>
					<td>시작일</td>
					<td>운영기간</td>
					<td>회비</td>
					<td>모집내용</td>
					<td>등록자번호</td>
					<td>파일번호</td>
					<td>수정</td>
					<td>삭제</td>
				</tr>
				
			<c:choose>
				<c:when test="${empty rcList }">
					<tr>
						<td colspan="11"><br>등록된 회원이 없습니다<br><br></td>
					</tr>
				</c:when>
				<c:when test="${!empty rcList }">
					<c:forEach var="rcList" items="${rcList }">
						<tr>
							<td>${rcList.rcKey}</td>
							<td>${rcList.rcName}</td>
							<td>${rcList.rcCnt}</td>
							<td>${rcList.rcStartDateS}</td>
							<td>${rcList.rcOperTime}</td>
							<td>${rcList.rcPrice}</td>
							<td>${rcList.rcContents}</td>
							<td>${rcList.mKey}</td>
							<td>${rcList.fileKey}</td>
							<td><a href='${contextPath}/rc/modForm.do?rcKey=${rcList.rcKey }'">수정</a></td>
							<td><a href='${contextPath}/rc/del.do?rcKey=${rcList.rcKey }'">삭제</a></td>
						</tr>
					</c:forEach>					
				</c:when>
			</c:choose>				
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