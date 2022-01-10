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
}
p{
	font-size: 20px;
}

#shoppingcarttab{
	margin : 0 auto;
	width : 70%;
	
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
			
			<table border="1" id="shoppingcarttab">
				<colgroup>
					<col width="20%">
					<col width="40%">
					<col width="20%">
					<col width="20%">
				</colgroup>
				<tr><td>체크유무</td><td>상품이미지</td><td>수량</td><td>가격</td></tr>
				<tr><td><input type="checkbox"></td><td><img src="example.jpg"></td>
				<td><select><option>1</option><option>2</option><option>3</option>
				</select></td><td>####</td></tr>
				<tr><td><input type="checkbox"></td><td><img src="example.jpg"></td>
				<td><select><option>1</option><option>2</option><option>3</option>
				</select></td><td>####</td></tr>
				<tr><td><input type="checkbox"></td><td><img src="example.jpg"></td>
				<td><select><option>1</option><option>2</option><option>3</option>
				</select></td><td>####</td></tr>
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