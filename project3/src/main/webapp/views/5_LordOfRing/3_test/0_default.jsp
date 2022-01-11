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
.testtab{
	width:60%;
	height: 1000px;
	margin: 0 auto;
}
</style>
</head>
<body>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

	<!-- S반지제왕 메뉴 삽입 -->
	<jsp:include page="/views/5_LordOfRing/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E반지제왕 메뉴 삽입 -->


	<div class="contents">
		<div class="cards">
				<h2>당신은.. 반지의 주인이 될 자격이 있습니까?</h2>
				<h2>약 10분에 걸쳐 당신의 성향을 검사하겠습니다.</h2>
				<h2>당신의 솔직한 답변을 기대합니다.</h2>

				<form>
				<table border="1" class="testtab">
					<colgroup>
					 <col width="10%">
					 <col width="70%">
					</colgroup>
					<tr><td>이름 : </td><td><input type="text"></td></tr>				
					<tr><td>1. 당신은 누구와 함께 걷고 있습니까?</td><td><textarea cols="100" rows="7"></textarea></td></tr>				
					<tr><td>1. 당신은 누구와 함께 걷고 있습니까?</td><td><textarea cols="100" rows="7"></textarea></td></tr>				
					<tr><td>1. 당신은 누구와 함께 걷고 있습니까?</td><td><textarea cols="100" rows="7"></textarea></td></tr>				
					<tr><td>1. 당신은 누구와 함께 걷고 있습니까?</td><td><textarea cols="100" rows="7"></textarea></td></tr>				
					<tr><td>1. 당신은 누구와 함께 걷고 있습니까?</td><td><textarea cols="100" rows="7"></textarea></td></tr>				
					<tr><td>1. 당신은 누구와 함께 걷고 있습니까?</td><td><textarea cols="100" rows="7"></textarea></td></tr>				
					<tr><td>1. 당신은 누구와 함께 걷고 있습니까?</td><td><textarea cols="100" rows="7"></textarea></td></tr>				
				</table>
					<input type="submit" value="제출하기">
					</form>				

		</div>
	</div>





	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>