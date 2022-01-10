<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="service.talent.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<style>
#talentlisttab{
	width:800px;
	height: 400px;
	border : 2px solid black;
	margin: 0 auto;
	font-size: 30px;
}
</style>
</head>
<body>
	<%
	
		TalentApplyDAO dao = new TalentApplyDAO();
		String taKey = request.getParameter("taKey");	
		int _taKey =Integer.parseInt(taKey);

		String taname = request.getParameter("taname");	
		String tamytalent = request.getParameter("tamytalent");	
		String taapplydate = request.getParameter("taapplydate");	
		String tatime = request.getParameter("tatime");	
		String taloc = request.getParameter("taloc");	
		String mKey = request.getParameter("mKey");	
		int _mKey =Integer.parseInt(mKey);
		
		if(taKey==null) taKey="";
		if(taname==null) taname="";
		if(tamytalent==null) tamytalent="";
		if(taapplydate==null) taapplydate="";
		if(tatime==null) tatime="";
		if(taloc==null) taloc="";
		if(mKey==null) mKey="";
		
		dao.insertTalentApplyVOPre(new TalentApplyVO(_taKey, taname, tamytalent,
				taapplydate, tatime, taloc, _mKey));
		
		
		
		
		ArrayList<TalentApplyVO> taalllist = dao.Alllist();
		ArrayList<TalentApplyVO> talist = dao.Search01(taname);
		
		
		
	%>

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
			<br>
			<h1>재능을 기부하겠다고 한 사람들 명단</h1>
				<table id="talentlisttab" border>
					<tr><td>신청번호</td><td>신청자이름</td><td>특기</td><td>신청일</td><td>가능시간</td><td>지역</td><td>회원키</td></tr>
					<%for(TalentApplyVO ta : taalllist){ %>
						<tr><td><%=ta.getTaKey() %></td>
						<td><%=ta.getTaname() %></td>
						<td><%=ta.getTamytalent() %></td>
						<td><%=ta.getTaapplydate() %></td>
						<td><%=ta.getTatime() %></td>
						<td><%=ta.getTaloc() %></td>
						<td><%=ta.getmKey() %></td></tr>
					<%} %>
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