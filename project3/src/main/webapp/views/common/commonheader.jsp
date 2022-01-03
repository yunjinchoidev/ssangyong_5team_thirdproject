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
	href="/FW/views/CSS/commoncss.css">
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<style>

/*헤더 전체 조정*/
.header {
	background-color: #8D647C;
	width: 100%;
	height: 400px;
	border: 3px solid black;
}

/*최상단 배너*/
.headerlogo {
	width: 300px;
	height: 150px;
	margin: 0 auto;
	background-color: white;
	border: 3px solid black;
	background-color: red;
}

/*최상단 배너 이미지*/
.headerlogo img {
	width: 300px;
	height: 150px;
	border: 3px solid black;
}


/*S우측 상단 메뉴*/
.rightupmenu {
	font-size: 20px;
	text-align: right;
	margin-top : 20px;
	margin-bottom: 70px;
	margin-left : 980px;
	width : 350px;
	height : 70px;
	border: 3px solid black;
	background-color: red;
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
/*E우측 상단 메뉴*/


/*S상단 카테고리*/
.up {/*상단 카테고리 전체박스*/
	font-size: 50px;
	background-color: red;
	border: 1px soild;
	margin-left: 395px;
	width: 1100px;
	hight: 900px;
	text-align: center;
	border: 3px solid black;
}

.up01, .up02, .up03 {
	display: flex;
	width: 1000px;
	hight: 800px;
	background-color: white;
	margin-bottom: 20px;
	margin-top: 20px;
	margin-left: 50px;
	border: 3px solid black;
}

.child {
	flex: 1;
	border: 1px soild blue;
	padding: 20px;
	border: 3px solid black;
}

.child a {
	text-decoration: none;
	color: black;
}

.child:hover {/*개별 박스에 마우스 올렸을 때 배경색 변하게 처리*/
	background-color: #A3E4DB;
}
/*E상단 카테고리*/


.illust {
	display: flex;
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

			<!-- 최상단 메인 로고 -->
			<div class="headerlogo">
				<a href="/project3/views/2_upmenubar/1_aboutus/0_default.jsp"> <img src="/project3/views/Media/fvlogo.png">
				</a>
			</div>

			<!-- 우측 상단 메뉴 -->
			<div class="rightupmenu">
				<ul>
					<li><a href="#">로그인</a></li>
					<li><a href="#">가입</a></li>
					<li><a href="#">마이페이지</a></li>
					<li><a href="#">고객센터</a></li>
				</ul>
			</div>

			<!-- 상단 메뉴 -->
			<div class="up">
				<div class="up01">
					<div class="child">
						<a href="/project3/views/2_upmenubar/1_aboutus/0_default.jsp">ABOUT US</a>
					</div>
					<div class="child">
						<a href="/project3/views/2_upmenubar/2_official/0_default.jsp">공식 스토어</a>
					</div>
					<div class="child">
						<a href="/project3/views/2_upmenubar/3_personal/0_default.jsp">개인 장터</a>
					</div>
				</div>
				<div class="up02">
					<div class="child">
						<a href="/project3/views/2_upmenubar/4_talent/0_default.jsp">재능 기부</a>
					</div>
					<div class="child">
						<a href="/project3/views/2_upmenubar/5_readingclub/0_default.jsp">독서 클럽</a>
					</div>
					<div class="child">
						<a href="/project3/views/2_upmenubar/6_freeboard/listArticles.jsp">자유게시판</a>
					</div>
				</div>
				<div class="up03">
					<div class="child">
						<a href="/project3/views/2_upmenubar/7_lecture/0_default.jsp">강의 신청</a>
					</div>
					<div class="child">
						<a href="/project3/views/2_upmenubar/8_fancytrade/0_default.jsp">공상 매매<br>
						</a>
					</div>
					<div class="child">
						<a href="/project3/views/2_upmenubar/9_thismonthfantasy/0_default.jsp">이달의 <br>판타지</a>
					</div>
				</div>
			</div>

			<!-- 판타지 분류 메뉴 -->
			<!-- 공간만들기 -->
			<br> <br> <br> <br> <br> <br>
			<!-- 위의 up클래스 재활용 -->
			<div class="up">
				<!-- 위의 up01클래스 재활용 -->
				<div class="up01">
					<div class="child">
						<a href="#">마블</a>
					</div>
					<div class="child">
						<a href="#">해리포터</a>
					</div>
					<div class="child">
						<a href="#">반지의 제왕</a>
					</div>
				</div>
			</div>
		</div>

	</header>
	<!-- 헤더 끝 -->



</body>
</html>