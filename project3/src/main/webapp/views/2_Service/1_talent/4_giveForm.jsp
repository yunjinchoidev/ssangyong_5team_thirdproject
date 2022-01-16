<%@page import="talentGive.TalentGiveVO"%>
<%@page import="talentGive.TalentGiveDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="talent.*" %>
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

body{
	border : 3px solid;
}

#talentapplytab{
	width:800px;
	height: 500px;
	border : 3px solid yellow;
	margin : 0 auto;
	font-size: 30px;
}

#talentapplytab table, #talentapplytab td, #talentapplytab tr{
	border : 3px solid yellow;
}

input[type=text], #selctime, input[type=date]{
	width: 400px;
	height: 40px;
	text-align: center;
	font-size: 30px;
}


h1{
	padding-top: 40px;
}
</style>
<script>
function check(){
	alert("제출이 완료되었습니다.");
}
</script>
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

			<%
			int taKey=0;
						String taKeyS = request.getParameter("taKey");
						if(taKeyS!=null) {taKey=Integer.parseInt(taKeyS);}; 
						String taloc = request.getParameter("taloc"); if(taloc==null) {taloc="";};
						String taname = request.getParameter("taname"); if(taname==null) {taname="";};
						String tamytalent = request.getParameter("tamytalent"); if(tamytalent==null) {tamytalent="";};
						String taapplydate = request.getParameter("taapplydate"); if(taapplydate==null) {taapplydate="";};
						String tatime = request.getParameter("tatime"); if(tatime==null) {tatime="";};
					
						
						int mKey=0;
						String mKeyS = request.getParameter("mKey");
						if(mKeyS!=null) {mKey=Integer.parseInt(mKeyS);}; 
						
						TalentGiveDAO dao = new TalentGiveDAO();
						dao.insertTalentApplyVO(new TalentGiveVO(taKey, taname, tamytalent, taapplydate, tatime, taloc, mKey));
			%>
	<div class="contents">
		<div class="cards">
			<h1> 신청서 작성</h1>
			<form>
			<table id="talentapplytab" border>
				<colgroup>
					<col width="30%">
				</colgroup>
				<tr><td>재능기부신청번호</td><td><input type="text" name="taKey"></td></tr> 
				<tr><td>신청자</td><td><input type="text" name="taname"></td></tr> 
				<tr><td>재능</td><td><input type="text" name="tamytalent"></td></tr> 
				<tr><td>신청일</td><td><input type="date" name="taapplydate">
				
				
				</td></tr> 
				<tr><td>참여 가능 장소</td><td><input type="text" name="taloc"></td></tr> 
				<tr><td>참여 가능한 시간대</td>
					<td><select name="tatime" id="selctime">
						<option value="9~12">9~12</option>
						<option value="12~15">12~15</option>
						<option value="15~18">15~18</option></select>
						</td>
				</tr> 
				
				<tr><td>회원 번호</td><td><input type="text" name="mKey" ></td></tr> 
					
			</table>
			<input type="submit" value="제출하기" onclick="check()">
			<input type="button" value="돌아가기" onclick="location.href='0_default.jsp'">
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