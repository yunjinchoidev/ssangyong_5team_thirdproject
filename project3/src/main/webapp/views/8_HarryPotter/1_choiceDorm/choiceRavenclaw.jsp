<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
button{
background-color: #8FCEFF;
color:black;
width:100px;
height:50px;
font-weight:bold;
border-top-left-radius: 5px;
border-bottom-left-radius: 5px;
border-top-right-radius: 5px;
border-bottom-right-radius: 5px;
}

#tex{
color:white;
position: absolute;
top:600px;
left:200px;
width:400px;
height:300px;
}

#btnDiv{
position: absolute;
top:650px;
right:300px;
}

#storeBtn{
position: absolute;
top:100px;
}

#boardBtn{
position: absolute;
top:200px;
}


</style>


</head>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="js/confetti_v2.js"></script>

<script>

$(document).ready(function(){  
	  
	  function reAction(){
	  	$("#startButton").trigger("click");
	  	setTimeout(function(){
	  		$("#stopButton").trigger("click");
	  	}, 6000);
	  }
	 
	      reAction();
	      
	});

</script>

<body style="background-color: black;">


<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

<!-- 종이폭죽 효과 -->
<style>
	canvas{z-index:10;pointer-events: none;position: fixed;top: 0;transform: scale(1.1);}
</style>

<div class="buttonContainer" style="display: none;">
	<button class="canvasBtn" id="stopButton">Stop Confetti</button>
	<button class="canvasBtn" id="startButton">Drop Confetti</button>	
</div>

<canvas id="canvas"></canvas>

<!-- 래번클로 배경 이미지 -->
<img src="../media/ravenBack.jpg" width="100%" height="100%">

<div id="tex">
<h2 style="position:absolute;top:20px;left:130px;font-size:30px">
	WelCome To
</h2>

<h1 style="position:absolute;top:100px;left:60px;font-size:50px;">
RAVENCLAW
</h1>
<h2 style="position:absolute;top:200px;left:150px;font-size:30px">
사용자닉네임
</h2>
</div>

<div id="btnDiv">
<a href="main.jsp">
<button id="../mainBtn">메인화면</button>
</a>
<br>
<button id="storeBtn">스토어</button>
<br>
<button id="boardBtn">게시판</button>
</div>

</body>
</html>