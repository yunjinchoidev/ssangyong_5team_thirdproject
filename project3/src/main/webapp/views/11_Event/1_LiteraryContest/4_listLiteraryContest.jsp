<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	isELIgnored="false" 
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />  
<%
request.setCharacterEncoding("UTF-8");
%>    
<html>
<head>
<c:choose>
   <c:when test='${msg=="addMember" }'>
      <script>
         window.onload=function(){
            alert("회원을 등록했습니다.");
         }
      </script>
   </c:when>
   <c:when test='${msg=="modified" }'>
      <script>
        window.onload=function(){
          alert("회원 정보를 수정했습니다.");
        }
      </script>
   </c:when>
   <c:when test= '${msg=="deleted" }'>
      <script>
         window.onload=function(){
            alert("회원 정보를 삭제했습니다.");
        } 
      </script>
</c:when>
</c:choose>

   <meta  charset="UTF-8">
   <title>회원 정보 출력창</title>
<style>
     .cls1 {
       font-size:40px;
       text-align:center;
     }
    
     .cls2 {
       font-size:20px;
       text-align:center;
     }
  </style>
  
</head>
<body>
 <p class="cls1">회원정보</p>
   <table align="center" border="1" >
      <tr align="center" bgcolor="lightgreen">
         <td width="7%" ><b>공모번호</b></td>
         <td width="7%" ><b>작품이름</b></td>
         <td width="7%" ><b>작품내용</b></td>
         <td width="7%" ><b>작품분류</b></td>
         <td width="7%"><b>경력</b></td>
         <td width="7%" ><b>제작기간</b></td>
         <td width="7%" ><b>수정</b></td>
         <td width="7%" ><b>삭제</b></td>
   </tr>

<c:choose>
    <c:when test="${empty  literaryContestList}" >
      <tr>
        <td colspan=5>
          <b>등록된 회원이 없습니다.</b>
       </td>  
      </tr>
   </c:when>  
   <c:when test="${!empty literaryContestList}" >
      <c:forEach  var="mem" items="${literaryContestList }" >
        <tr align="center">
          <td>${mem.literKey }</td>
          <td>${mem.literTitle }</td>
          <td>${mem.literContents }</td>
          <td>${mem.literSort}</td>     
          <td>${mem.literCareer }</td>     
          <td>${mem.literProductionDate }</td>     
          <td><a href="${contextPath}/literaryContest/modLiteraryContestsForm.do?literKey=${mem.literKey }">수정</a></td>
		   <td><a href="${contextPath}/literaryContest/delLiteraryContests.do?literKey=${mem.literKey }">삭제</a></td>
       </tr>
     </c:forEach>
</c:when>
</c:choose>
   </table>  
 <a href="${contextPath}/literaryContest/literaryContestForm.do"><p class="cls2">회원 가입하기</p></a>
</body>
</html>