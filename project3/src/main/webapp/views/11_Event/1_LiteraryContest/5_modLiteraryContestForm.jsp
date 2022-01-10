<%@ page language="java" contentType="text/html; charset=UTF-8"
      pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%> 
<head>
<meta charset="UTF-8">
<title>회원 정보 수정창</title>
<style>
  .cls1 {
     font-size:40px;
     text-align:center;
   }
</style>
</head>
<body>
 <h1 class="cls1">회원 정보 수정창</h1>
<form  method="post" action="${contextPath}/literaryContest/modLiteraryContest.do?id=${memInfo.literKey}">
 <table align="center" >
   <tr>
     <td width="200"><p align="right" >공모 번호 ${memInfo.literKey}</td>
     <td width="400"><input   type="text" name="id" value="${memInfo.literKey}" ></td>
     
   </tr>
   <tr>
     <td width="200"><p align="right" >제목</td>
     <td width="400"><input   type="text" name="id" value="${memInfo.literTitle}" ></td>
     
   </tr>
 <tr>
     <td width="200"><p align="right" >콘텐츠</td>
     <td width="400"><input   type="password" name="pwd" value="${memInfo.literContents}" >
     </td>
   </tr>
   <tr>
     <td width="200"><p align="right" >분류</td>
     <td width="400"><input   type="text" name="name" value="${memInfo.literSort}" ></td>
   </tr>
   <tr>
     <td width="200"><p align="right" >경력</td>
     <td width="400"><input   type="text" name="email"  value="${memInfo.literCareer}" ></td>
   </tr>
   <tr>
     <td width="200"><p align="right" >제작기간</td>
     <td width="400"><input   type="text" name="email"  value="${memInfo.literProductionDate}" ></td>
   </tr>
   <tr align="center" >
    <td colspan="2" width="400"><input type="submit" value="수정하기" >
       <input type="reset" value="다시입력" > </td>
   </tr>
 </table>
</form>
</html>
