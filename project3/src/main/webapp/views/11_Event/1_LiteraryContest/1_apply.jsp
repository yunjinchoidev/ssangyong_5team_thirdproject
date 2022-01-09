<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />  
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
.literapplytab{
	width : 800px;
	height : 600px;
	border: 2px solid white;
	font-size: 20px;
	
}

.literapplytab td, tr{
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
			<h1>제 1회 판타지 빌리지 신춘문예 신청서</h1>
			<h2>신춘문예 작품 공모서</h2>
			<form action="${contextPath}/LiteraryContest/addLiteraryContest.do">
				<hr width="600" align="center">
				<table border="1" align="center" class="literapplytab">
					<colgroup>
						<col width="30%">
					</colgroup>
					<tbody>
					
						<tr>
							<td colspan="2" align="center" height="50">&lt;기본 입력 사항&gt;
							</td>
						</tr>
						<tr>
							<td width="100">작품 제목 :</td>
							<td><input type="text" name="liberTitle" size="10" autofocus="">
							</td>
						</tr>
						<tr>
							<td width="100">작품 분류 :</td>
							<td><input type="text" name="liberSort" size="10" autofocus="">
							</td>
						</tr>
						
						<tr>
							<td width="100">작품 설명:</td>
							<td>
							<textarea cols="50" rows="20" name="liberContents"> </textarea>
							</td>
						</tr>
						<tr>
							<td width="100">지원자의 경력 :</td>
							<td><input type="text" name="liberCareer" size="20"></td>
						</tr>
						<tr>
							<td width="100">제작기간 :</td>
							<td><input type="text" name="liberProductionDate" size="20"></td>
						</tr>
						<tr>
							<td width="100">제출일 :</td>
							<td><input type="text" name="liberSubmissionDate" size="20"></td>
						</tr>
					</tbody>
				</table>
				<br>
				<input type="submit" value="가입신청">
				</form>
				
				<table border="1" align="center">
					<tbody>
						<tr>
							<td colspan="2" align="center" height="50">&lt;추가 입력 사항&gt;
							</td>
						</tr>
						<tr>
							<td width="400">이 사이트를 알게 된 경로는?</td>
							<td><select name="media">
									<option value="internet">인터넷 검색</option>
									<option value="news">뉴스 검색</option>
									<option value="TV">TV 광고</option>
							</select></td>
						</tr>
						<tr>
							<td width="400">가보고 싶은 나라는?</td>
							<td><select name="nation" multiple="">
									<option value="aus">호주</option>
									<option value="eng">영국</option>
									<option value="jap">일본</option>
									<option value="fr">프랑스</option>
							</select></td>
						</tr>
						<tr>
							<td width="400">관심 있는 프로그래밍 기술은?</td>
						</tr>
						<tr>
							<td width="80"><input type="checkbox" name="webpro"
								value="ASP">ASP</td>
							<td><input type="checkbox" name="webpro" value="PHP">PHP
							</td>
						</tr>
						<tr>
							<td width="80"><input type="checkbox" name="webpro"
								value="JAVA">JAVA</td>
							<td><input type="checkbox" name="webpro" value="PERL">PERL
							</td>
						</tr>
					</tbody>
				</table>
				<table width-"300"="" border="0" align="center">
					<tbody>
						<tr>
							<td><input type="submit" value="가입신청"></td>
							<td></td>
							<td><input type="reset" value="다시쓰기"></td>
						</tr>
					</tbody>
				</table>
			

		</div>
	</div>




	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>