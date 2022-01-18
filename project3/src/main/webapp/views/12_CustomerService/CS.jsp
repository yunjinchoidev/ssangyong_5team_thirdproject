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
	background: #E6E6FA;
}

#boardWrap {
	width: 800px;
	margin: 0 auto;
	background: #fff;
}

#table {
	text-align: center;
	width: 700px;
	margin: 0 auto;
}

#table caption {
	font-size: 40px;
	margin: 30px auto 20px;
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
</style>

</head>

<body>

	<div id="boardWrap">

		<table id="table">

			<thead>
			<caption>Notice</caption>

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
					<td>15</td>
					<td class="listTitle"><a href="#"></a>
					<td>Host Admin</td>
					<td>2022.01.14</td>
					<td>100</td>
				</tr>
				<tr>
					<td>14</td>
					<td class="listTitle"><a href="#"></a>
					<td>Host Admin</td>
					<td>2022.01.14</td>
					<td>100</td>
				</tr>
				<tr>
					<td>13</td>
					<td class="listTitle"><a href="#"></a>
					<td>Host Admin</td>
					<td>2022.01.14</td>
					<td>100</td>
				</tr>
				<tr>
					<td>12</td>
					<td class="listTitle"><a href="#"></a></td>
					<td>Web Admin</td>
					<td>2022.01.14</td>
					<td>150</td>
				</tr>
				<tr>
					<td>11</td>
					<td class="listTitle"><a href="#"></a>
					<td>Host Admin</td>
					<td>2022.01.14</td>
					<td>100</td>
				</tr>
				<tr>
					<td>10</td>
					<td class="listTitle"><a href="#"></a>
					<td>Host Admin</td>
					<td>2022.01.14</td>
					<td>100</td>
				</tr>
			</tbody>

		</table>

		<form>

			<fieldset>

				<label for="searchBox"></label> <label for="searchBtn"></label> <input
					type="text" id="searchBox" placeholder="검색어를 입랙해주세요."> <input
					type="button" id="searchBtn" value="search">

			</fieldset>

		</form>

		<div id="pageMv">

			<a href="#">Prev</a> <a href="#">1</a> <a href="#">2</a> <a href="#">3</a>

			<a href="#">4</a> <a href="#">5</a> <a href="#">Next</a>

		</div>

	</div>

</body>

</html>

