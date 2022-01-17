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

.lordshopchild a{
text-decoration: none;
color: white;
}
.lordshopchild a:hover{
	color : red;
	background-color: green;
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
				<h1> 렌탈 상점</h1>
				 
				 <button onclick="location.href='${contextPath}/custom/addForm.do'">물건 추가</button>
				 
				 <hr style="border:3px solid yellow;">
					<div class="lordshopwrap">
				<c:choose>
					<c:when test="${empty oftList}">
						<div>
							<td colspan="16">등록된 글이 없습니다.</td>
						</div>
					</c:when>
					
					<c:when test="${!empty oftList}">
						<c:forEach var="oftList" items="${oftList}" varStatus="rentNum">
							<div class="lordshopchild"> 
								고객번호 : ${oftList.cusKey }<br>
								상품명 : ${oftList.cusPname }일<br>
								설명 : ${oftList.cusExplain }<br>
								등록일 : ${oftList.cusRegDateS }<br>
								수정일 : ${oftList.cusModiDateS }<br>
								재고 : ${oftList.cusStock }<br>
								할인률 : ${oftList.cusDiscount }<br>
								고객번호 : ${oftList.mKey }<br>
								상품분류 : ${oftList.proCateKey }<br>
								파일키 : ${oftList.fileKey }<br>
								<a href="${contextPath }/custom/view.do?cusKey=${oftList.cusKey}">상품 자세히 보기</a>
								<a href="${contextPath }/custom/del.do?cusKey=${oftList.cusKey}">상품 삭제</a>
								<a href="${contextPath }/custom/modForm.do?cusKey=${oftList.cusKey}">상품 수정</a>
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