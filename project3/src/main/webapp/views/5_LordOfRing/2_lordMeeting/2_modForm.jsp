<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="literacyContest.*"
	import="java.util.ArrayList"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신춘문예</title>
</script>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<style>
.tbdtab {
	width: 600px;
	height: 300px;
	font-size: 40px;
	text-decoration: none;
	color: black;
	margin: 0 auto;
	padding: 20px;
}

#contebtn {
	width: 400px;
	height: 80px;
	font-size: 40px;
	font-weight: bolder;
	margin: 20px;
	margin-bottom: 30px;
}

.tbdaddtab {
	width: 1400px;
	height: 600px;
	border: 3px solid yellow;
	margin: 0 auto;
	font-size: 20px;
	margin-top: 50px;
	color: white;
	text-align: center;
}
.tbdaddtab tr{
	height: 60px;
}
.tbdaddtab table, .tbdaddtab td, .tbdaddtab tr, .tbdaddtab th {
	border: 3px solid yellow;
}

input{
	width:500px;
	height: 60px;
	font-size: 30px;
	text-align: center;
}

.conlisttab td {
	height: 50px;
}

#seachcon {
	width: 1000px;
	height: 100px;
	font-size: 60px;
	font-weight: bolder;
	text-align: center;
	background-color: white;
	border: 2px solid yellow;
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
	<jsp:include page="/views/5_LordOfRing/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->


	<div class="contents">
		<div class="cards">
			<p>글 수정하기</p>
			<form action="${contextPath }/lordMeeting/mod.do" enctype="multipart/form-data"> 
			<table align="center" class="tbdaddtab">
			<colgroup>
				<col width="30%">
			</colgroup>
					<tr><th>회원 고유번호</th><td><input type="text" name="boPostKey" value="${boardVO.boPostKey}"></td></tr>
					<tr><th>회원 고유번호</th><td><input type="text" name="mKey" value="${boardVO.mKey}"></td></tr>
					<tr><th>파일 일련번호</th><td><input type="text" name="fileKey" value="${boardVO.fileKey}"></td></tr>
					<tr><th>카테고리 고유코드</th><td><input type="text" name="boCateKey" value="${boardVO.boCateKey}"></td></tr>
					<tr><th>작성자</th><td><input type="text" name="boWriter" value="${boardVO.boWriter}"></td></tr>
					<tr><th>비밀번호</th><td><input type="text" name="boWriterPass" value="${boardVO.boWriterPass}"> </td></tr>
					<tr><th>이메일</th><td><input type="text" name="boWriterEmail" value="${boardVO.boWriterEmail}"></td></tr>
					<tr><th>제목</th><td><input type="text" name="boTitle" value="${boardVO.boTitle}"></td></tr>
					<tr><th>ip주소</th><td><input type="text" name="boWriterIp" value="${boardVO.boWriterIp}"></td></tr>
					<tr><th>조회수</th><td><input type="text" name="boViews" value="${boardVO.boViews}"></td></tr>
					<tr><th>부모글번호</th><td><input type="text" name="boparentNO" value="${boardVO.boParentNO}"></td></tr>
					<tr><th>내용</th><td><input type="text" name="boContent" value="${boardVO.boContent}"></td></tr>
					<tr><td colspan="2"><input type="submit" value="제출하기" ></td></tr>
			</table>
			</form>


		</div>
	</div>



	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp"></jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>