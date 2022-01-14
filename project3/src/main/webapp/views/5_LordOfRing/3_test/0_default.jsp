<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반지의제왕</title>
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">

<style>
.testtab {
	width: 1400px;
	height: 1300px;
	margin: 0 auto;
	font-size: 20px;
}

.testtab table, .testtab td, .testtab th {
	border: 3px solid yellow;
	border-collapse: collapse;
}

p {
	color: white;
	font-size: 40px;
}

input[type=submit]{
	width: 500px;
	height: 100px;
	font-size: 60px;
	margin: 30px;
}
input[type=text]{
	width: 300px;
	height: 50px;
	font-size: 50px;
	text-align: center;
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
			<p>
				당신은 반지의 주인이 될 자격이 있습니까?<br> 몇 가지 조사를 통해 판가름 해보겠습니다.<br>
				솔직한 답변을 기대하겠습니다.
			</p>

			<form action="1_listResult.jsp">
				<table class="testtab">
					<colgroup>
						<col width="60%">
						<col width="40%">
					</colgroup>
					<tr>
						<td>검사 번호 :</td>
						<td><input type="text" name="lordTestKey"></td>
					</tr>
					<tr>
						<td>회원번호 :</td>
						<td><input type="text" name="mKey"></td>
					</tr>
					<tr>
						<td>01. 어려운 일이 생겼을 때 나는 내 감정을 통제할 수 있다.</td>
						<td><input type="radio" name="chk_info01" value="1">아니다
							<input type="radio" name="chk_info01" value="2">중간이다 <input
							type="radio" name="chk_info01" value="3">그렇다</td>
					</tr>


					<tr>
						<td>02. 당장 해야 할 일을 방해하는 일이 생겨도 무시하고 일을 잘해낼 수 있다.</td>
						<td><input type="radio" name="chk_info02" value="1">아니다
							<input type="radio" name="chk_info02" value="2">중간이다 <input
							type="radio" name="chk_info02" value="3">그렇다</td>
					</tr>


					<tr>
						<td>03. 비록 그렇지 않다고 하더라도, 일단 내가 문제를 해결할 수 있다고 믿는 편이 더 낫다.</td>
						<td><input type="radio" name="chk_info03" value="1">아니다
							<input type="radio" name="chk_info03" value="2">중간이다 <input
							type="radio" name="chk_info03" value="3">그렇다</td>
					</tr>


					<tr>
						<td>04. 문제가 생기면 여러 가지 해결 방안들에 대해 생각한 뒤에 해결하려고 노력한다.</td>
						<td><input type="radio" name="chk_info04" value="1">아니다
							<input type="radio" name="chk_info04" value="2">중간이다 <input
							type="radio" name="chk_info04" value="3">그렇다</td>
					</tr>


					<tr>
						<td>05. 사람들의 얼굴 표정을 보면 어떤 감정인지 알 수 있다.</td>
						<td><input type="radio" name="chk_info05" value="1">아니다
							<input type="radio" name="chk_info05" value="2">중간이다 <input
							type="radio" name="chk_info05" value="3">그렇다</td>
					</tr>


					<tr>
						<td>06. 첫 번째 해결책이 효과가 없으면 효과가 있는 것을 찾아낼 때까지 계속 여러 해결책을 생각해본다.</td>
						<td><input type="radio" name="chk_info06" value="1">아니다
							<input type="radio" name="chk_info06" value="2">중간이다 <input
							type="radio" name="chk_info06" value="3">그렇다</td>
					</tr>


					<tr>
						<td>07. 나는 호기심이 많다.</td>
						<td><input type="radio" name="chk_info07" value="1">아니다
							<input type="radio" name="chk_info07" value="2">중간이다 <input
							type="radio" name="chk_info07" value="3">그렇다</td>
					</tr>


					<tr>
						<td>08. 내가 무슨 생각을 하는지, 또 나의 생각이 내 기분에 어떤 영향을 미치는지 잘 알아챈다.</td>
						<td><input type="radio" name="chk_info08" value="1">아니다
							<input type="radio" name="chk_info08" value="2">중간이다 <input
							type="radio" name="chk_info08" value="3">그렇다</td>
					</tr>


					<tr>
						<td>09. 문제가 생길 때 처음 떠오르는 생각들이 무엇인지 나는 안다.</td>
						<td><input type="radio" name="chk_info09" value="1">아니다
							<input type="radio" name="chk_info09" value="2">중간이다 <input
							type="radio" name="chk_info09" value="3">그렇다</td>
					</tr>


					<tr>
						<td>10. 누가 어떤 문제에 대해 과잉반응을 보이면 나는 그 사람이 그날 우연히 기분이 나빠서 그런
							것이라고 생각하는 편이다.</td>
						<td><input type="radio" name="chk_info10" value="1">아니다
							<input type="radio" name="chk_info10" value="2">중간이다 <input
							type="radio" name="chk_info10" value="3">그렇다</td>
					</tr>


					<tr>
						<td>11. 문제가 생기면 그 이유가 무엇인지 신중하게 생각한 뒤에 문제를 해결하려고 노력한다.</td>
						<td><input type="radio" name="chk_info11" value="1">아니다
							<input type="radio" name="chk_info11" value="2">중간이다 <input
							type="radio" name="chk_info11" value="3">그렇다</td>
					</tr>


					<tr>
						<td>12. 슬퍼하거나 화를 내거나 당황하는 사람을 보면 그들이 어떤 생각을 하는지 잘 알 수 있다.</td>
						<td><input type="radio" name="chk_info12" value="1">아니다
							<input type="radio" name="chk_info12" value="2">중간이다 <input
							type="radio" name="chk_info12" value="3">그렇다</td>
					</tr>


					<tr>
						<td>13. 나는 내가 대부분의 일을 잘해낼 것이라고 생각한다.</td>
						<td><input type="radio" name="chk_info13" value="1">아니다
							<input type="radio" name="chk_info13" value="2">중간이다 <input
							type="radio" name="chk_info13" value="3">그렇다</td>
					</tr>


					<tr>
						<td>14. 나는 새로운 것들을 좋아하는 편이다.</td>
						<td><input type="radio" name="chk_info14" value="1">아니다
							<input type="radio" name="chk_info14" value="2">중간이다 <input
							type="radio" name="chk_info14" value="3">그렇다</td>
					</tr>


				</table>
				<input type="submit" value="제출하기">
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