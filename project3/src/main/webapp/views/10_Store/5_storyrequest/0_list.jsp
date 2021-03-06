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
	font-size: 20px;
}
.lordshopchild a{
	color : red;
	text-decoration: none;
}

button{
width:150px;
height:50px;
background-color:rgba(0,0,0,0);
color : skyblue;
border: 1px solid skyblue;
font-weight:bold;
border-top-left-radius: 5px;
border-bottom-left-radius: 5px;
border-top-right-radius: 5px;
border-bottom-right-radius: 5px;
}

button:hover{
width:150px;
height:50px;
background-color:#3F3F3F;
color : white;
border:none;
border-top-left-radius: 5px;
border-bottom-left-radius: 5px;
border-top-right-radius: 5px;
border-bottom-right-radius: 5px;
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
				<h1> Absolute Ring ship</h1>
				<p> 엄선된 물건들이 있습니다.<br>
				 마음껏 둘러보십시오</p>
				 
				 <button onclick="location.href='${contextPath}/story/addForm.do'">물건 추가</button>
				 
					<div class="lordshopwrap">
				<c:choose>
					<c:when test="${empty oftList}">
						<div>
							<td colspan="16">등록된 글이 없습니다.</td>
						</div>
					</c:when>
					
					<c:when test="${!empty oftList}">
						<c:forEach var="oftList" items="${oftList}" varStatus="oftNum">
							<div class="lordshopchild"> <br>
								고유번호 : ${oftList.requKey}<br>
								가격 : ${oftList.requPrice}<br>
								제목 : ${oftList.requTitle }<br>
								내용 : ${oftList.requContents}<br>
								<br>
								<a href="${contextPath }/story/view.do?requKey=${oftList.requKey}">상품 자세히 보기</a><br>
								<a href="${contextPath }/story/del.do?requKey=${oftList.requKey}">상품 삭제</a><br>
								<a href="${contextPath }/story/modForm.do?requKey=${oftList.requKey}">상품 수정</a>
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