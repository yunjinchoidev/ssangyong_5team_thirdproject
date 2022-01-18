<%@page import="lord.LordVO"%>
<%@page import="marvel.MarvelVO"%>
<%@page import="harrypotter.HarryPotterVO"%>
<%@page import="member.MemberVO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<style>
body{
color:white;
background-color: #051f30;
}

#uptmembtn{
width:100px;
height:30px;
background-color:rgba(0,0,0,0);
color : skyblue;
border: 1px solid skyblue;
font-weight:bold;
border-top-left-radius: 5px;
border-bottom-left-radius: 5px;
border-top-right-radius: 5px;
border-bottom-right-radius: 5px;
position: absolute;
top:35px;
left:650px;
}

#uptmembtn:hover{
width:100px;
height:30px;
background-color:#3F3F3F;
color : white;
border:none;
}

#delmembtn{
width:100px;
height:30px;
background-color:rgba(0,0,0,0);
color : skyblue;
border: 1px solid skyblue;
font-weight:bold;
border-top-left-radius: 5px;
border-bottom-left-radius: 5px;
border-top-right-radius: 5px;
border-bottom-right-radius: 5px;
position: absolute;
top:35px;
left:780px;
}

#delmembtn:hover{
width:100px;
height:30px;
background-color:#3F3F3F;
color : white;
border:none;
}

#memberInfoBox{
position:absolute;
top:300px;
left:450px;
width:1000px;
height:800px;
background-color:#1B1332;
}

#memberInfo{
position:absolute;
left:100px;
top:20px;
width:80%;
height:90%;
}

#nameArea{
position: absolute;
left:230px;
}

#idArea{
position: absolute;
left:400px;
top:20px;
}

#nickArea{
position: absolute;
left:500px;
top:20px;
}

#memberLvArea{
position: absolute;
left:295px;
top:70px;
}

#memberHr1{
position: absolute;
width:100%;
top:70px;
border-color: grey;
}

#memberHr2{
position: absolute;
width:100%;
top:280px;
border-color: grey;
}

#fanPower{
position: absolute;
top:150px;
left:100px;
}

.updown1 {
position:absolute;
top:170px;
left:290px;
border: 1px solid grey;
width: 0.1px;
height: 90px;
}

#cash{
position: absolute;
top:150px;
left:350px;
}

.updown2 {
position:absolute;
top:170px;
left:510px;
border: 1px solid grey;
width: 0.1px;
height: 90px;
}

#point{
position: absolute;
top:150px;
left:550px;
}

#giftLvArea{
position: absolute;
top:300px;
left:295px;
}

#whoGift{
position: absolute;
top:350px;
left:320px;
}

#gift1{
position: absolute;
top:400px;
left:350px;
}

#gift2{
position: absolute;
top:430px;
left:350px;
}

#talentDona{
position: absolute;
top:550px;
left:100px;
}

.updown3 {
position:absolute;
top:580px;
left:380px;
border: 1px solid grey;
width: 0.1px;
height: 90px;
}

#talentDonaCnt{
position: absolute;
top:550px;
left:450px;
}

/* 해리포터 영억 */
#potterBox{
position:absolute;
top:1200px;
left:450px;
width:1000px;
height:500px;
background-color:#1B1332;
}

#potterInfo{
position:absolute;
left:100px;
top:20px;
width:80%;
height:90%;
}

#potterTitle{
position: absolute;
left:320px;
top:50px;
}

#potterHr{
position: absolute;
width:100%;
top:120px;
border-color: grey;
}

#potterLvArea{
position: absolute;
top:150px;
left:320px;
}

#potterMyChar{
position: absolute;
top:220px;
left:270px;
}

#potterDorm{
position: absolute;
top:300px;
left:270px;
}


/* 마블 영억 */
#marvelBox{
position:absolute;
top:1800px;
left:450px;
width:1000px;
height:500px;
background-color:#1B1332;
}

#marvelInfo{
position:absolute;
left:100px;
top:20px;
width:80%;
height:90%;
}

#marvelTitle{
position: absolute;
left:350px;
top:50px;
}

#marvelHr{
position: absolute;
width:100%;
top:120px;
border-color: grey;
}

#marvelLvArea{
position: absolute;
top:150px;
left:320px;
}

#marvelMyChar{
position: absolute;
top:220px;
left:270px;
}

/* 반지의제왕 영억 */
#ringBox{
position:absolute;
top:2400px;
left:450px;
width:1000px;
height:500px;
background-color:#1B1332;
}

