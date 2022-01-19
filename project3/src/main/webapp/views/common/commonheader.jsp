<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>common header</title>
<link
   href="https: //fonts.googleapis.com/css2? family= Parisienne & display=swap"
   rel="stylesheet">
<link rel="stylesheet" type="text/css"
   href="/project3/views/CSS/commoncss.css">
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<link
   href="https: //fonts.googleapis.com/css2? family= Parisienne & display=swap"
   rel="stylesheet">
<style>
/*전체 헤더 영역 초기화*/
body {
   
}

.header {
   width: 100%;
   height: 200px;
   background-color: black;
    position: fixed;
  top: 0;
  left: 0;
  right: 0;
   z-index:99;
}

/*header를 headup01과 headup02로 나눔*/
.headup01 {
   width: 100%;
   height: 125px;
}

.headup02 {
   width: 100%;
   height: 75px;
}

/*로고 크기 설정*/
#logo {
   width: 125px;
   height: 125px;
   padding-left: 890px;
}

/* 최우측 최상단 메뉴 */
.headermenu01 {
   width: 380px;
   height: 50px;
   display: inline-block;
   margin-right: 30px;
}

.headermenu01 ul li {
   display: inline-block;
   color: white;
   font-size: 23px;
   text-decoration: none;
}

.headermenu01 ul li a {
   text-decoration: none;
   color: white;
   padding-right: 10px;
}

.headermenu02 {
   width: 300px;
   height: 50px;
   display: inline-block;
   margin-top: 5px;
}

.headermenu02 img {
   width: 60px;
   height: 50px;
   display: inline-block;
   text-align: right;
}

#account{
	padding-left: 100px;
}
#shoppingcart{
	padding-left: 30px;
}

.headermenuwrap {
   float: right;
}

#acc {
   margin-left: 60px;
}

.headup01:::after {
   content: '';
   display: block;
   clear: both;
}

/*헤더 두번째 박스*/
.headup02 {
   width: 100%;
   height: 75px;
   margin-top: 10px;
}

.tab {
   width: 100%;
   height: 100%;
   text-align: center;
   margin: 0;
   padding: 0;
}

.fansort {
   color: white;
   font-size: 30px;
}

.tab img {
   
}

.fansort a{
	text-decoration: none;
	color : white;
}

#lordtitle{
	width: 240px;
	height: 50px;
}

#logoutbtn{
width:80px;
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
left:1800px;
top:15px;
}

#logoutbtn:hover{
width:80px;
height:30px;
background-color:#3F3F3F;
color : white;
border:none;
}
</style>

</head>
<%
String sid = (String)session.getAttribute("ID"); 
String path = request.getContextPath();
%>

<script type="text/javascript">
   
$(document).ready(function() {
	$("#logoutbtn").click(function(){
		if(confirm("로그아웃 하시겠습니까?")==true){
			location.href= "<%=path%>/logout.do";
		}else{
			return false;
		}
	});
});


</script>

<body>

   <header>
      <div class="header">
         <div class="headup01">
            <a href="/project3/views/0_Main/aboutus.jsp"> 
            <img src="/project3/views/Media/logo.png" id="logo"></a>
               <div class="headermenuwrap">
                  <div class="headermenu01">
                     <ul>
                     	<%if(sid==null){ %>
                     	<%}else{ %>
                     	<li><button id="logoutbtn">로그아웃</button></li>
                     	<%} %>
                        <li><a href="${contextPath }/talent/list.do">서비스</a></li>
                        <li><a href="${contextPath}/oft/list.do">스토어</a></li>
                        <li><a href="/project3/views/11_Event/1_contest/0_default.jsp">이벤트</a></li>
                     </ul>
                  </div>
                  <br>
                  <div class="headermenu02">
                  	 <%if(sid==null){ %>
                     <a href="<%=path %>/login.do"><img
                        src="/project3/views/Media/account3.png" id="account"></a> 
                     <%}else{%>
                    	 <a href="<%=path %>/mypage.do"><img
                                 src="/project3/views/Media/account3.png" id="account"></a> 
                     <% }%>   
                        <a href="${contextPath }/cart/list.do"><img
                        src="/project3/views/Media/shopping-cart2.png" id="shoppingcart"></a>
                  </div>
               </div>
         </div>
         <div class="headup02">
            <table class="tab">
               <colgroup>
                  <col style="width: 26%;">
                  <col style="width: 16%;">
                  <col style="width: 16%;">
                  <col style="width: 16%;">
                  <col style="width: 26%;">
               </colgroup>
               <tr>
                  <td><img src="/project3/views/Media/leftbong.png"></td>
                  <td class="fansort"><a href="/project3/views/9_Marvel/marvelmain.jsp">Marvel</a></td>
                  <td class="fansort"><a href="/project3/views/8_HarryPotter/main.jsp">HarryPotter</a></td>
                  <td class="fansort"><a href="/project3/views/5_LordOfRing/main.jsp"><img src="/project3/views/Media/lordtitle.png" id="lordtitle"></a></td>
                  <td><img src="/project3/views/Media/rightbong.png"></td>
               </tr>
            </table>
         </div>
      </div>
   </header>


</body>
</html>