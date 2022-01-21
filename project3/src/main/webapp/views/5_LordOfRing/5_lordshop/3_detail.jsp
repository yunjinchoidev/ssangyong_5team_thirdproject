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

.newtab table, .newtab td, .newtab tr, .newtab th {
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
	<jsp:include page="/views/5_LordOfRing/menu.jsp">
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
					<tr><th>공식스토어 고유번호</th><td>${oftVO.officialKey}</td></tr>
					<tr><th>제품 이름</th><td>${oftVO.officialPname}</td></tr>
					<tr><th>설명</th><td>${oftVO.officialExplain}</td></tr>
					<tr><th>재고</th><td>${oftVO.officialInventory}</td></tr>
					<tr><th>할인률</th><td>${oftVO.officialDiscount}</td></tr>
					<tr><th>상품분류번호</th><td>${oftVO.proCateKey}</td></tr>
					<tr><th>파일번호</th><td>${oftVO.fileKey}</td></tr>
					<tr><td colspan="2"><input type="submit" value="제출하기"></td></tr>
					<button onclick="location.href='${contextPath}'">장바구니 담기</button>
					<button>주문하기</button>
			</table>


		</div>
	</div>



	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp"></jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>