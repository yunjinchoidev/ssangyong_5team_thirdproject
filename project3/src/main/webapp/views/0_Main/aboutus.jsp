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
p {
	font-size: 30px;
}

#lastp {
	font-size: 100px;
}

#firstp {
	font-size: 65px;
}
</style>
</head>
<body>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

	<div class="contents">
		<div class="cards">
			<br>
			<p id="firstp">판타지 빌리지에 오신 여러분을 환영합니다.</p>
			<p>
				당신의 방문을 기다렸습니다.<br> 여러분은 이곳에서 또 하나의 인격을 가질 수 있습니다.<br> <br>
				프로도가 되어 절대 반지를 파괴하는 모험을 또 다시 떠나십시오.<br> 아니면 아이언맨이 되어 타노스와 또 한 번
				전투 벌이세요.<br> 해리포터 속 헤르미온느가 되어 친구들과 마법 훈련을 경주할 수도 있습니다. <br>
				<br> 판타지 빌리지는 상상력의 힘을 믿습니다. 이야기의 힘을 믿습니다.<br> 이곳에서의 모험이
				여러분의 인생에<br> 색다른 의미와 생명력의 씨앗이 되기를 기원합니다.<br>
			</p>

			<p id="lastp">상상은 현실이 됩니다.</p>


			<img src="/project3/views/Media/iwantyou.jpg">
		</div>
	</div>

	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>