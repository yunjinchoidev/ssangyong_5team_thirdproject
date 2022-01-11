<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마블 메인페이지</title>
    <style>
    .header{
       width: 100%;
       height: 130px;
       background: black;
       
    }
    .headertext{
      font-size:40px;
      font-weight:bold;
      margin-bottom: 20px;
    }

    .cardBox{
      width: 310px;
      height: 610px;
      margin:15px;
      display:flex;
      justfy-content: space-around;
    }
    .div{
    margin-left:auto;
    margin-right:auto;
    } 
         
     </style>       
</head>
<body>
    <!-- 마블메인페이지 상단 -->
    <div align="center" class="header"><img class="logo"><img src="marvelmedia/marvellogo.png">
    <a href="marvelmain.jsp"></a>
    </div>
    <!-- 마블메인페이지 가운데 텍스트 -->
    <div align="center" class="headertext">
    <strong><span>Characters</span></strong><br>
    </div>
    </div>
    <!-- 마블캐릭터 이미지 나열 -->
    <div class="cardBox">
        <!-- 스파이더맨 사진 -->
        <div class="card">
          <div><img src="marvelmedia/spiderman_ch.png" style="height:600px; width:400px; margin-left:25px; margin-right:50px;">
          <a href="#">스파이더맨 소개페이지로 이동</a>
          </div>
        </div>
        <!-- 아이언맨 사진 -->
        <div class="card"></div>
          <div><img src="marvelmedia/ironman_ch.png" style="height:600px; width:400px; margin-left:15px; margin-right:50px;">
          <a href="#">아이언맨 소개페이지로 이동</a>
          </div>
        <!-- 토르 사진 -->
        <div class="card"></div>
          <div><img src="marvelmedia/thor_ch.png" style="height:600px; width:400px; margin-left:15px; margin-right:50px;">
          <a href="#">토르 소개페이지로 이동</a>
          </div>
        <!-- 블랙위도우 사진 -->
        <div class="card"></div>
          <div><img src="marvelmedia/blackwidow_ch.png" style="height:600px; width:400px; margin-left:15px; margin-right:50px;">
          <a href="#">블랙위도우 소개 페이지로 이동</a>
          </div>
    </div>
</body>
</html>