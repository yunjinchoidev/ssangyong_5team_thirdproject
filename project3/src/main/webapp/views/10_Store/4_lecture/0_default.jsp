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
.lecturebox{
	display: flex;
	width : 1000px;
	height: 400px;
	margin: 0 auto;
	padding: 20px;
}
.lectureboxchild{
	padding: 20px;
	flex : 1;
}

.lectureboxchild img{
	border : 10px solid yellow;
}

.lectureboxchild a{
	color : white;
	font-size: 30px;
	text-decoration: none;
}

.lecbtn{
	width:300px;
	height: 150px;
	margin: 30px;
	font-size: 40px;
	font-weight: bolder;
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


	<div class="contents">
		<div class="cards">
			<h2>강의</h2>
			<p>이 곳에서 원하는 강의를 수강신청 하십시오.
	


			</p>
			
			<div class="lecturebox">
				<div class="lectureboxchild">
					<a href="1_detail.jsp?id=1"><img
						src="/project3/views/10_Store/4_lecture/Media/lecture01.png">
						입문자를 위한<br> 톨킨 따라잡기
						</a>
				</div>
				<div class="lectureboxchild">
					<a href="1_detail.jsp?id=2"><img
						src="/project3/views/10_Store/4_lecture/Media/lecture02.png"></a>
				</div>
				<div class="lectureboxchild">
					<a href="1_detail"><img
						src="/project3/views/10_Store/4_lecture/Media/lecture03.png"></a>
				</div>
			</div>
			<div class="lecturebox">
				<div class="lectureboxchild">
					<a href="1_detail.jsp"><img
						src="/project3/views/10_Store/4_lecture/Media/lecture01.png"></a>
				</div>
				<div class="lectureboxchild">
					<a href="1_detail.jsp"><img
						src="/project3/views/10_Store/4_lecture/Media/lecture02.png"></a>
				</div>
				<div class="lectureboxchild">
					<a href="1_detail.jsp"><img
						src="/project3/views/10_Store/4_lecture/Media/lecture03.png"></a>
				</div>
			</div>
			<div class="lecturebox">
				<div class="lectureboxchild">
					<a href="1_detail.jsp"><img
						src="/project3/views/10_Store/4_lecture/Media/lecture01.png"></a>
				</div>
				<div class="lectureboxchild">
					<a href="1_detail.jsp"><img
						src="/project3/views/10_Store/4_lecture/Media/lecture02.png"></a>
				</div>
				<div class="lectureboxchild">
					<a href="1_detail.jsp"><img
						src="/project3/views/10_Store/4_lecture/Media/lecture03.png"></a>
				</div>
			</div>
	
			<button class="lecbtn" onclick="location.href='2_reglec.jsp'">등록하기</button>
			<button class="lecbtn">수정하기</button>
		</div>
	</div>
	




	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>