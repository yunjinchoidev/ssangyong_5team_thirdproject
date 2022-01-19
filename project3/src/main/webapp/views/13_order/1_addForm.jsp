<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="literacyContest.*"
	import="java.util.ArrayList"
	import="yunjinTest.*"
	import="login.*"%>
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
			
			String cartKey = request.getParameter("cartKey");
			String cartPrice = request.getParameter("cartPrice");
			
			
		%>
	<div class="contents">
		<div class="cards">
			<p>글쓰기</p>
			
			<form action="${contextPath }/order/add.do" enctype="multipart/form-data"> 
			<input type="hidden" name="mKey" value="<%=mKey %>">
			<table align="center" class="tbdaddtab">
			<colgroup>
				<col width="30%">
			</colgroup>
					<tr><th>판매자</th><td><input type="text" name="sellerId" value="판타지빌리지"></td></tr>
					<tr><th>할부</th><td><input type="text" name="installType" value="0"></td></tr>
					<tr><th>가격</th><td><input type="text" name="orderPrice" value="<%=cartPrice%>"></td></tr>
					<tr><th>결제유형</th><td><input type="text" name="payType"></td></tr>
					
					<tr><th>이메일주소</th><td><input type="text" name="orderEamil"></td></tr>
					<tr><th>카드 유형</th><td><input type="text" name="cardType" value="신용카드"></td></tr>
					<tr><th>장바구니 번호</th><td><input type="text" name="cartKey" value="<%=cartKey %>"></td></tr>
					<tr><th>회원 키</th><td><input type="text" name="mKey" value="<%=mKey%>"></td></tr>
					<tr><th>주문상태</th><td><input type="text" name="orderstatus"></td></tr>
					<tr><td colspan="2"><input type="submit" value="결제하기"></td></tr>
			</table>
			</form>


		</div>
	</div>



	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp"></jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>