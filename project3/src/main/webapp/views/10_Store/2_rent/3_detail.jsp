<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"
	import="board.*"
	import="yunjinTest.*"%>
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

	<%
			String mid =(String) session.getAttribute("ID");
			System.out.println(mid);
			
			MemberDAO dao = new MemberDAO();
			int mKey = dao.searchId(mid);
			
			System.out.println("########################");
			System.out.println(mKey);
		%>


	<div class="contents">
		<div class="cards">
			<p>상세 글 보기</p>
<button onclick="location.href='${contextPath}/cart/addFormRent.do?rentalKey=${oftVO.rentalKey}'">장바구니 담기</button>
				<form action="${contextPath}/cart/addFormRent.do?rentalKey=${oftVO.rentalKey}">
				<input type="hidden" name="rentalKey" value="${rentalKey}">
				</form>
					<button>주문하기</button>
				<table id="newtab" border="1">
					<colgroup>
						<td width="30%">
						<td width="70%">
					</colgroup>
							<tr><th>상품번호 :</th><td> ${oftVO.rentalKey}</td></tr>
							<tr><th>상품명 :</th><td> ${oftVO.rentalPname }</td></tr>
							<tr><th>기간 : </th><td>${oftVO.rentalterm }일</td></tr>
							<tr><th>시작일 : </th><td>${oftVO.rentalStartDayS }</td></tr>
							<tr><th>마감일 : </th><td>${oftVO.rentalEndDayS }</td></tr>
							<tr><th>분류 : </th><td>${oftVO.proCateKey }</td></tr>
							<tr><th>파일 :</th><td> ${oftVO.fileKey }</td></tr>
							<tr><th>가격 : </th><td>${oftVO.rentPrice }</td></tr>
			</table>


		</div>
	</div>



	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp"></jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>