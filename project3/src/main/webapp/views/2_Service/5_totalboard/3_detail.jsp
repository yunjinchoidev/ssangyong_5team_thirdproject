<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"
	import="java.util.ArrayList"
	import="board.*"%>
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
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<style>
#btn {
	width: 400px;
	height: 80px;
	font-size: 40px;
	font-weight: bolder;
	margin: 20px;
	margin-bottom: 30px;
}

#newtab {
	width: 1700px;
	height: 600px;
	border: 3px solid yellow;
	margin: 0 auto;
	font-size: 20px;
	margin-top: 50px;
	color: white;
	text-align: left;

}

.tab table, .tab td, .tab tr, .tab th {
	border: 3px solid yellow;
	text-decoration: none;
}




input {
	width: 500px;
	height: 60px;
	font-size: 30px;
	text-align: center;
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

.g{
	text-decoration: none;
	color: red;
}

.g:hover{
	color:white;
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
	<jsp:include page="/views/2_Service/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->


	<div class="contents">
		<div class="cards">
			<p>상세 글 보기</p>

				<table id="newtab" border="1">
					<colgroup>
						<td width="30%">
						<td width="70%">
					</colgroup>
					
					<tr><th>게시글 고유번호</th><td>${boardVO.boPostKey }</td></tr>
					<tr><th>회원 고유번호</th><td>${boardVO.mKey }</td></tr>
					<tr><th>파일 일련번호</th><td>${boardVO.fileKey }</td></tr>
					<tr><th>카테고리 고유코드</th><td>${boardVO.boCateKey }</td></tr>
					<tr><th>작성자</th><td>${boardVO.boWriter }</td></tr>
					<tr><th>비밀번호</th><td>${boardVO.boWriterPass }</td></tr>
					<tr><th>이메일</th><td>${boardVO.boWriterEmail }</td></tr>
					<tr><th>제목</th><td>${boardVO.boTitle }</td></tr>
					<tr><th>ip주소</th><td>${boardVO.boWriterIp }</td></tr>
					<tr><th>조회수</th><td>${boardVO.boViews }</td></tr>
					<tr><th>부모글번호</th><td>${boardVO.boParentNO }</td></tr>
					<tr><th>내용</th><td>${boardVO.boContent}</td></tr>
					<tr><th>레벨</th><td>${boardVO.level}</td></tr>
					<tr><th>돌아가기</th><td></td></tr>
					<tr><td colspan="2"><a href="${contextPath}/board/modForm.do?boPostKey=${boardVO.boPostKey }" class="g">
										글 수정하기</a></td></tr>
					<tr><td colspan="2"><a href="${contextPath}/board/del.do?boPostKey=${boardVO.boPostKey }" class="g">글 삭제하기 </a></td></tr>

			</table>


		</div>
	</div>



	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp"></jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>