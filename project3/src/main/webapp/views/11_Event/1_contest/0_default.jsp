AA<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="literacyContest.*"
	import="java.util.ArrayList"
	%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  /> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신춘문예</title>
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript">
function check() {
    if (!confirm("확인(예) 또는 취소(아니오)를 선택해주세요.")) {
        alert("취소(아니오)를 누르셨습니다.");
    } else {
        alert("확인(예)을 누르셨습니다.");
    }
}
</script>
<link rel="stylesheet" type="text/css" href="/project3/views/CSS/commoncss.css"> 
<style>
.litertab{
	width: 600px;
	height: 300px;
	font-size: 30px;
	text-decoration: none;
	color: black;
	margin : 0 auto;
}

#contebtn{
	width : 400px;
	height: 80px;
	font-size: 40px;
	font-weight: bolder;
	margin: 20px;	
	margin-bottom: 30px;
}

.conlisttab {
	width: 1400px;
	height: 600px;
	border: 3px solid yellow;
	margin: 0 auto;
	font-size: 20px;
	margin-top: 50px;
	color: white;
	text-align: center;
}

.conlisttab table, .conlisttab td, .conlisttab td {
	border: 3px solid yellow;
}

.conlisttab td {
	height: 50px;
}

#seachcon{
	width: 1000px;
	height: 100px;
	font-size: 60px;
	font-weight: bolder;
	text-align: center;
	background-color: white;
	border: 2px solid yellow;
}

</style>
</head>
<body>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->
	
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/11_Event/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->
	

	<div class="contents">
		<div class="cards">
			<h1>새로운 세계를 공모하십시오.</h1>
			<p> 제 1회 판타지 빌리지 신춘문예</p>
			<p> 톨킨같은 유명한 판타지 작가가 되고 싶습니까? <br>
				판타지 빌리지에서 주최하는 신춘문예는<br> 
				커리어의 시작점으로 분명 탁월한 선택이 될 것입니다.<br>
				당신의 끼와 재능을 온전히 원고지에 담아 보내주십시오.<br>
				기다리겠습니다.
				<br><br></p>
			<button onclick="location.href='1_apply.jsp'" id="contebtn">공모하기(apply)</button>
		
			<hr style="border : 5px solid yellow; margin: 40px; ">

<%
	LiteraryContestDAO dao = new LiteraryContestDAO();
%>


<%
	String reqfansort = request.getParameter("fansort"); if(reqfansort==null) reqfansort="";
	ArrayList<LiteraryContestVO> b = dao.SearchltList(reqfansort);
	
	int literKey=0;
	String literKeyS = request.getParameter("literKey");
	if (literKeyS!=null) {literKey=Integer.parseInt(literKeyS);};
	
	dao.deletelt(literKey);
%>


	<form>
	<input type="text" id="seachcon" name="fansort" placeholder="작품 분류로 검색하세요">
	<input type="submit">
	</form>
   <table align="center" class="conlisttab">
      <tr align="center" bgcolor="lightgreen">
         <td width="7%" ><b>공모번호</b></td>
         <td width="7%" ><b>작품이름</b></td>
         <td width="7%" ><b>작품내용</b></td>
         <td width="7%" ><b>작품분류</b></td>
         <td width="7%"><b>경력</b></td>
         <td width="7%" ><b>제작기간</b></td>
         <td width="7%" ><b>회원번호</b></td>
         <td width="7%" ><b>파일번호</b></td>
         <td width="7%" colspan="2"><b>비고</b></td>
   </tr>
   
        <%for( LiteraryContestVO a : b) {%>
        <tr><td><%=a.getLiterKey() %></td>
          <td><%=a.getLiterTitle() %></td>
			<td><%=a.getLiterContents() %>
			<td><%=a.getLiterSort() %></td>
			<td><%=a.getLiterCareer() %></td>
			<td><%=a.getLiterProductionDate() %></td>
			<td><%=a.getmKey() %></td>
			<td><%=a.getFileKey() %></td>
			<td>
			<form>
				<input type="submit" onclick="return check()" value="삭제">
				<input type="hidden" name="literKey" value="<%=a.getLiterKey() %>">
				</form></td>
			<td>
			
			<form action="2_modapply.jsp">
				<input type="submit" onclick="return check()" value="수정">
				<input type="hidden" name="literKey" value="<%=a.getLiterKey() %>">
				</form></td></tr>
			<%} %>
   </table>  




		</div>
	</div>



	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp"></jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>