<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="lecture.*" import="attachedFile.*"
	import="cart.*"%>
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


#gogo{
	width:800px;
	height: 300px;
	font-size: 30px;
	color: white;
	border : 3px solid yellow;
	margin : 0 auto;
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
	LectureDAO dao = new LectureDAO();
	AttachedFileDAO dao01 = new AttachedFileDAO();
	CartDAO2 dao02 = new CartDAO2();
	
	
	
	String lecKeyS = request.getParameter("lecKey");
	int lecKey =0;
	if(lecKeyS!=null){lecKey=Integer.parseInt(lecKeyS);};
	
	int lecPrice = dao.lecSearch(lecKey).get(0).getLecPrice();
	int mKey = 201;
	
	
	
	int A = (int)(Math.random()*1000);
	dao02.insertcart((new CartVO2(A, lecPrice, lecKey, 201)));
	CartVO2 c = dao02.cartSearch(mKey).get(0);
	

	
	
	%>
	<div class="contents">
		<div class="cards">
			<p>나의 장바구니</p>
			<table id="gogo">
					<tr><td>장바구니번호</td><td><%=A %></td></tr>
					<tr><td>가격</td><td><%=c.getCartPrice()%></td></tr>
					<tr><td>강의명</td><td><%=dao.lecSearch(lecKey).get(0).getLecName()%></td></tr>
			</table>		
			<br>
			<button class="lecbtn" onclick="location.href='2_reglec.jsp'">결제하러가기</button>
			<button class="lecbtn">삭제하기</button><br>
			
			
			
		</div>
	</div>





	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>