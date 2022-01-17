<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"
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
	<jsp:include page="/views/10_Store/menu.jsp">
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
							<tr><th>제품키 :</th><td> ${oftVO.cusKey }</td></tr>
							<tr><th>	상품명 : </th><td>${oftVO.cusPname }일</td></tr>
							<tr><th>	설명 : </th><td>${oftVO.cusExplain }</td></tr>
							<tr><th>	등록일 : </th><td>${oftVO.cusRegDateS }</td></tr>
							<tr><th>	수정일 : </th><td>${oftVO.cusModiDateS }</td></tr>
							<tr><th>	재고 :</th><td> ${oftVO.cusStock }</td></tr>
							<tr><th>	할인률 :</th><td> ${oftVO.cusDiscount }</td></tr>
							<tr><th>	회원키 :</th><td> ${oftVO.mKey }</td></tr>
							<tr><th>	상품분류 :</th><td> ${oftVO.proCateKey }</td></tr>
							<tr><th>	파일키 :</th><td> ${oftVO.fileKey }</td></tr>
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