<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="literacyContest.*"
	import="talentTake.*"
	import="java.util.ArrayList"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>재능기부 폼 작성</title>
</script>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<style>
.tbdtab {
	width: 600px;
	height: 300px;
	font-size: 40px;
	text-decoration: none;
	color: black;
	margin: 0 auto;
	padding: 20px;
}

#contebtn {
	width: 400px;
	height: 80px;
	font-size: 40px;
	font-weight: bolder;
	margin: 20px;
	margin-bottom: 30px;
}

.tbdaddtab {
	width: 1400px;
	height: 600px;
	border: 3px solid yellow;
	margin: 0 auto;
	font-size: 20px;
	margin-top: 50px;
	color: white;
	text-align: center;
}
.tbdaddtab tr{
	height: 60px;
}
.tbdaddtab table, .tbdaddtab td, .tbdaddtab tr, .tbdaddtab th {
	border: 3px solid yellow;
}

input{
	width:500px;
	height: 60px;
	font-size: 30px;
	text-align: center;
}

.conlisttab td {
	height: 50px;
}

#seachcon {
	width: 1000px;
	height: 100px;
	font-size: 60px;
	font-weight: bolder;
	text-align: center;
	background-color: white;
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
	<jsp:include page="/views/2_Service/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->


	<%
						int talenKey=0;
						String talenKeyS = request.getParameter("talenKey");
						if(talenKeyS!=null) {talenKey=Integer.parseInt(talenKeyS);}; 
						String talenYouWant = request.getParameter("talenYouWant"); if(talenYouWant==null) {talenYouWant="";};
						String talenChildPer = request.getParameter("talenChildPer"); if(talenChildPer==null) {talenChildPer="";};
						String talenDate = request.getParameter("talenDate"); if(talenDate==null) {talenDate="";};
						String talenLoc = request.getParameter("talenLoc"); if(talenLoc==null) {talenLoc="";};
						String tatime = request.getParameter("tatime"); if(tatime==null) {tatime="";};
						
						int mKey=0;
						String mKeyS = request.getParameter("mKey");
						if(mKeyS!=null) {mKey=Integer.parseInt(mKeyS);}; 
						
						
						TalentTakeDAO dao = new TalentTakeDAO();
						TalentTakeVO ta = new TalentTakeVO(talenKey, talenYouWant, talenChildPer, talenDate, talenLoc,mKey);
						
						dao.insertTalentDonationVO(ta);
						
						
			%>


	<div class="contents">
		<div class="cards">
			<p>글쓰기</p>
			<form enctype="multipart/form-data"> 
			<table align="center" class="tbdaddtab">
			<colgroup>
				<col width="30%">
			</colgroup>
					<tr><th>신청번호</th><td><input type="text" name="talenKey"></td></tr>
					<tr><th>아이가 원하는 재능</th><td><input type="text" name="talenYouWant" ></td></tr>
					<tr><th>아이의 성격</th><td><input type="text" name="talenChildPer"></td></tr>
					<tr><th>원하는 날짜</th><td><input type="text" name="talenDate"></td></tr>
					<tr><th>지역</th><td><input type="text" name="talenLoc"></td></tr>
					<tr><th>회원키</th><td><input type="text" name="mKey"></td></tr>
					<tr><td colspan="2"><input type="submit" value="제출하기"></td></tr>
			</table>
			</form>


		</div>
	</div>



	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp"></jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>