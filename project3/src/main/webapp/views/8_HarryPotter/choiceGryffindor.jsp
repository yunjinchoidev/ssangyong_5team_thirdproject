<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<body>

<style>
	canvas{z-index:10;pointer-events: none;position: fixed;top: 0;transform: scale(1.1);}
</style>

<div class="buttonContainer" style="display: none;">
	<button class="canvasBtn" id="stopButton">Stop Confetti</button>
	<button class="canvasBtn" id="startButton">Drop Confetti</button>	
</div>

<canvas id="canvas"></canvas>
	

</body>
</html>