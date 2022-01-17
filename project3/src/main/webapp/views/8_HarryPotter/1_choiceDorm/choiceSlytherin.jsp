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
background-color: orange;
color:white;
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

#confirmBtn{
position: absolute;
top:300px;
left:150px;
}


</style>


</head>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="views\8_HarryPotter\js\confetti_v2.js"></script>

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

<%
String path = request.getContextPath();

String id= (String)session.getAttribute("ID");
String pass= (String)session.getAttribute("PASSWORD");

%>

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

<!-- 슬리데린 배경 이미지 -->
<img src="views\8_HarryPotter\media\slyBack.jpg" width="100%" height="100%">

<div id="tex">
<h2 style="position:absolute;top:20px;left:130px;font-size:30px">
	WelCome To
</h2>

<h1 style="position:absolute;top:100px;left:60px;font-size:50px;">
SLYTHERIN
</h1>
<h2 style="position:absolute;top:200px;left:150px;font-size:30px">
사용자닉네임
</h2>
<form>
<button id="confirmBtn">확정하기</button>

<input type="hidden" name="dorm" value="슬리데린">
<input type="hidden" name="id" value="<%=id %>">
<input type="hidden" name="pass" value="<%=pass %>">
</form>
</div>

<div id="btnDiv">
<a href="../main.jsp">
<button id="mainBtn">메인화면</button>
</a>
<br>
<button id="storeBtn">스토어</button>
<br>
<button id="boardBtn">게시판</button>
</div>

</body>
</html>