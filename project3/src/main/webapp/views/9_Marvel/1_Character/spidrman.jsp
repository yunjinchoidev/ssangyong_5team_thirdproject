<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<title>마블 캐릭터소개</title>
<meta charset="utf-8">
<style>
@import
   url('https://fonts.googleapis.com/css2?family=Oswald&display=swap');

* {
   margin: 0;
   padding: 0;
}

a {
   color: inherit;
   text-decoration: none;
}

li {
   list-style: none;
}

.body {
   font-size: 16px;
   color: #696969;
}

.wrap {
   width: 100;
   margin-top: 50px;
}

.chacracter {
   width: 1600px;
   margin: 0 auto;
   padding: 50px 0;
   border-top: 1px solid #696969;
   border-bottom: 1px solid #696969;
}
.character ul{overflow: hidden;}
.character ul li{float: left; width:20%; background: url(../marvelmedia/spiderman_ch.png)
 no-repeat right/cover; padding: 20px 0 20px 10px; box-sizing: border-box;
}
.character ul li:nth-child(2){background: url(../png)
 no-repeat right/cover; border-left: 1px solid #696969;}
 .character ul li .text{
 text-align:center; width: 45%;
 }
 .character ul li .text h3{
 font-size: 36px; margin-bottom: 30px;
 }
 .character ul li .text .btn{
 display: inline-block; padding: 8px 18px; color: ; border-top: 1px solid #666; border-bottom: 1px solid #666;
 }
 .character ul li .text .dot{
position: absolute; top:-20px; left: 152px;
}
.character ul li .text .dot span{
display: inline-block; width: 8px; height: 8px; background: rgba(255,0,0,0.91;) margin-right: 22px; border-radius: 50%;
text-ident:-9999px;
}
</style>
</head>
<body>
   <div class="wrap">
      <section class="character">
         <ul>
            <li>
               <div class="text">
                  <h3>Character-SPIDER MAN</h3>
                  <a href="#" class="btn">About Spider-man</a>
                  <div class="dot">
                     <span>1</span> <span>2</span> <span>3</span> <span>4</span>
                  </div>
               </div>
            </li>
            <li>
               <div class="text">
                  <h3>Character-IRON MAN</h3>
                  <a href="#" class="btn">About Iron man</a>
                  <div class="dot">
                     <span>1</span> <span>2</span> <span>3</span> <span>4</span>
                  </div>
               </div>
            </li>
         </ul>
      </section>

   </div>
</body>
</html>