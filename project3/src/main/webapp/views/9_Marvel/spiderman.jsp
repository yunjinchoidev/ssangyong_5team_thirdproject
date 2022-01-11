<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.header {
	width: 100%;
	height: 130px;
	background: black;
}
.box>li{
  list-style-type: none;
}
.card01 {
	overflow: hidden;
}

.card01.img {
	float: left;
	width: 50%;
}

.card01.text {
	float: right;
	width: 50%;
}
.
</style>
<title>스파이더맨 메인</title>
<body>
	<!-- 마블메인페이지 상단 -->
	<div align="center" class="header">
		<img class="logo"><img src="marvelmedia/marvellogo.png"> <a href=""></a>
	</div>
	<!-- 스파이더맨 사진 -->
	<div class="card01">
		<section>
			<img src="marvelmedia/spiderman_ch.png"
				style="padding-top: 100px; height: 800px; width: 500px; margin-left: 50px;">
		</section>
		<!-- 스파이더맨 소개 -->
		<!-- 캐릭터소개 버튼 -->
		<ul class="box">
				<h1>Character/ SPIDER-MAN</h1>
				<li><input type="button" value="캐릭터" onclick="">
					<p>스파이더맨 상세 설명</p></li><br>

				<!-- 능력 버튼 -->
				<li><input type="button" value="능력" onclick="">
					<p>스파이더맨 능력 상세 설명</p></li><br>

				<!-- 정보 버튼 -->
				<li><input type="button" value="정보" onclick="">
					<p>스파이더맨의 키, 몸무게, 성별 정보</p></li><br>

				<!-- connections 버튼 -->
				<li><input type="button" value="Connections" onclick="">
					<p>스파이더맨과 관련된 인물 정보</p></li>
			</ul>
		</div>
	</div>
</body>
</html>