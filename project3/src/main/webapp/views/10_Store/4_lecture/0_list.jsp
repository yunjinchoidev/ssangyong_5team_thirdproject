<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="attachedFileTest.*"
	import="officialStoreTest.*"
	%>
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
<title>Insert title here</title>
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<style>
.lordshopwrap{
	width: 1200px;
	height: 1200px;
	margin: 0 auto;
	padding: 20px;
}

.lordshopchild{
	width: 300px;
	height: 300px;
	border: 3px solid yellow;
	display: inline-block;
	margin: 20px;
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
	<jsp:include page="/views/10_Store/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->


	<div class="contents">
		<div class="cards">
				<h1>강의</h1>
				<p> 엄선된 물건들이 있습니다.<br>
				 마음껏 둘러보십시오</p>
				 
				 <button onclick="location.href='${contextPath}/lecture/addForm.do'">물건 추가</button>
				 
				 <hr style="border:3px solid yellow;">
					<div class="lordshopwrap">
				<c:choose>
					<c:when test="${empty oftList}">
						<div>
							<td colspan="16">등록된 글이 없습니다.</td>
						</div>
					</c:when>
					
					<c:when test="${!empty oftList}">
						<c:forEach var="oftList" items="${oftList}" varStatus="oftNum">
							<div class="lordshopchild"> 
								강의키 : ${oftList.lecKey }<br>
								강의 내용 : ${oftList.lecName }<br>
								강사 : ${oftList.lecTeacher }<br>
								제한인원 : ${oftList.leclimitcnt }<br>
								온라인여부 : ${oftList.leconlineavail }<br>
								난이도 : ${oftList.lecdifficulty }<br>
								내용 : ${oftList.leccontents }<br>
								평점 : ${oftList.lecscore }<br>
								<a href="${contextPath }/lecture/view.do?lecKey=${oftList.lecKey}">상품 자세히 보기</a>
								<a href="${contextPath }/lecture/del.do?lecKey=${oftList.lecKey}">상품 삭제</a>
								<a href="${contextPath }/lecture/modForm.do?lecKey=${oftList.lecKey}">상품 수정</a>
							</div>
						</c:forEach>
					</c:when>
				</c:choose>
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