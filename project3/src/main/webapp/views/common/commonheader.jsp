<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>common header</title>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<style>

/*헤더 전체 조정*/
.header {
	background-color: #8D647C;
	width: 100%;
	height: 250px;
	border: 3px solid black;
}

/*최상단 배너*/
.headerlogo {
	width: 150px;
	height: 150px;
	margin: 0 auto;
}

/*최상단 배너 이미지*/
.headerlogo img {
	width: 150px;
	height: 150px;
	border: 3px solid black;
}

/*S우측 상단 메뉴*/
.rightupmenu {
	font-size: 20px;
	text-align: center;
	margin-top: 20px;
	width: 400px;
	height: 70px;
	border: 3px solid black;
	float: right;
}

.rightupmenu ul li {
	display: inline-block;
	border: 3px solid black;
}

.rightupmenu a {
	text-decoration: none;
	background-color: white;
	color: black;
}

/*wrap01과 상단카테고리 거리 벌리기*/
.wrap01 {
	margin-bottom: 25px;
}
/*float 해제 작업*/
.wrap01::after {
	content: '';
	display: block;
	clear: both;
}
/*E우측 상단 메뉴*/

/*S상단 카테고리*/
.up { /*상단 카테고리 전체박스*/
	font-size: 15px;
	border: 1px soild;
	width: 1400px;
	height: 70px;
	text-align: center;
	border: 3px solid black;
	margin : 0 auto;
}

.up01 {
	display: flex;
	width: 1380px;
	height: 50px;
	background-color: white;
	margin-bottom: 20px;
	margin-top: 10px;
	margin-left: 10px;
	border: 3px solid black;
}

.child {
	flex: 1;
	border: 3px solid black;
	padding-top: 10px;
}

.child a {
	text-decoration: none;
	color: black;
}

.child:hover { /*개별 박스에 마우스 올렸을 때 배경색 변하게 처리*/
	background-color: #A3E4DB;
}

.go {
	float: right;
}
/*E상단 카테고리*/
</style>
<script type="text/javascript">
	
</script>
</head>
<body>

	<!-- 헤더 시작 -->
	<header>
		<div class="header">

			<div class="wrap01">
				<!-- 우측 상단 메뉴 -->
				<div class="rightupmenu">
					<ul>
						<li><a href="#">로그인</a></li>
						<li><a href="#">가입</a></li>
						<li><a href="#">마이페이지</a></li>
						<li><a href="#">고객센터</a></li>
					</ul>
				</div>

				<!-- 상단 메인 로고 -->
				<div class="headerlogo">
					<a href="/project3/views/2_upmenubar/1_aboutus/0_default.jsp">
						<img src="/project3/views/Media/fvlogo.png">
					</a>
				</div>
			</div>

			<!-- 상단 메뉴 -->
			<div class="up">
				<div class="up01">
					<div class="child">
						<a href="/project3/views/2_upmenubar/1_aboutus/0_default.jsp">ABOUT
							US</a>
					</div>
					<div class="child">
						<a href="/project3/views/2_upmenubar/2_official/0_default.jsp">공식
							스토어</a>
					</div>
					<div class="child">
						<a href="/project3/views/2_upmenubar/3_personal/0_default.jsp">개인
							장터</a>
					</div>
					<div class="child">
						<a href="/project3/views/2_upmenubar/4_talent/0_default.jsp">재능
							기부</a>
					</div>
					<div class="child">
						<a href="/project3/views/2_upmenubar/5_readingclub/0_default.jsp">독서
							클럽</a>
					</div>
					<div class="child">
						<a href="/project3/views/2_upmenubar/6_freeboard/listArticles.jsp">자유게시판</a>
					</div>
					<div class="child">
						<a href="/project3/views/2_upmenubar/7_lecture/0_default.jsp">강의
							신청</a>
					</div>
					<div class="child">
						<a href="/project3/views/2_upmenubar/8_fancytrade/0_default.jsp">공상
							매매<br>
						</a>
					</div>
					<div class="child">
						<a
							href="/project3/views/2_upmenubar/9_thismonthfantasy/0_default.jsp">이달의판타지
						</a>
					</div>
					<div class="child go">
						<a href="#">마블</a>
					</div>
					<div class="child go">
						<a href="#">해리포터</a>
					</div>
					<div class="child go">
						<a href="/project3/views/0_Main/loadmain.jsp">반지의 제왕</a>
					</div>
				</div>
			</div>

		</div>

	</header>
	<!-- 헤더 끝 -->



</body>
</html>