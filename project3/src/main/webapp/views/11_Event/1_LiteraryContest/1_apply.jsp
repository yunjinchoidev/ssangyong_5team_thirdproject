<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />  
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
.literapplytab{
	width : 800px;
	height : 600px;
	border: 2px solid white;
	font-size: 20px;
	
}

.literapplytab td, tr{
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
			<h1>제 1회 판타지 빌리지 신춘문예 신청서</h1>
			<h2>신춘문예 작품 공모서</h2>
			<h2>${contextPath }</h2>
			<form action="${contextPath}/LiteraryContest/addLiteraryContest.do">
				<hr width="600" align="center">
				<table border="1" align="center" class="literapplytab">
					<colgroup>
						<col width="30%">
					</colgroup>
						<tr>
							<td colspan="2" align="center" height="50">&lt;기본 입력 사항&gt;
							</td>
						</tr>
						<tr>
							<td width="100">신청번호:</td>
							<td><input type="text" name="liberKey" size="10" autofocus="">
							</td>
						</tr>
						<tr>
							<td width="100">작품 제목 :</td>
							<td><input type="text" name="liberTitle" size="10" autofocus="">
							</td>
						</tr>
						
						
						<tr>
							<td width="100">작품 설명:</td>
							<td>
							<input type="text" name="liberContents" size="10" autofocus="">
							</td>
						</tr>
						<tr>
							<td width="100">작품 분류 :</td>
							<td><input type="text" name="liberSort" size="10" autofocus="">
							</td>
						</tr>
						<tr>
							<td width="100">지원자의 경력 :</td>
							<td><input type="text" name="liberCareer" size="20"></td>
						</tr>
				</table>
				<br>
				<input type="submit" value="가입신청">
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