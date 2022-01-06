<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>해리포터-기숙사선택</title>

<link rel="stylesheet" href="css/hint.css">

<style>
body{
background-color: #111111;
}

h4{
color: white;
font-weight: bold;
}

button{
background-color:rgba(0,0,0,0);
border:none;
}

#hat{
position: absolute;
top:400px;
left:780px;
}

#gryffindor{
position: absolute;
top: 1000px;
left: 400px;
width:400px;
height:400px;
}

#gryffindor:hover img{
width:430px;
height:430px;
}

#gryh41{
position: absolute;
left:50px;
}

#gryh42{
position: absolute;
top:550px;
}

#slytherin{
position: absolute;
top: 1000px;
left: 1150px;
width:400px;
height:400px;
}

#slytherin:hover img{
width:430px;
height:430px;
}

#slyh41{
position: absolute;
left:50px;
}

#slyh42{
position: absolute;
top:550px;
}

</style>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>

$(document).ready(function(){  
	  

	});

</script>
</head>

<body>

<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

<!-- 모자 영역 -->
<div id="hat">
<span class="hint--right" aria-label="너는 어느 기숙사가 좋을까..."><img src="media/magic_hat.png" width="350px" height="300px"></span>
</div>

<!-- 그리핀도르 -->
<form>
<div id="gryffindor">
<div id="gryffindorLogo">
<button id="btngry" name="dorm" value="gryffindor">
<img src="media/gryffindor.png" width="300px" height="300px">
</button>
</div>
<div id="gryh41">
<h1 style="color:red;">GRYFFINDOR</h1>
<h4 >창립자:고드릭 그리핀도르</h4>
<h4>대표동물:사자</h4>
<h4>대표색:붉은색,금색</h4>
<h4>덕목:용기,기사도정신</h4>
<h4 style="font-style: italic;">"그 이름에 걸맞는 용기를 가진 아이들은, 누구나 가르치도록 하세"</h4>
</div>
</div>


<!-- 슬리데린 -->>
<div id="slytherin">
<button name="dorm" value="slytherin"><img src="media/slytherin.png" width="300px" height="300px"></button>
<div id="slyh41">
<h1 style="color:green;">SLYTHERIN</h1>
<h4 >창립자:살라자르 슬리데린</h4>
<h4>대표동물:뱀</h4>
<h4>대표색:초록색,은색</h4>
<h4>덕목:야망,교활,권력</h4>
<h4 style="font-style: italic;">"가장 순수한 혈통을 지닌 이들만 가르치도록하세"</h4>
</div>
</div>
</form>

</body>
</html>