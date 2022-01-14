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
\
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
	
	int MonthindiviKey=0;
	String MonthindiviKeyS = request.getParameter("MonthindiviKey");
	if(MonthindiviKeyS!=null) {MonthindiviKey=Integer.parseInt(MonthindiviKeyS);};
	
	int ch=0;
	String chS = request.getParameter("ch");
	if(chS!=null) {ch=Integer.parseInt(chS);};
	
	ArrayList<MonthFantasyVO> alist = dao.SearchMonthFantasy(MonthindiviKey);
	
	
	
	%>



	<div class="contents">
		<div class="cards">

			<p id="p1">지금 당장 투표해주세요.</p>
			<p id="p2">
				마음에 드는 판타지를 골라주세요<br> 이벤트 기간 2022.01.1(토) ~ 21(금)
			</p>
			<br> <br>

			<button class="mfbtn">결과보러 가기</button>
			<br>


			<%
			for (MonthFantasyVO d : dao.MonthFantasylist()) {
			%>
				<div class="mfchild">
			<form action="1_voteprc.jsp">
				<a href="1_voteprc.jsp"><img src="/project3/views/11_Event/2_month/Media/<%=dao01.SearchfilePath(d.getFileKey())%>"></a>
				 <br><%=d.getMonthindivititle() %>
						<input type="hidden" name="MonthindiviKey" value="<%=d.getMonthindiviKey()%>"><br>
						<input type="radio" name="ch" value="1" id="vote">
						<input type="submit" value="투표하기">
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