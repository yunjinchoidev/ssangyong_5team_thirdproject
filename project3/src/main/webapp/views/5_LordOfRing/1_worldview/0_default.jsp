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
.worldviewporket{
	width: 1200px;
	border : 1px solid white;
	display: flex;
	margin: 0 auto;
	margin-top: 100px;
	padding: 30px;
}

.porketchild01{
	margin: 20px;
	padding: 20px;
}
.porketchild02{
	padding-top: 50px;
	font-size: 20px;
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
			<div class="worldviewporket">
				<div class="porketchild01"><h1>이야기 [하나]</h1><img src="stillcut.jpg"></div>
				<div class="porketchild02">
				<p>하이 판타지 장르에 거대한 족적을 남긴 걸작이다. 판매량으로 따졌을 때 최근 50년간 세계에서 가장 많이 팔린 책 4위이기도 하다.[4] 1부 반지 원정대, 2부 두 개의 탑, 3부 왕의 귀환으로 구성되어 있으며, 본래는 단권 내지 2부작으로 발표할 예정이었으나, 출판사의 권유로 총 3부작이 되었다.</p>
				</div>
			</div>
			<div class="worldviewporket">
				<div class="porketchild01"><h1>이야기 [둘]</h1><img src="ring.jpg"></div>
				<div class="porketchild02">
				<p>샤이어에 살고 있는 부유한 호빗 프로도는 삼촌 빌보로부터 물려받은 반지가 보통 반지가 아니라는 것을 현자 간달프에게 듣게 된다. 이 반지는 옛날 옛적에 악마 사우론이 만든 사악한 물건으로 샤이어에 있으면 안되는 물건이었다. 간달프는 프로도에게 반지를 요정들의 도시 깊은골까지 운반해줄 것을 부탁하고, 프로도는 우여곡절 끝에 깊은골까지 반지 운반에 성공한다.</p>
				</div>
			</div>
			<div class="worldviewporket">
				<div class="porketchild01"><h1>이야기 [셋]</h1><img src="gollum.jpg"></div>
				<div class="porketchild02">
				<p>기본적으로 톨킨은 이 소설은 그저 성인을 위해 쓴 동화며 굳이 말하자면 영웅 로맨스쯤 되겠지만, 특별히 의도한 메시지는 없다고 말했다. 특히 특정한 알레고리(풍자)는 들어가 있지 않다고 강조했다. 다만 톨킨은 이 소설에서 강조하고 싶었던 건 '평화롭고 욕심없는 삶의 소중함'이라고 편지를 통해 밝혔다.</p>
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