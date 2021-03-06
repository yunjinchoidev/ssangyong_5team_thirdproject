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
<script type="text/javascript">


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


<%
			String mid =(String) session.getAttribute("ID");
			System.out.println(mid);
			
			MemberDAO dao = new MemberDAO();
			int mKey = dao.searchId(mid);
			
			System.out.println("########################");
			System.out.println(mKey);
			
			String rentalKey = request.getParameter("rentalKey");
			if(rentalKey==null) rentalKey="";
			
			int rentPrice = 0;
			String rentPriceS = request.getParameter("rentPrice");
			if(rentPriceS!=null){
				rentPrice = Integer.parseInt(rentPriceS);
			}
			
		%>
	<div class="contents">
		<div class="cards">
			<p>장바구니 담기</p>
			<form action="${contextPath }/cart/add.do" enctype="multipart/form-data"> 
			<table align="center" class="tbdaddtab">
			<colgroup>
				<col width="30%">
			</colgroup>
					<tr><th>카트키</th><td><input type="text" name="cartKey" disabled ></td></tr>
					<tr><th>수량</th><td><input type="text" name="cartCnt"></td></tr>
					<tr><th>가격</th><td><input type="text" name="cartPrice" value=<%=rentPrice %>></td></tr>
					<tr><th>회원키</th><td><input type="text" name="mKey" value="<%=mKey%>"></td></tr>
					<tr><th>공식스토어</th><td><input type="text" name="officialKey" value="0" disabled></td></tr>
					<tr><th>렌탈</th><td><input type="text" name="rentalKey" value="<%=rentalKey%>"></td></tr>
					<tr><th>1:1거래</th><td><input type="text" name="cusKey" value="0" disabled></td></tr>
					<tr><th>강의?</th><td><input type="text" name="lecKey" value="0" disabled></td></tr>
					<tr><th>스토리매매?</th><td><input type="text" name="requKey" value="0" disabled></td></tr>
					<tr><td colspan="2"><input type="submit" value="제출하기"></td></tr>
			</table>
			</form>


		</div>
	</div>



	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp"></jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>