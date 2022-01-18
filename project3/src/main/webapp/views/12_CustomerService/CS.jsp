<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Notice</title>

<style>
body, ul, th, td, fieldset, input {
	margin: 0;
	padding: 0;
}

a {
	text-decoration: none;
	color: black;
}

li {
	list-style: none;
}

.hidden {
	position: absolute;
	left: -9999px;
}

fieldset {
	border: 0;
}

table {
	border-collapse: collapse;
}

body {
	background: #FFFFE0;
}

#boardWrap {
	width: 1200px;
	margin: 0 auto;
	background: #fff;
}

#table {
	text-align: center;
	width: 900px;
	margin: 0 auto;
}

#table caption {
	font-size: 40px;
	margin: 30px auto 20px;
}
#table caption p{
   font-size:15px;
}

#table th {
	font-weight: normal;
	text-transform: capitalize;
	background: linear-gradient(180deg, #373B44, #4c525e, #373B44);
	padding: 10px 0;
	color: #fff;
}

#table th.no {
	width: 8%;
	border-radius: 20px 0 0 20px;
}

#table th.title {
	width: 52%;
}

#table th.writer {
	width: 15%;
}

#table th.date {
	width: 15%;
}

#table th.read {
	width: 10%;
	border-radius: 0 20px 20px 0;
}

#table tbody td {
	padding: 10px 0;
	border-bottom: 1px solid #373B44;
	font-family:"Malgun Gothic";
	font-weight:bold;
}

#table tbody td.listTitle {
	text-align: left;
}

#table tbody td a {
	display: block;
	width: 360px;
	whitd-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

#table tbody td a:hover {
	text-decoration: underline;
	color: #737373;
}

#boardWrap form {
	text-align: right;
	margin: 20px 50px 20px 0;
}

#boardWrap form input {
	border: 1px solid #000;
}

#boardWrap #searchBox {
	width: 300px;
	height: 30px;
}

#boardWrap #searchBox:focus {
	outline: none;
	background: #ffffb3;
}

#boardWrap #searchBtn {
	width: 100px;
	height: 32px;
}

#boardWrap #searchBtn:hover {
	background: #a6ffa6;
}

#boardWrap #searchBtn:active {
	background: #00ff40;
}

#pageMv {
	text-align: center;
	padding-bottom: 20px;
}

#pageMv a {
	padding: 0 10px;
}

#pageMv a:hover {
	text-decoration: underline;
	color: #00ff40;
}
#footer {
   position: absolute;
   width: 100%;
   height: 200px;
   top: 3800px;

}
</style>

</head>

<body>

	<div id="boardWrap">

		<table id="table">

			<thead>
			<caption>Notice
			<p>판타지빌리지의새로운 소식들과 정보들을 한 곳에서 확인하세요.</p>
			</caption>

			<tr>

				<th scope="col" class="no">no.</th>

				<th scope="col" class="title">title</th>

				<th scope="col" class="writer">writer</th>

				<th scope="col" class="date">date</th>

				<th scope="col" classs="read">read</th>

			</tr>

			</thead>

			<tbody>
				<tr>
					<td>10</td>
					<td class="listTitle">[공지]CJ대한통운 택배 파업으로 인한 주문불가지역 안내<a href="#"></a>
					<td>Host Admin</td>
					<td>2022.01.14</td>
					<td>50</td>
				</tr>
				<tr>
					<td>09</td>
					<td class="listTitle">[공지]개인정보처리방침 개정 내용 사전안내<a href="#"></a>
					<td>Host Admin</td>
					<td>2022.01.12</td>
					<td>70</td>
				</tr>
				<tr>
					<td>08</td>
					<td class="listTitle">[배송일정]1월 공휴일 배송일정 안내<a href="#"></a>
					<td>Host Admin</td>
					<td>2022.01.14</td>
					<td>100</td>
				</tr>
				<tr>
					<td>07</td>
					<td class="listTitle">[시스템점검]2022년 1월 시스템 점검 안내<a href="#"></a>
					<td>Host Admin</td>
					<td>2022.01.14</td>
					<td>100</td>
				</tr>
				<tr>
					<td>06</td>
					<td class="listTitle">[공지]재능기부 신청 나이 제한 안내<a href="#"></a>
					<td>Host Admin</td>
					<td>2022.01.14</td>
					<td>100</td>
				</tr>
				<tr>
					<td>05</td>
					<td class="listTitle">[공지]설날 택배 신청 마감 안내<a href="#"></a>
					<td>Host Admin</td>
					<td>2022.01.14</td>
					<td>100</td>
				</tr>
				<tr>
					<td>04</td>
					<td class="listTitle">[공지]택배 파업으로 인한 반품 및 교환 제한 안내 <a href="#"></a>
					<td>Host Admin</td>
					<td>2022.01.14</td>
					<td>100</td>
				</tr>
				<tr>
					<td>03</td>
					<td class="listTitle">[가격인상공지]마블샵 의류 가격인상 안내<a href="#"></a>
					<td>Host Admin</td>
					<td>2022.01.14</td>
					<td>100</td>
				</tr>
				<tr>
					<td>02</td>
					<td class="listTitle">[이벤트]신춘문예 당첨자 안내<a href="#"></a>
					<td>Host Admin</td>
					<td>2022.01.14</td>
					<td>100</td>
				</tr>
				<tr>
					<td>01</td>
					<td class="listTitle">[공지]캐릭터 설정 안내<a href="#"></a>
					<td>Host Admin</td>
					<td>2022.01.14</td>
					<td>100</td>
				</tr>
			</tbody>
		</table>
		<form>
			<fieldset>
				<label for="searchBox"></label> <label for="searchBtn"></label> 
				<input type="text" id="searchBox" placeholder="검색어를 입랙해주세요."> 
				<input type="button" id="searchBtn" value="search">
			</fieldset>
		</form>
		<div id="pageMv">
			<a href="#">Prev</a> <a href="#">1</a> <a href="#">2</a> <a href="#">3</a>
			<a href="#">4</a> <a href="#">5</a> <a href="#">Next</a>
		</div>
		<div id="footer">
			<!-- S푸터 삽입 -->
			<jsp:include page="/views/common/commonfooter.jsp">
				<jsp:param name="name" value="go" />
			</jsp:include>
			<!-- E푸터 삽입 -->
		</div>

	</div>
</body>
</html>

