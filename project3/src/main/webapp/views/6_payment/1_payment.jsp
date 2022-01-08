<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<style>

body{
	border : 3px solid;
}

p{
	font-size: 20px;
}

#shoppingcarttab{
	margin : 0 auto;
	border : 3px solid;
	width : 70%;
}

#paymenttab{
	margin : 0 auto;
	width : 40%;
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
			<p>장바구니</p>
			
			<p> 배송지 선택</p>
			<table border="2" id="paymenttab">
				<tr><td>배송지 선택</td><td>#####</td></tr>
				<tr><td>주문인</td><td>#####</td></tr>
				<tr><td>주문인</td><td>#####</td></tr>
				<tr><td>받는 사람</td><td>#####</td></tr>
				<tr><td>주소</td><td>#####</td></tr>
				<tr><td>휴대전화번호</td><td>#####</td></tr>
			</table>
			
			
			<ul>
				<li><a href="1_payment.jsp">결제하기</a></li>
				<li><a href="/project3/views/0_Main/aboutus.jsp">메인 페이지로 이동</a></li>
			</ul>
								
		</div>
	</div>





	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>