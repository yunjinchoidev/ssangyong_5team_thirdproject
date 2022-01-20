<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="attachedFileTest.*"
	import="officialStoreTest.*"
	%>
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
<title>Insert title here</title>
<script src="/project3/a00_com/jquery-3.6.0.js" type="text/javascript"></script>


<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<style>
.lordshopwrap{
	width: 1200px;
	height: 1200px;
	margin: 0 auto;
	padding: 20px;
	font-size: 30px;
}

.lordshopchild{
	width: 300px;
	height: 300px;
	border: 3px solid yellow;
	display: inline-block;
	margin: 20px;
}
.lordshopchild a{
	color:red;
	text-decoration: none;
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
				<h1> 장바구니</h1>
				 
				 <button onclick="location.href='${contextPath}/cart/addForm.do'">물건 추가</button>
				 <button onclick="location.href='${contextPath}/order/list.do'">결제 페이지로 이동</button>
					<div class="lordshopwrap">
				<c:choose>
					<c:when test="${empty oftList}">
						<div>
							<td colspan="16">등록된 글이 없습니다.</td>
						</div>
					</c:when>
					
					<c:when test="${!empty oftList}">
						<c:forEach var="oftList" items="${oftList}" varStatus="oftNum">
							<div class="lordshopchild"> 
								재고 : ${oftList.cartKey }<br>
								가격 : ${oftList.cartPrice }<br>
								<a href="${contextPath }/cart/del.do?cartKey=${oftList.cartKey}">장바구니에서 삭제</a><br>
								<a href="${contextPath }/cart/modForm.do?cartKey=${oftList.cartKey}">상품 수정</a><br>
								<a href="${contextPath }/order/addForm.do?cartKey=${oftList.cartKey}&cartPrice=${oftList.cartPrice}">결제하기</a>
							</div>
						</c:forEach>
					</c:when>
				</c:choose>
				</dv>
		</div>
	</div>





	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>