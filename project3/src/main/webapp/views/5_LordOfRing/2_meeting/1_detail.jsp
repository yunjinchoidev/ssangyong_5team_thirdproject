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
#lordmalldetailwrap{
	width: 1300px;
	height: 600px;
	margin: 0 auto;
	border : 3px solid white;
	display: flex;
}
.lordmalldetailchild{
	margin : 0 auto;
	font-size: 30px;
	width: 600px;
	height: 600px;
	border:  3px solid white;
	display: inline-block;
	flex : 1;
	
}
#detailimg{
	width: 100%;
	height: 100%;
}

#meetingtab{
	margin: 0 auto;
	width: 70%;
	height: 600px;
}
</style>
</head>
<body>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

	<!-- S반지제왕 메뉴 삽입 -->
	<jsp:include page="/views/5_LordOfRing/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E반지제왕 메뉴 삽입 -->


	<div class="contents">
		<div class="cards">
				<h1> #번째 정기 모임</h1>
				<p> 신청서를 작성하면 신청이 완료됩니다.</p>
					
					<div id="lordmalldetailwrap">
						<div class="lordmalldetailchild"><img src="example.jpg" id="detailimg"></div>
						<div class="lordmalldetailchild">
							<ul>
								<li>장소 : #####</li>
								<li>날짜 : ####</li>
								<li>시간 : ####</li>
								<li>뒤풀이 장소 : <select><option>1</option></select></li>
								<li>콘텐츠 : #####</li>
							</ul>
						</div>
					</div>
					
					
				<h2>신청서 작성</h2>
				<form>
					<table border id="meetingtab">
						<tr><td>이메일</td><td><input type="text"></td></tr>
						<tr><td>이름</td><td><input type="text"></td></tr>
						<tr><td>전화번호</td><td><input type="text"></td></tr>
						<tr><td>소속</td><td><input type="text"></td></tr>
					</table>
				
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