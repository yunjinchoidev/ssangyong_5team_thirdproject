<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="articlesList" value="${articlesMap.articlesList}" />
<c:set var="totArticles" value="${articlesMap.totArticles}" />
<c:set var="section" value="${articlesMap.section}" />
<c:set var="pageNum" value="${articlesMap.pageNum}" />

<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<style>
.storyboard {
	width: 800px;
	margin: 0 auto;
	font-size: 30px;
}

.storyboard table, .storyboard td, .storyboard tr{
	border : 3px solid yellow;
}



</style>
<meta charset="UTF-8">
<title>글목록창</title>
</head>
<body>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

	<!-- S헤더 삽입 -->
	<jsp:include page="/views/10_Store/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

	<div class="contents">
		<div class="cards">
			<div class="readingclubex">
				<h1>스토리, 그것은 혁신입니다.</h1>
				<p>
					무의미가 의미가 되는 순간, <br> 당신은 그 찰나를 느껴본 적이 있습니까?<br> 판타지 빌리지는
					그것이 인식되는 특별함이 생길 때 의미가 생긴다고 믿습니다.<br> 이야기는 특별함을 만들어주는 최고의
					무기입니다.<br> 여기 상상력 넘치는 사람들이 있습니다. <br> 당신을 위해 그들이 항시
					대기중입니다<br>
				</p>
			</div>

			<hr style="border: 3px solid yellow; margin: 40px;">




			<table align="center" border="1" class="storyboard">
				<tr height="10" align="center">
					<td>글번호</td>
					<td>작성자</td>
					<td>제목</td>
					<td>작성일</td>
				</tr>

				<c:choose>

					<c:when test="${empty articlesList}">
						<tr height="10">
							<td colspan="4">
								<p align="center">
									<b><span style="font-size: 9pt;">등록된 글이 없습니다.</span></b>
								</p>
							</td>
						</tr>
					</c:when>


					<c:when test="${!empty articlesList}">
						<c:forEach var="article" items="${articlesList }"
							varStatus="articleNum">
							<tr align="center">
								<td width="5%">${articleNum.count}</td>
								<td width="10%">${article.id }</td>
								<td align='left' width="35%"><span
									style="padding-right: 30px"></span> <c:choose>
										<c:when test='${article.level > 1 }'>
											<c:forEach begin="1" end="${article.level }" step="1">
												<span style="padding-left: 10px"></span>
											</c:forEach>
											<span style="font-size: 12px;">[답변]</span>
											<a class='cls1'
												href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
										</c:when>
										<c:otherwise>
											<a class='cls1'
												href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title }</a>
										</c:otherwise>
									</c:choose></td>
								<td width="10%"><fmt:formatDate
										value="${article.writeDate}" /></td>
							</tr>
						</c:forEach>
					</c:when>


				</c:choose>
			</table>




			<br> <br> <a class="cls1"
				href="${contextPath}/board/articleForm.do"><p class="cls2">글쓰기</p></a>
		</div>
	</div>



	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>