<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정창</title>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<style>
.cls1 {
	font-size: 40px;
	text-align: center;
}
</style>
</head>
<body>

	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

	<div class="contents">
		<div class="cards">
			<h1 class="cls1">회원 정보 수정창</h1>
			<form method="post"
				action="${contextPath}/member/modMember.do?id=${memInfo.id}">
				<table align="center">
					<tr>
						<td width="200"><p align="right">아이디</td>
						<td width="400"><input type="text" name="id"
							value="${memInfo.id}"></td>

					</tr>
					<tr>
						<td width="200"><p align="right">비밀번호</td>
						<td width="400"><input type="password" name="pwd"
							value="${memInfo.pwd}"></td>
					</tr>
					<tr>
						<td width="200"><p align="right">이름</td>
						<td width="400"><input type="text" name="name"
							value="${memInfo.name}"></td>
					</tr>
					<tr>
						<td width="200"><p align="right">이메일</td>
						<td width="400"><input type="text" name="email"
							value="${memInfo.email}"></td>
					</tr>
					<tr>
						<td width="200"><p align="right">가입일</td>
						<td width="400"><input type="text" name="joinDate"
							value="${memInfo.joinDate }" ></td>
					</tr>
					<tr>
						<td width="200"><p align="right">성별</td>
						<td width="400"><input type="text" name="gender"
							value="${memInfo.gender }" ></td>
					</tr>
					<tr align="center">
						<td colspan="2" width="400"><input type="submit" value="수정하기">
							<input type="reset" value="다시입력"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>

	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</html>
