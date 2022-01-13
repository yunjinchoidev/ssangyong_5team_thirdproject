<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마블스토어-의류</title>

<style>
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
color : #8B0000;
border: 1px solid #8B0000;
font-size:20px;
font-weight:bold;
border-top-left-radius: 5px;
border-bottom-left-radius: 5px;
border-top-right-radius: 5px;
border-bottom-right-radius: 5px;
}

button:hover{
width:150px;
height:50px;
background-color:#8B0000;
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

/* 장난감 메뉴 버튼 */
#toy{
position:absolute;
left:20px;
}

/* 옷 메뉴 버튼 */
#clothing{
position: absolute;
left:20px;
top: 200px;
}

/* 악세사리 메뉴 버튼 */
#accessories{
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

/* 스파이더맨 토이 */
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

/* 블랙위도우 레고 */
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

/* 토르해머 */
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

<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>

<script>
AOS.init();
</script>
   
<div id="menubar">
<h1>메뉴</h1>
<a href="toy.jsp">
<button type="button" id="toy">장난감</button>
</a>
<a href="clothing.jsp">
<button type="button" id="clothing">의류</button>
</a>
<a href="accessories.jsp">
<button type="button" id="accessories">액세서리</button>
</a>
</div>

<div id="product">

<div id="prod1" data-aos="fade">
<img src="../marvelmedia/marvelframe.png" width=400px; height=400px;>
<a href="2_broomDetail/broom1_Detail.jsp">
<img id="broom1" src="../marvelmedia/spiderman_clo.png" width="200px" height="200px">
</a>
<div id="prod1Info">
<h3>스파이더맨 수트</h3>
<h3 style="position:absolute;left:20px; ">72000원</h3>
</div>
</div>

<div id="prod2" data-aos="fade">
<img src="../marvelmedia/marvelframe.png" width=400px; height=400px;>
<a href="2_broomDetail/broom2_Detail.jsp">
<img id="broom2" src="../marvelmedia/ironman_clo.png" width="200px" height="200px">
</a>
<div id="prod2Info">
<h3>아이언맨 수트</h3>
<h3 style="position:absolute;left:20px; ">75000원</h3>
</div>
</div>

<div id="prod3" data-aos="fade">
<img src="../marvelmedia/marvelframe.png" width=400px; height=400px;>
<a href="2_broomDetail/broom3_Detail.jsp">
<img id="broom3" src="../marvelmedia/thor_clo.png" width="200px" height="200px">
</a>
<div id="prod3Info">
<h3>토르 반팔 상의</h3>
<h3 style="position:absolute;left:10px; ">35000원</h3>
</div>
</div>

</div>

	<div id="footer">
	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
	</div>

</body>
</html>