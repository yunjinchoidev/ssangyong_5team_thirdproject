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

#detailtalentdonatab {
	border: 3px solid blue;
	text-align: center;
	width: 40%;
	height: 600px;
	font-size: 20px;
	margin: 0 auto;
}

p {
	font-size: 20px;
}
</style>
</head>
<body>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

	<!-- S서비스메뉴 삽입 -->
	<jsp:include page="/views/2_Service/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E서비스 메뉴삽입 -->


	<div class="contents">
		<div class="cards">
		
			<p>재능 기부 신청 상세 페이지</p>
		
		
			<table id="detailtalentdonatab" border>
					<tr>
						<th scope="row" colspan="2">지원 자격 조건</th>
					</tr>
					<tr>
						<th scope="row">봉사자연령</th>
						<td>####</td>
					</tr>
					<tr>
						<th scope="row">봉사자성별</th>
						<td>####</td>
					</tr>
					<tr>
						<th scope="row">자격요건</th>
						<td>-</td>
					</tr>
					<tr>
						<th scope="row">사전교육</th>
						<td>-</td>
					</tr>
					<tr>
						<td colspan="2"><textarea cols="70" rows="20"></textarea></td>
					</tr>
				</tbody>
				</table>
			<input type="button" value="목록으로">
			
		</div>
	</div>





	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>