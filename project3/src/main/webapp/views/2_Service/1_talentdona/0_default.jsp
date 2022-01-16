<%@page import="talentApply.TalentApplyVO"%>
<%@page import="talentApply.TalentApplyDAO"%>
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
body {
	
}

h1 {
	font-size: 50px;
}

p {
	font-size: 30px;
}

.donabox01 {
	display: flex;
	width: 70%;
	margin: 0 auto;
}

.donabox01 img {
	width: 100px;
	height: 100px;
	border: 3px solid;
	flex: 1;
}

.donabox02 {
	width: 80%;
	height: 300px;
	margin: 0 auto;
	margin-top: 20px;
	color: white;
}

.donabox02 a {
	font-size: 40px;
	padding: 20px;
	margin: 0 auto;
	text-decoration: none;
	color: white;
}

.donabox02 td:hover {
	background-color: #F0D9FF;
}

.talenmaintab {
	width: 1400px;
	height: 600px;
	border: 3px solid yellow;
	margin: 0 auto;
	font-size: 20px;
	margin-top: 50px;
	color: white;
	text-align: center;
}

.talenmaintab table, .talenmaintab td, .talenmaintab td {
	border: 3px solid yellow;
}

.talenmaintab td {
	height: 50px;
}

.talbtn{
	width: 400px;
	height: 150px;
	font-size: 30px;
	font-weight: bolder;
	margin: 30px;
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
			<div>
				<h1>재능 기부</h1>
				<p>당신의 재능이 누군가에겐 필요합니다.</p>
				<p>당신이 가진 선한 영향력이 아이의 인생을 바꿀 수 있습니다</p>
			</div>



			<button onclick="location.href='1_apply.jsp'" class="talbtn">재능을 나누고 싶어요<br>(기부자 등록)</button>
			<button onclick="location.href='2_applykid.jsp'" class="talbtn">재능기부를 받고 싶어요<br>(참여자 등록)</button>
			<button onclick="location.href='3_telenboard.jsp'" class="talbtn">게시판(기부자&참여하기)</button>

			<hr style="border : 5px solid yellow; margin: 40px; ">
			

			<h2>재능을 나누겠다고 한 사람들</h2>
			<%
			TalentApplyDAO dao = new TalentApplyDAO();
			%>
			<table class="talenmaintab">
				<tr>
					<td>신청번호</td>
					<td>신청자이름</td>
					<td>신청자의 재능</td>
					<td>지원일</td>
					<td>가능한시간대</td>
					<td>참여가능지역</td>
					<td>회원번호</td>
				</tr>
				<%
				for (TalentApplyVO m01 : dao.TalentApplyist()) {
				%>
				<tr>
					<td><%=m01.getTaKey()%></td>
					<td><%=m01.getTaname()%></td>
					<td><%=m01.getTamytalent()%></td>
					<td><%=m01.getTaapplydate()%></td>
					<td><%=m01.getTatime()%></td>
					<td><%=m01.getTaloc()%></td>
					<td><%=m01.getmKey()%></td>
				</tr>
				<%
				}
				%>
			</table>

		</div>
	</div>


	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>