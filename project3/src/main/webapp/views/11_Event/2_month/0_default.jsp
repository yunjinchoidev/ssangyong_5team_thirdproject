<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="attachedFile.*" import="monthFantasy.*"
	import="java.util.*"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이달의판타지</title>
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>

<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<style>
.mfchild {
	padding: 20px;
	width: 400px;
	height: 300px;
	display: inline-block;
	margin-top: 60px;
	margin: 20px;
}

.mfchild img {
	border: 10px solid yellow;
	width: 200px;
	display: inline-block;
}

.mfchild a {
	color: white;
	font-size: 30px;
	text-decoration: none;
}

.mfbtn {
	width: 300px;
	height: 150px;
	margin: 30px;
	font-size: 40px;
	font-weight: bolder;
}

input[type=submit]{
	width : 200px;
	height: 60px;
	font-size: 30px;
}

input[type=radio]{
	width : 30px;
	height: 30px;
}

.p1{
	font-size: 30px;
}

.p2{
	font-size: 50px;
}

#mftab{
	margin: 0 auto;
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
	<jsp:include page="/views/11_Event/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

	<%
		MonthFantasyDAO dao = new MonthFantasyDAO();
		AttachedFileDAO dao01 = new AttachedFileDAO();
	%>

	<div class="contents">
		<div class="cards">
			<p id="p2">지금 당장 투표해주세요.</p>
			<p id="p1">
				마음에 드는 판타지를 골라주세요<br> 이벤트 기간 2022.01.1(토) ~ 21(금)
			</p>
			<br> <br>

			<table id="mftab">
				<tr><td>======순위======</td></tr>
				<% 
				for(MonthFantasyVO f : dao.MonthFantasylist02()){ %>
					<tr><td><%=f.getMonthindivititle() %></td></tr>
				<%} %>
			</table>			
			
			<hr style="border:3px solid white">
			<%
			for (MonthFantasyVO d : dao.MonthFantasylist()) {
			%>
				<div class="mfchild">
			<form action="1_voteprc.jsp">
				<a href="3_detail"><img src="/project3/views/11_Event/2_month/Media/<%=dao01.SearchfilePath(d.getFileKey())%>"></a>
				 <br><%=d.getMonthindivititle() %>
						<input type="hidden" name="selecKey" value="<%=d.getMonthindiviKey()%>"><br>
						<input type="radio" name="ch" value="1">
						<input type="submit" value="투표하기"><p>현재 표:<%=d.getMonthindivilikecnt()%></p>
			</form>
			</div>

			<%
			}
			%>


		</div>
	</div>




	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>