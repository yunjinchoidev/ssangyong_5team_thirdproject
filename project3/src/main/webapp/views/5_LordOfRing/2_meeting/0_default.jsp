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
#meetinglistwrap{
	width: 1000px;
	height: 200px;
	margin-left : 100px;
	border : 3px solid white;
	display: flex;
	padding: 20px;
}
.meetinglistchild{
	margin : 0 auto;
	font-size: 30px;
	width: 300px;
	height: 200px;
	display: inline-block;
	flex : 1;
	
}
#meetingdetailimg{
	width: 100%;
	height: 100%;
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
			<h1>정기 모임</h1>
			<h2>정기 모임 일정</h2>
			<p> 당신이 참여하길 기다리는 모임들이 있습니다</p>
		
				
			<div id="meetinglistwrap">
				<div class="meetinglistchild"><a href="1_detail.jsp"><img src="example.jpg" id="meetingdetailimg"></a></div>
				<div class="meetinglistchild">
					<ul>
						<li>날짜 : #####</li>
						<li>TITLE : ####</li>
						<li>인원 : ####</li>
					</ul>
				</div>
			</div>
			
			<div id="meetinglistwrap">
				<div class="meetinglistchild"><img src="example.jpg" id="meetingdetailimg"></div>
				<div class="meetinglistchild">
					<ul>
						<li>날짜 : #####</li>
						<li>TITLE : ####</li>
						<li>인원 : ####</li>
					</ul>
				</div>
			</div>
			
			<div id="meetinglistwrap">
				<div class="meetinglistchild"><img src="example.jpg" id="meetingdetailimg"></div>
				<div class="meetinglistchild">
					<ul>
						<li>날짜 : #####</li>
						<li>TITLE : ####</li>
						<li>인원 : ####</li>
					</ul>
				</div>
			</div>
			<div id="meetinglistwrap">
				<div class="meetinglistchild"><img src="example.jpg" id="meetingdetailimg"></div>
				<div class="meetinglistchild">
					<ul>
						<li>날짜 : #####</li>
						<li>TITLE : ####</li>
						<li>인원 : ####</li>
					</ul>
				</div>
			</div>
			<div id="meetinglistwrap">
				<div class="meetinglistchild"><img src="example.jpg" id="meetingdetailimg"></div>
				<div class="meetinglistchild">
					<ul>
						<li>날짜 : #####</li>
						<li>TITLE : ####</li>
						<li>인원 : ####</li>
					</ul>
				</div>
			</div>
			<div id="meetinglistwrap">
				<div class="meetinglistchild"><img src="example.jpg" id="meetingdetailimg"></div>
				<div class="meetinglistchild">
					<ul>
						<li>날짜 : #####</li>
						<li>TITLE : ####</li>
						<li>인원 : ####</li>
					</ul>
				</div>
			</div>
		
		
		
		
		
		
		
		</div>
	</div>





	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>