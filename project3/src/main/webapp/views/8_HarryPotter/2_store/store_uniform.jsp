<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어-유니폼</title>

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
height:1200px;
}

/* 그리핀도르 스카프 */
#uniform1{
position: absolute;
top:100px;
left:100px;
}

#prod1Info{
position: absolute;
top:350px;
left:130px;
color:white;
}

/* 그리핀도르 교복 */
#prod2{
position:absolute;
top:0px;
left:400px;
}

#uniform2{
position: absolute;
top:100px;
left:100px;
}

#prod2Info{
position: absolute;
top:350px;
left:120px;
color:white;
}

#prod3{
position:absolute;
top:0px;
left:800px;
}

/* 슬리데린 목도리 */
#uniform3{
position: absolute;
top:100px;
left:100px;
}

#prod3Info{
position: absolute;
top:350px;
left:130px;
color:white;
}

#prod4{
position:absolute;
top:550px;
left:0px;
}

/* 슬리데린 교복 */
#uniform4{
position: absolute;
top:100px;
left:100px;
}

#prod4Info{
position: absolute;
top:350px;
left:130px;
color:white;
}

#prod5{
position:absolute;
top:550px;
left:400px;
}

/* 래번클로 교복 */
#uniform5{
position: absolute;
top:100px;
left:100px;
}

#prod5Info{
position: absolute;
top:350px;
left:130px;
color:white;
}

#prod6{
position:absolute;
top:550px;
left:800px;
}

/* 후플푸프 교복 */
#uniform6{
position: absolute;
top:100px;
left:100px;
}

#prod6Info{
position: absolute;
top:350px;
left:120px;
color:white;
}

#footer{
position:absolute;
width:100%;
top:1500px;
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
<a href="store_Staff.jsp">
<button type="button" id="menustaff">지팡이</button>
</a>
<a href="store_broom.jsp">
<button type="button" id="menustick">빗자루</button>
</a>
<a href="store_uniform.jsp">
<button type="button" id="menuuniform">유니폼</button>
</a>
</div>

<div id="product">

<div id="prod1" data-aos="fade">
<img src="../media/productFrame.png" width=400px; height=400px;>
<a href="3_uniformDetail/uniform1_Detail.jsp">
<img id="uniform1" src="../media/그리핀스카프.png" width="200px" height="200px">
</a>
<div id="prod1Info">
<h3>그리핀도르 스카프</h3>
<h3 style="position:absolute;left:30px; ">21000원</h3>
</div>
</div>

<div id="prod2" data-aos="fade">
<img src="../media/productFrame.png" width=400px; height=400px;>
<a href="3_uniformDetail/uniform2_Detail.jsp">
<img id="uniform2" src="../media/그리핀교복.png" width="200px" height="200px">
</a>
<div id="prod2Info">
<h3>그리핀도르 교복</h3>
<h3 style="position:absolute;left:30px; ">43000원</h3>
</div>
</div>

<div id="prod3" data-aos="fade">
<img src="../media/productFrame.png" width=400px; height=400px;>
<a href="3_uniformDetail/uniform3_Detail.jsp">
<img id="uniform3" src="../media/슬리데린목도리.png" width="200px" height="200px">
</a>
<div id="prod3Info">
<h3>슬리데린 목도리</h3>
<h3 style="position:absolute;left:30px; ">21000원</h3>
</div>
</div>

<div id="prod4" data-aos="fade">
<img src="../media/productFrame.png" width=400px; height=400px;>
<a href="3_uniformDetail/uniform4_Detail.jsp">
<img id="uniform4" src="../media/슬리데린교복.png" width="200px" height="200px">
</a>
<div id="prod2Info">
<h3>슬리데린교복</h3>
<h3 style="position:absolute;left:30px; ">43000원</h3>
</div>
</div>

<div id="prod5" data-aos="fade">
<img src="../media/productFrame.png" width=400px; height=400px;>
<a href="3_uniformDetail/uniform5_Detail.jsp">
<img id="uniform5" src="../media/래번클로교복.png" width="200px" height="200px">
</a>
<div id="prod5Info">
<h3>래번클로 교복</h3>
<h3 style="position:absolute;left:30px; ">39000원</h3>
</div>
</div>

<div id="prod6" data-aos="fade">
<img src="../media/productFrame.png" width=400px; height=400px;>
<a href="3_uniformDetail/uniform6_Detail.jsp">
<img id="uniform6" src="../media/후플푸프로브.png" width="200px" height="200px">
</a>
<div id="prod6Info">
<h3>후플푸프로브</h3>
<h3 style="position:absolute;left:30px; ">25000원</h3>
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