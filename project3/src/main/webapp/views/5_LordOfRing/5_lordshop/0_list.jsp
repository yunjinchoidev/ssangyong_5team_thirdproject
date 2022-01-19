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
	font-size: 20px;
	color : red;
}

body{
background-color: #111111;
}

h1{
text-align:center;
color:white;
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

/* 좌측 메뉴바 영역 */
#menubar{
position: fixed;
top:350px;
left:150px;
width:200px;
height:400px;
border: solid grey;
}

/* 지팡이 메뉴 버튼 */
#menustaff{
position:absolute;
left:20px;
}

/* 빗자루 메뉴 버튼 */
#menustick{
position: absolute;
left:20px;
top: 200px;
}

/* 유니폼 메뉴 버튼 */
#menuuniform{
position: absolute;
left:20px;
top: 320px;
}

/* 상품 영역 */
#product{
position: absolute;
top: 300px;
left: 500px;
width:1200px;
height:800px;
}

/* 님부스2000 */
#broom1{
position: absolute;
top:100px;
left:100px;
}

#prod1Info{
position: absolute;
width:200px;
top:350px;
left:150px;
color:white;
}

/* 님부스2001 */
#prod2{
position:absolute;
top:0px;
left:400px;
}

#broom2{
position: absolute;
top:100px;
left:100px;
}

#prod2Info{
position: absolute;
width:200px;
top:350px;
left:150px;
color:white;
}

/* 파이어볼트 */
#prod3{
position:absolute;
top:0px;
left:800px;
}

#broom3{
position: absolute;
top:100px;
left:100px;
}

#prod3Info{
position: absolute;
width:200px;
top:350px;
left:150px;
color:white;
}


#footer{
position:absolute;
width:100%;
top:1000px;
}
</style>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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

	<script>
AOS.init();
</script>
<div id="menubar">
<h1>메뉴</h1>
<a href="/project3/views/9_Marvel/2_Marvelshop/accessories.jsp">
<button type="button" id="menustaff">마블</button>
</a>
<a href="/project3/views/8_HarryPotter/2_store/store_broom.jsp">
<button type="button" id="menustick">해리포터</button>
</a>
<a href="${contextPath }/oftLord/list.do">
<button type="button" id="menuuniform">반지의제왕</button>
</a>
</div>
	<div class="contents">
		<div class="cards">
				<h1> Absolute Ring ship</h1>
				<p> 엄선된 물건들이 있습니다.<br>
				 마음껏 둘러보십시오</p>
				 
				 <button onclick="location.href='${contextPath}/oftLord/addForm.do'">물건 추가</button>
				 
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
								재고 : ${oftList.officialInventory }<br>
								물건명 : ${oftList.officialPname }<br>
								할인률 : ${oftList.officialDiscount }<br>
								상품분류 : ${oftList.proCateKey }<br>
								<a href="${contextPath }/oftLord/view.do?officialKey=${oftList.officialKey}">상품 자세히 보기</a><br>
								<a href="${contextPath }/oftLord/del.do?officialKey=${oftList.officialKey}">상품 삭제</a><br>
								<a href="${contextPath }/oftLord/modForm.do?officialKey=${oftList.officialKey}">상품 수정</a>
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