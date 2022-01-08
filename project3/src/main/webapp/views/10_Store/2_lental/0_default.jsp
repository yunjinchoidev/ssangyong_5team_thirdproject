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
			<div class="wrap">
				<div class="offex">
					<h2>공식 스토어</h2>
					<p>이 곳에서 판매하는 제품들은 엄격한 공정을 거쳐 엄선된 것들입니다.</p>
				</div>

				<div class="offup">
					<div class="offup01">
						<div class="offchild">
							<a href="#"><img src="/project3/views/2_upmenubar/Media/h01.jpg"></a>
						</div>
						<div class="offchild">
							<a href="#"><img src="/project3/views/2_upmenubar/Media/h02.jpg"></a>
						</div>
						<div class="offchild">
							<a href="#"><img src="/project3/views/2_upmenubar/Media/h03.jpg"></a>
						</div>
					</div>
					<div class="offup01">
						<div class="offchild">
							<a href="#"><img src="/project3/views/2_upmenubar/Media/m01.jpg"></a>
						</div>
						<div class="offchild">
							<a href="#"><img src="/project3/views/2_upmenubar/Media/m02.jpg"></a>
						</div>
						<div class="offchild">
							<a href="#"><img src="/project3/views/2_upmenubar/Media/m03.jpg"></a>
						</div>
					</div>
					<div class="offup01">
						<div class="offchild">
							<a href="#"><img src="/project3/views/2_upmenubar/Media/l01.jpg"></a>
						</div>
						<div class="offchild">
							<a href="#"><img src="/project3/views/2_upmenubar/Media/l02.jpg"></a>
						</div>
						<div class="offchild">
							<a href="#"><img src="/project3/views/2_upmenubar/Media/l03.jpg"></a>
						</div>
					</div>
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