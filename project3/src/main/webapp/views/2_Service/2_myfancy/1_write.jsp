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

body{
	border : 3px solid;
}
.myfancywrap{
	display: flex;
	padding-left: 320px;
}

.myfancywrap img{
	width: 100px;
	height: 100px;
	border: 3px solid;
	flex : 1;
}

#myfancywritetab{
	margin : 0 auto;
	width : 50%;
	
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
			<p>나의 공상 기록하기 </p>
			<table border id="myfancywritetab">
				<tr><td>글 제목</td><td>####</td><tr>
				<tr><td>내용</td><td><textarea rows="20" cols="40"></textarea></td>
			</table>
			<input type="button" value="등록하기">
			
			<ul>
				<li> <a href="2_list.jsp">목록으로</a></li>
			</ul>
			
		</div>
	</div>





	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>