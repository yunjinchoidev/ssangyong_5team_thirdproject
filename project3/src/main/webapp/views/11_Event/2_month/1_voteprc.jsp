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
<script>
	window.location.href="0_default.jsp"
</script>

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
	
	int theKey=0;
	String MonthindiviKeyS = request.getParameter("selecKey");
	if(MonthindiviKeyS!=null) {theKey=Integer.parseInt(MonthindiviKeyS);};
	
	int like = dao.Searchlike(theKey);
	
	for(MonthFantasyVO a : dao.SearchMonthFantasy(theKey)){
		dao.updateMonthFantasy(
				new MonthFantasyVO(
				a.getMonthindiviKey(),
				a.getMonthindivicontents(),
				a.getMonthindivisort(),
				a.getMonthindivititle(),
				a.getMonthindivilikecnt()+1,
				a.getMonthindividonlikecnt(),
				a.getMonthindiviwriter(),
				a.getmKey(),
				a.getFileKey()));
		}
	
	
	%>







	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>