<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어-지팡이</title>

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

/* 딱총나무 지팡이 */
#staff1{
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

/* 호랑가시 나무 지팡이 */
#prod2{
position:absolute;
top:0px;
left:400px;
}

#staff2{
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

#staff3{
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

#staff4{
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

#staff5{
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

#staff6{
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
<button type="button" id="menustick">빗자루</button>
<button type="button" id="menuuniform">유니폼</button>
</div>

<div id="product">

<div id="prod1" data-aos="fade">
<img src="../media/productFrame.png" width=400px; height=400px;>
<a href="1_staffDetail/staff1_Detail.jsp">
<img id="staff1" src="../media/딱총1.png" width="200px" height="200px">
</a>
<div id="prod1Info">
<h3>딱총나무 지팡이</h3>
<h3 style="position:absolute;left:30px; ">23000원</h3>
</div>
</div>

<div id="prod2" data-aos="fade">
<img src="../media/productFrame.png" width=400px; height=400px;>
<a href="1_staffDetail/staff2_Detail.jsp">
<img id="staff2" src="../media/호랑가시.png" width="200px" height="200px">
</a>
<div id="prod2Info">
<h3>호랑가시나무 지팡이</h3>
<h3 style="position:absolute;left:30px; ">26000원</h3>
</div>
</div>

<div id="prod3" data-aos="fade">
<img src="../media/productFrame.png" width=400px; height=400px;>
<a href="1_staffDetail/staff3_Detail.jsp">
<img id="staff3" src="../media/포도나무.png" width="200px" height="200px">
</a>
<div id="prod3Info">
<h3>포도나무 지팡이</h3>
<h3 style="position:absolute;left:30px; ">22000원</h3>
</div>
</div>

<div id="prod4" data-aos="fade">
<img src="../media/productFrame.png" width=400px; height=400px;>
<a href="1_staffDetail/staff4_Detail.jsp">
<img id="staff2" src="../media/호두나무.png" width="200px" height="200px">
</a>
<div id="prod2Info">
<h3>호두나무 지팡이</h3>
<h3 style="position:absolute;left:30px; ">23000원</h3>
</div>
</div>

<div id="prod5" data-aos="fade">
<img src="../media/productFrame.png" width=400px; height=400px;>
<a href="1_staffDetail/staff5_Detail.jsp">
<img id="staff5" src="../media/느릅나무.png" width="200px" height="200px">
</a>
<div id="prod5Info">
<h3>느릅나무 지팡이</h3>
<h3 style="position:absolute;left:30px; ">29000원</h3>
</div>
</div>

<div id="prod6" data-aos="fade">
<img src="../media/productFrame.png" width=400px; height=400px;>
<a href="1_staffDetail/staff6_Detail.jsp">
<img id="staff6" src="../media/주목나무.png" width="200px" height="200px">
</a>
<div id="prod6Info">
<h3>주목나무 지팡이</h3>
<h3 style="position:absolute;left:30px; ">26000원</h3>
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