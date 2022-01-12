<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마블인트로페이지</title>
<style>
body {
   background-color: black;
}

button {
   font-style: italic;
   color: white;
   width: 100px;
   height: 40px;
   font-weight: bold;
   border: solid 3px #DB0000;
   background-color: rgba(0, 0, 0, 0);
   border-top-left-radius: 5px;
   border-bottom-left-radius: 5px;
   border-top-right-radius: 5px;
   border-bottom-right-radius: 5px;
}

button:hover {
   font-style: italic;
   color: white;
   width: 100px;
   height: 40px;
   font-weight: bold;
   background-color: #DB0000;
   border-top-left-radius: 5px;
   border-bottom-left-radius: 5px;
   border-top-right-radius: 5px;
   border-bottom-right-radius: 5px;
}
#marvellogo{
position:absolute;
left:780px;
top: 215px;
}


#marvelBanner {
   position: absolute;
   top: 600px;
   left: 300px;
}

#marvelBannerText {
   color: white;
   font-size: 20pt;
   position: absolute;
   top: 850px;
   left: 600px;
}

#marvelShop {
   position: absolute;
   top: 1200px;
   left: 900px;
}

#marvelShopText {
   color: white;
   font-size: 20pt;
   position: absolute;
   top: 1550px;
   left: 650px;
}

#mavelBoard {
   position: absolute;
   top: 1700px;
   left: 750px;
}

#mavelBoardText {
   color: white;
   font-size: 20pt;
   position: absolute;
   top: 2500px;
   left: 650px;
}

#bottom {
   position: absolute;
   top: 3300px;
   left: 20px;
}

#footer {
   position: absolute;
   width: 100%;
   height: 200px;
   top: 3800px;
}
</style>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
   <jsp:include page="/views/common/commonheader.jsp">
      <jsp:param name="name" value="go" />
   </jsp:include>
   <!-- E헤더 삽입 -->


   <script>
      AOS.init();
   </script>
   
   <div id="marvellogo" 
     data-aos="fade-zoom-in" 
     data-aos-easing="ease-in-back"
     data-aos-delay="10"
     data-aos-offset="0">
   <img src="marvelmedia/marvellogo.png" width="350px" height="100px">
   </div>
   

   <!-- 마블캐릭터 -->
   <div id="marvelBanner" data-aos="fade-up">
      <img src="marvelmedia/marvelbanner.png" width="600px" height="350px">
   </div>
   <div id="marvelBannerText" data-aos="fade-up">
      <h1>좋아하는 캐릭터를 선택해주세요!</h1>
      <a href="spiderman.jsp">
      <button type="button" style="position: absolute;">캐릭터 선택</button>
   </div>

   <!-- 스토어 이동 -->
   <div id="marvelShop" data-aos="fade-up">
      <img src="marvelmedia/marvelshop.png" width="600px" height="400px">
   </div>
   <div id="marvelShopText" data-aos="fade-up">
      <h1>쇼핑할 준비는 되셨나요?</h1>
      <button type="button" style="position: absolute;">스토어 이동</button>
   </div>

   <div id="marvelBoard" data-aos="fade-up">
      <img src="" width="600px" height="400px">
   </div>
   <div id="mavelBoardText" data-aos="fade-up">
      <h1>마블에 관련된 이야기를 나누어볼까요?</h1>
      <button type="button" style="position: absolute;">게시판 이동</button>
   </div>
   <div id="bottom" data-aos="fade-up">
      <img src="marvelmedia/marvelboard.png" width="650px" height="350px">
   </div>
   <div id="footer">
      <!-- S푸터 삽입 -->
      <jsp:include page="/views/common/commonfooter.jsp">
         <jsp:param name="name" value="go" />
      </jsp:include>
      <!-- E푸터 삽입 -->
   </div>

   </div>
</body>
</html>