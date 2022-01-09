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
<style>
.thecontest {
	display: flex;
	width: 1100px;
	margin: 0 auto;
}

.thismonth {
	width: 200px;
	flex: 1;
	margin: 20px;
}

.thismonthchild {
	
}

#theimg {
	width: 150px;
	height: 150px;
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


	<div class="contents">
		<div class="cards">
			<h1>이달의 판타지</h1>
			<p>이벤트 기간 ####.##.## ~ ####.##.##
			<p>
				##########################<br> ##########################<br>
				##########################<br> ##########################<br>
			</p>

			<div class="thecontest">
				<div class="thismonth">
					<div>
						<input type="radio">
					</div>
					<div class="thismonthchild">
						<img src="example.jpg" id="theimg">
					</div>
					<div class="thismonthchild">
						####<br> #####<br> #####<br> #####<br>
					</div>
				</div>
				<div class="thismonth">
					<div>
						<input type="radio">
					</div>
					<div class="thismonthchild">
						<img src="example.jpg" id="theimg">
					</div>
					<div class="thismonthchild">
						####<br> #####<br> #####<br> #####<br>
					</div>
				</div>
				<div class="thismonth">
					<div>
						<input type="radio">
					</div>
					<div class="thismonthchild">
						<img src="example.jpg" id="theimg">
					</div>
					<div class="thismonthchild">
						####<br> #####<br> #####<br> #####<br>
					</div>
				</div>
				<div class="thismonth">
					<div>
						<input type="radio">
					</div>
					<div class="thismonthchild">
						<img src="example.jpg" id="theimg">
					</div>
					<div class="thismonthchild">
						####<br> #####<br> #####<br> #####<br>
					</div>
				</div>
				<div class="thismonth">
					<div>
						<input type="radio">
					</div>
					<div class="thismonthchild">
						<img src="example.jpg" id="theimg">
					</div>
					<div class="thismonthchild">
						####<br> #####<br> #####<br> #####<br>
					</div>
				</div>
			</div>
			<div class="thecontest">
				<div class="thismonth">
					<div>
						<input type="radio">
					</div>
					<div class="thismonthchild">
						<img src="example.jpg" id="theimg">
					</div>
					<div class="thismonthchild">
						####<br> #####<br> #####<br> #####<br>
					</div>
				</div>
				<div class="thismonth">
					<div>
						<input type="radio">
					</div>
					<div class="thismonthchild">
						<img src="example.jpg" id="theimg">
					</div>
					<div class="thismonthchild">
						####<br> #####<br> #####<br> #####<br>
					</div>
				</div>
				<div class="thismonth">
					<div>
						<input type="radio">
					</div>
					<div class="thismonthchild">
						<img src="example.jpg" id="theimg">
					</div>
					<div class="thismonthchild">
						####<br> #####<br> #####<br> #####<br>
					</div>
				</div>
				<div class="thismonth">
					<div>
						<input type="radio">
					</div>
					<div class="thismonthchild">
						<img src="example.jpg" id="theimg">
					</div>
					<div class="thismonthchild">
						####<br> #####<br> #####<br> #####<br>
					</div>
				</div>
				<div class="thismonth">
					<div>
						<input type="radio">
					</div>
					<div class="thismonthchild">
						<img src="example.jpg" id="theimg">
					</div>
					<div class="thismonthchild">
						####<br> #####<br> #####<br> #####<br>
					</div>
				</div>
			</div>
			<div class="thecontest">
				<div class="thismonth">
					<div>
						<input type="radio">
					</div>
					<div class="thismonthchild">
						<img src="example.jpg" id="theimg">
					</div>
					<div class="thismonthchild">
						####<br> #####<br> #####<br> #####<br>
					</div>
				</div>
				<div class="thismonth">
					<div>
						<input type="radio">
					</div>
					<div class="thismonthchild">
						<img src="example.jpg" id="theimg">
					</div>
					<div class="thismonthchild">
						####<br> #####<br> #####<br> #####<br>
					</div>
				</div>
				<div class="thismonth">
					<div>
						<input type="radio">
					</div>
					<div class="thismonthchild">
						<img src="example.jpg" id="theimg">
					</div>
					<div class="thismonthchild">
						####<br> #####<br> #####<br> #####<br>
					</div>
				</div>
				<div class="thismonth">
					<div>
						<input type="radio">
					</div>
					<div class="thismonthchild">
						<img src="example.jpg" id="theimg">
					</div>
					<div class="thismonthchild">
						####<br> #####<br> #####<br> #####<br>
					</div>
				</div>
				<div class="thismonth">
					<div>
						<input type="radio">
					</div>
					<div class="thismonthchild">
						<img src="example.jpg" id="theimg">
					</div>
					<div class="thismonthchild">
						####<br> #####<br> #####<br> #####<br>
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