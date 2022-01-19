<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"
	import="java.util.ArrayList"
	import="talentApply.*"
	import="talentDonation.*"
	import="board.*"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신춘문예</title>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<style>
#btn {
	width: 400px;
	height: 80px;
	font-size: 40px;
	font-weight: bolder;
	margin: 20px;
	margin-bottom: 30px;
}

#newtab {
	width: 1700px;
	height: 600px;
	border: 3px solid yellow;
	margin: 0 auto;
	font-size: 20px;
	margin-top: 50px;
	color: white;
}
.talentab {
	width: 1000px;
	border: 3px solid yellow;
	margin: 0 auto;
	font-size: 10px;
	margin-top: 50px;
	color: white;
}

.talentab table, .talentab td, .talentab tr{
	border: 3px solid yellow;
}

input {
	width: 500px;
	height: 60px;
	font-size: 30px;
	text-align: center;
}

#seachcon {
	width: 1000px;
	height: 100px;
	font-size: 60px;
	font-weight: bolder;
	text-align: center;
	background-color: white;
	border: 2px solid yellow;
}

.g{
	text-decoration: none;
	color: red;
}

.g:hover{
	color:yellow;
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
	<jsp:include page="/views/2_Service/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->


	<div class="contents">
		<div class="cards">
		<div>
				<h1>재능 기부</h1>
				<p>당신의 재능이 누군가에겐 필요합니다.</p>
				<p>당신이 가진 선한 영향력이 아이의 인생을 바꿀 수 있습니다</p>
			</div>



			<button onclick="location.href='/project3/views/2_Service/1_talent/4_giveForm.jsp'" class="talbtn">재능을 나누고 싶어요<br>(기부자 등록)</button>
			<button onclick="location.href='/project3/views/2_Service/1_talent/5_takeForm.jsp'" class="talbtn">재능기부를 받고 싶어요<br>(참여자 등록)</button>

			<hr style="border : 5px solid yellow; margin: 40px; ">

			<h2>재능을 나누겠다고 한 사람들</h2>
			<table class="talentab">
				<tr>
					<td>번호</td>
					<td>신청번호</td>
					<td>신청자이름</td>
					<td>신청자의 재능</td>
					<td>지원일</td>
					<td>가능한시간대</td>
					<td>참여가능지역</td>
					<td>회원번호</td>
				</tr>
				
				<c:choose>
					<c:when test="${empty giveList}">
						<tr>
							<td colspan="16">등록된 글이 없습니다.</td>
						</tr>
					</c:when>

					<c:when test="${!empty giveList}">
						<c:forEach var="giveList" items="${giveList}" varStatus="giveNum">
							<tr>
								<td>${giveNum.count }</td>
								<td>${giveList.taKey }</td>
								<td>${giveList.taname }</td>
								<td>${giveList.tamytalent }</td>
								<td>${giveList.taapplydate }</td>
								<td>${giveList.tatime }</td>
								<td>${giveList.taloc }</td>
								<td>${giveList.mKey }</td>

							</tr>
						</c:forEach>
					</c:when>
				</c:choose>
					
			</table>
		
		<hr style="border : 5px solid yellow; margin: 40px; ">
		<h2>당신의 재능을 기다리는 사람들</h2>
			<table class="talentab">
				<tr>
					<td>번호</td>
					<td>신청번호</td>
					<td>신청자이름</td>
					<td>신청자의 재능</td>
					<td>지원일</td>
					<td>가능한시간대</td>
					<td>참여가능지역</td>
				</tr>
				
				<c:choose>
					<c:when test="${empty takeList}">
						<tr>
							<td colspan="7">등록된 글이 없습니다.</td>
						</tr>
					</c:when>
					<c:when test="${!empty takeList}">
						<c:forEach var="takeList" items="${takeList}" varStatus="takeNum">
							<tr>
								<td>${takeNum.count }</td>
								<td>${takeList.talenKey }</td>
								<td>${takeList.talentYouWant }</td>
								<td>${takeList.talenChildPer }</td>
								<td>${takeList.talenDate }</td>
								<td>${takeList.talenLoc }</td>
								<td>${takeList.mKey }</td>

							</tr>
						</c:forEach>
					</c:when>
				</c:choose>
					
			</table>
		
		<hr style="border : 5px solid yellow; margin: 40px; ">




		
		<button onclick="location.href='${contextPath}/talent/addForm.do'" class="talbtn">게시판(기부자&참여하기)</button>
		
				<table id="newtab"border="1">
				<tr>
					<th>번호</th>
					<th>게시글 고유번호</th>
					<th>회원 고유번호</th>
					<th>파일 일련번호</th>
					<th>카테고리 고유코드</th>
					<th>작성자</th>
					<th>제목</th>
					<th>조회수</th>
				</tr>

				<c:choose>
					<c:when test="${empty bdList}">
						<tr>
							<td colspan="16">등록된 글이 없습니다.</td>
						</tr>
					</c:when>

					<c:when test="${!empty bdList}">
						<c:forEach var="bdList" items="${bdList}" varStatus="bdNum">
							<tr>
								<td>${bdNum.count }</td>
								<td>${bdList.boPostKey }</td>
								<td>${bdList.mKey }</td>
								<td>${bdList.fileKey }</td>
								<td>${bdList.boCateKey }</td>
								<td>${bdList.boWriter }</td>
								<td><span style="padding-left: 20px"></span> <c:choose>
										<c:when test="${bdList.level>1 }">
											<c:forEach begin="1" end="${bdList.level }" step="1">
												<span style="padding-left: 20px"></span>

											</c:forEach>
											<span style="font-size: 20px;">[답변]</span>
<a href="${contextPath}/board/view.do?boPostKey=${bdList.boPostKey}" class="g">${bdList.boTitle}</a>
										</c:when>
										<c:otherwise>
											<a href="${contextPath}/board/view.do?boPostKey=${bdList.boPostKey}" class="g">${bdList.boTitle}</a>
										</c:otherwise>
									</c:choose></td>
								<td>${bdList.boViews }</td>

							</tr>
						</c:forEach>
					</c:when>
				</c:choose>
			</table>


		</div>
	</div>



	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp"></jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>