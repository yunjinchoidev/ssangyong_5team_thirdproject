<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>해리포터-메인페이지</title>
<style>
body{
background-color: #111111;
}

button{
font-style: italic;
color:white;
width:100px;
height:40px;
font-weight:bold;
border:solid 3px #5D4283;
background-color:rgba(0,0,0,0);
border-top-left-radius: 5px;
border-bottom-left-radius: 5px;
border-top-right-radius: 5px;
border-bottom-right-radius: 5px;
}

button:hover{
font-style: italic;
color:white;
width:100px;
height:40px;
font-weight:bold;
background-color:#5D4283;
border-top-left-radius: 5px;
border-bottom-left-radius: 5px;
border-top-right-radius: 5px;
border-bottom-right-radius: 5px;
}

#potterLogo{
position:absolute;
left:500px;
top: 300px;
}

#potterBanner{
position: absolute;
top:1000px;
left:300px;
}

#potterBannerText{
color:white;
font-size:20pt;
position:absolute;
top:1350px;
left:850px;
}

#potterShop{
position: absolute;
top:1700px;
left:800px;
}

#potterShopText{
color:white;
font-size:20pt;
position:absolute;
top:1900px;
left:450px;
}

#potterBoard{
position: absolute;
top:2400px;
left:300px;
}

#potterBoardText{
color:white;
font-size:20pt;
position:absolute;
top:2700px;
left:850px;
}

#bottom{
position:absolute;
top:3300px;
left:20px;
}

</style>
</head>
<body>
<audio autoplay loop controls>
    <source src="media/potterBGM.mp3" type="audio/mpeg">
</audio>


<div id="potterLogo">
<img src="media/potterLogo.png">
</div>

<!-- 해리포터 기숙사 -->
<div id="potterBanner">
<img src="media/potterBanner.png" width="800px" height="400px">
</div>
<div id="potterBannerText">
<h1>기숙사는 선택 하셨나요?</h1>
<button type="button" style="position: absolute;">기숙사 선택</button>
</div>

<!-- 스토어 이동 -->
<div id="potterShop">
<img src="media/potterShop.png" width="600px" height="400px">
</div>
<div id="potterShopText">
<h1>지팡이는 준비 하셨나요?</h1>
<button type="button" style="position: absolute;">스토어 이동</button>
</div>

<div id="potterBoard">
<img src="media/potterRestRoom.jpg" width="600px" height="400px">
</div>
<div id="potterBoardText">
<h1>이야기는 나누셨나요?</h1>
<button type="button" style="position: absolute;">게시판 이동</button>
</div>

<div id="bottom">
<img src="media/hogwarts.png" width="1850px" height="600px">
</div>
</body>
</html>