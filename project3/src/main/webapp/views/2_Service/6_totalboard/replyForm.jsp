<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
	
	<style>
	</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function backToList(obj) {
		obj.action = "${contextPath}/freeboard/listArticles.do";
		obj.submit();
	}

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#preview').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
<title>답글쓰기 페이지</title>
</head>
<body>

	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

	<!-- S서비스메뉴 삽입 -->
	<jsp:include page="/views/2_Service/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E서비스 메뉴삽입 -->
	<div class="contents">
		<div class="cards">
			<div>
				<br>
				<br>
				<br>
				<br>
				<br>
			</div>
			<div class="indivi">
				<h1 style="text-align: center">답글쓰기</h1>
				<form name="frmReply" method="post"
					action="${contextPath}/freeboard/addReply.do"
					enctype="multipart/form-data">
					<table align="center">
						<tr>
							<td align="right">글쓴이:&nbsp;</td>
							<td><input type="text" size="5" value="lee" disabled /></td>
						</tr>
						<tr>
							<td align="right">글제목:&nbsp;</td>
							<td><input type="text" size="67" maxlength="100"
								name="title" /></td>
						</tr>
						<tr>
							<td align="right" valign="top"><br>글내용:&nbsp;</td>
							<td><textarea name="content" rows="10" cols="65"
									maxlength="4000"> </textarea></td>
						</tr>
						<tr>
							<td align="right">이미지파일 첨부:</td>
							<td><input type="file" name="imageFileName"
								onchange="readURL(this);" /></td>
							<td><img id="preview" src="#" width=200 height=200 /></td>
						</tr>
						<tr>
							<td align="right"></td>
							<td><input type=submit value="답글반영하기" /> <input type=button
								value="취소" onClick="backToList(this.form)" /></td>
						</tr>
					</table>
				</form>
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