#ringInfo{
position:absolute;
left:100px;
top:20px;
width:80%;
height:90%;
}

#ringTitle{
position: absolute;
left:310px;
top:50px;
}

#ringHr{
position: absolute;
width:100%;
top:120px;
border-color: grey;
}

#ringLvArea{
position: absolute;
top:150px;
left:320px;
}

#ringMyChar{
position: absolute;
top:220px;
left:270px;
}

#footer{
position:absolute;
width:100%;
height:200px;
top:3000px;
}
</style>


<%--
 
 
--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script type="text/javascript">
//
	$(document).ready(function(){
		
	});
</script>
</head>
<%
String path = request.getContextPath();

String id= (String) session.getAttribute("ID");
String pass = (String) session.getAttribute("PASSWORD");

MemberDAO dao = new MemberDAO();

%>

<body>

<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>

<!-- 멤버 박스 -->
<%for(MemberVO mem:dao.mymemberlist(id, pass)){ %>
<div id="memberInfoBox">
	<div id="memberInfo">
		<h1 id="nameArea"><%= mem.getmName()%>님</h1><h4 id="idArea"><%=mem.getmId()%></h4>
		<h4 id="nickArea"><%=mem.getNickname()%></h4>
		<a href="<%=path%>/memupdate.do">
		<button id="uptmembtn">회원정보수정</button>
		</a>
		
		<a href="<%=path%>/memupdate.do">
		<button id="delmembtn">회원탈퇴</button>
		</a>
		
		<hr id="memberHr1">
		<h1 id="memberLvArea">회원레벨:LV<%=mem.getmLevel()%></h1>
		<h1 id="fanPower">덕력지수<br>&nbsp <%=mem.getmManiaQuot()%>점</h1>
		<div class="updown1"></div>
		<h1 id="cash">&nbsp캐쉬<br>&nbsp &nbsp<%=mem.getmCash()%></h1>
		<div class="updown2"></div>
		<h1 id="point">포인트<br>&nbsp<%=mem.getmPoint()%>점</h1>
		<hr id="memberHr2">
		<h1 id="giftLvArea">재능레벨:LV<%=mem.getmGiftLevel()%></h1>
		<h2 id="whoGift">회원님의 재능</h2>
		<h3 id="gift1">-<%=mem.getmMyGift()%></h3>
		<h3 id="gift2">-재능 예시2</h3>
		<h1 id="talentDona">재능기부 참여<br>&nbsp&nbsp&nbsp&nbsp&nbsp <%=mem.getmGiftDoneExist()%></h1>
		<div class="updown3"></div>
		<h1 id="talentDonaCnt">재능기부 참여 횟수<br>&nbsp&nbsp&nbsp&nbsp&nbsp <%=mem.getmGiftDoneCnt() %>회</h1>
	</div>
</div>
<%} %>

<%for(HarryPotterVO potter:dao.mypotterlist(id, pass)){ %>
<!-- 해리포터 박스 -->
<div id="potterBox">
	<div id="potterInfo">
		<h1 id="potterTitle">해리포터</h1>
		<hr id="potterHr">
		<h1 id="potterLvArea">레벨:LV<%=potter.getHarryMagicLevel()%></h1>
		<h1 id="potterMyChar">나의 캐릭터:<%=potter.getHarryCharacter() %></h1>
		<h1 id="potterDorm">소속 기숙사:<%=potter.getHarryDomioty() %></h1>
	</div>

</div>
<%} %>

<%for(MarvelVO marvel:dao.mymarvellist(id, pass)){ %>
<!-- 마블 박스 -->
<div id="marvelBox">
	<div id="marvelInfo">
		<h1 id="marvelTitle">마블</h1>
		<hr id="marvelHr">
		<h1 id="marvelLvArea">레벨:LV?</h1>
		<h1 id="marvelMyChar">나의 캐릭터:<%=marvel.getMarvelCharacter()%></h1>
	</div>

</div>
<%} %>

<%for(LordVO lord:dao.mylordllist(id, pass)){ %>
<!-- 반지의제왕 박스 -->
<div id="ringBox">
	<div id="ringInfo">
		<h1 id="ringTitle">반지의제왕</h1>
		<hr id="ringHr">
		<h1 id="ringLvArea">레벨:LV?</h1>
		<h1 id="ringMyChar">나의 캐릭터:<%=lord.getLoadCharacter()%></h1>
	</div>

</div>
<%} %>

	
<div id="footer">
	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
	</div>
	
</body>
</html>