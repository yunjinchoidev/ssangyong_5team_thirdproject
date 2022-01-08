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
top:2100px;
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


#lordShopping{
position: absolute;
top:3100px;
left:600px;
}

#lordShoppingText{
color:white;
font-size:20pt;
position:absolute;
top:3300px;
left:1300px;
}

#lordMeeting{
position: absolute;
top:3750px;
left:300px;
}

#lordMeetingText{
color:white;
font-size:20pt;
position:absolute;
top:3950px;
left:850px;
}

#bottom{
position:absolute;
top:4300px;
left:20px;
}

#footer{
position:absolute;
width:100%;
height:200px;
top:4900px;
}

</style>

<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
<!-- S헤더 삽입 -->
<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->
	
	<!-- S반지제왕 메뉴 삽입 -->
	<jsp:include page="/views/5_LoadOfRing/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E반지제왕 메뉴 삽입 -->
	
   <script>
   AOS.init();
   </script>
   <div id="potterLogo" 
     data-aos="fade-zoom-in" 
     data-aos-easing="ease-in-back"
     data-aos-delay="10"
     data-aos-offset="0">
   <img src="media/title.png" style="width:900px; height: 600px;">
   </div>


<!-- 반지의 제왕 세계관-->
<div id="potterBanner" data-aos="fade-up">
<img src="media/stillcut.jpg" width="800px" height="400px">
</div>
<div id="potterBannerText" data-aos="fade-up">
<h1>반지의 제왕이 위대한 이유</h1>
<a href="choiceDorm.jsp">
<button type="button" style="position: absolute;">세계관 <br> 보러가기</button>
</a>
</div>

<!-- 스토어 이동 -->
<div id="potterShop" data-aos="fade-up">
<img src="media/ring.jpg" width="600px" height="400px">
</div>
<div id="potterShopText" data-aos="fade-up">
<h1>당신은 절대 반지의 자격이 있습니까?</h1>
<button type="button" style="position: absolute;">테스트 하러가기</button>
</div>



<div id="potterBoard" data-aos="fade-up">
<img src="media/talk.jpg" width="600px" height="400px">
</div>
<div id="potterBoardText" data-aos="fade-up">
<h1>모험 중 휴식은 필수죠.</h1>
<button type="button" style="position: absolute;">게시판 이동</button>
</div>


<div id="lordShopping" data-aos="fade-up">
<img src="media/moment.png" width="600px" height="400px">
</div>
<div id="lordShoppingText" data-aos="fade-up">
<h1>물건을 겟하세요</h1>
<button type="button" style="position: absolute;">스토어 이동</button>
</div>

<div id="lordMeeting" data-aos="fade-up">
<img src="media/gollum.jpg" width="600px" height="400px">
</div>
<div id="lordMeetingText" data-aos="fade-up">
<h1>혼자 모험을 할 수는 없잖아요</h1>
<button type="button" style="position: absolute;">정기 모임 이동</button>
</div>



<div id="bottom" data-aos="fade-up">
<img src="media/city.jpg" width="1850px" height="600px">
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