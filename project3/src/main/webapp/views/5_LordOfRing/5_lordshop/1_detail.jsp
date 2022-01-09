<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<style>
#lordmalldetailwrap{
	width: 1300px;
	height: 600px;
	margin: 0 auto;
	border : 3px solid white;
	display: flex;
}
.lordmalldetailchild{
	margin : 0 auto;
	font-size: 30px;
	width: 600px;
	height: 600px;
	border:  3px solid white;
	display: inline-block;
	flex : 1;
	
}
#detailimg{
	width: 100%;
	height: 100%;
}
</style>
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


	<div class="contents">
		<div class="cards">
				<h1> ##########</h1>
				<p> 엄선된 물건들이 있습니다. 마음껏 둘러보십시오</p>
					
					<div id="lordmalldetailwrap">
						<div class="lordmalldetailchild"><img src="example.jpg" id="detailimg"></div>
						<div class="lordmalldetailchild">
							<ul>
								<li>상품모델 : #####</li>
								<li>원산지 : ####</li>
								<li>상품 번호 : ####</li>
								<li>구매 수량 : <select><option>1</option></select></li>
								<li>판매 가격 : #####</li>
								<li><button>장바구니</button><button>구매하기</button></li>
							</ul>
						</div>
					</div>
					
					<div>
					<h2> 상품 상제 정보</h2>					
					<p>#####################################<br>
					#####################################<br>
					#####################################<br>
					#####################################<br>
					#####################################<br>
					#####################################<br>
					#####################################<br>
					#####################################<br>
					#####################################<br>
					#####################################<br>
					#####################################<br>
					</div>
					
					<div>
					<h2> 배송 정보</h2>					
					<p>#####################################<br>
					#####################################<br>
					#####################################<br>
					#####################################<br>
					#####################################<br>
					#####################################<br>
					#####################################<br>
					#####################################<br>
					#####################################<br>
					#####################################<br>
					#####################################<br>
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