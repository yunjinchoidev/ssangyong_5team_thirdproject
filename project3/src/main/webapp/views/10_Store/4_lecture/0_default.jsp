<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="lecture.*" import="attachedFile.*"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의</title>
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<style>

.lectureboxchild {
	padding: 20px;
	width: 400px;
	height: 300px;
	display: inline-block;
	margin-top: 60px;
	margin: 20px;
}

.lectureboxchild img {
	border: 10px solid yellow;
	width: 200px;
	display: inline-block;
}

.lectureboxchild a {
	color: white;
	font-size: 30px;
	text-decoration: none;
}

.lecbtn {
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
	%>
	<div class="contents">
		<div class="cards">
			<h2>강의</h2>
			<p>이 곳에서 원하는 강의를 수강신청 하십시오.</p>
			<button class="lecbtn" onclick="location.href='2_reglec.jsp'">등록하기</button>
			<br>
			<%
			for (LectureVO d : dao.lecList()) {
			%>
			<div class="lectureboxchild">
			<form action="1_detail.jsp">
				<a href="1_detail.jsp">
				<img src="/project3/views/10_Store/4_lecture/Media/<%=dao01.SearchfilePath(d.getFileKey())%>"> 
				<br><%=d.getLecName() %><br><%=d.getLecPrice() %>
			
						<input type="hidden" name="lecKeyS" value="<%=d.getLecKey()%>"><br>
						<input type="submit" value="수강신청하기"></a>
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