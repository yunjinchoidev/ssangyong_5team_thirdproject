<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="attachedFile.*"
    import="lecture.*" 
    import="attachedfile.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<style>
.lecdetailtab {
	border: 3px solid yellow;
	margin: 0 auto;
	width: 1000px;
	height: 700px;
}

.lecdetailtab table, .lecdetailtab td, .lecdetailtab tr{
	border: 3px solid yellow;
	font-size: 30px;
}

p {
	color: white;
	font-size: 30px;
}

.leclin {
	width: 300px;
	height: 150px;
	font-size: 30px;
	margin: 40px;
}
</style>
<script type="text/javascript" 
  src="${path}/a00_com/jquery-3.5.1.js"></script>
<script type="text/javascript">
<%--
 
 
--%>
//
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<%
		String filepath=request.getParameter("filepath"); 
		if(filepath==null) filepath="";

		
		String lecKeyS=request.getParameter("lecKeyS");
		int lecKeyA=0;
		if(lecKeyS!=null){
			lecKeyA = Integer.parseInt(lecKeyS);
		};
		
		LectureDAO dao = new LectureDAO();
		AttachedFileDAO dao01 = new AttachedFileDAO();
		ArrayList<LectureVO> llist = dao.lecSearch(lecKeyA);
%>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>A
	<!-- E헤더 삽입 -->
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/10_Store/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->


	<div class="contents">
		<div class="cards">
			<p>상세 강의 정보</p>

			<table border="3" class="lecdetailtab">
				<colgroup>
					<col width="30%">
				</colgroup>
				<%for(LectureVO l01 : llist) {%>
				<tr><td>강의 고유 번호</td><td><%=l01.getLecKey() %></td></tr>
				<tr><td>강의명</td><td><%=l01.getLecName() %></td></tr>
				<tr><td>강의 내용</td><td><%=l01.getLeccontents()%></td></tr>
				<tr><td>강사</td><td><%=l01.getLecTeacher() %></td></tr>
				<tr><td>제한인원</td><td><%=l01.getLeclimitcnt() %></td></tr>
				<tr><td>온라인여부</td><td><%=l01.getLeconlineavail()%></td></tr>
				<tr><td>난이도</td><td><%=l01.getLecdifficulty()%></td></tr>
				<tr><td>난이도</td><td><%=l01.getLecdifficulty()%></td></tr>
				<tr><td>평점</td><td><%=l01.getLecscore()%></td></tr>
				<%} %>
			</table>
			<form action="4_cart.jsp">
				<input type="button" value="메인으로이동"
					onclick="location.href='0_default.jsp'" class="leclin"> 
					<input
					type="submit" value="수강신청하기" class="leclin">
					<input type="hidden" name="lecKey" value=lecKeyA>
			</form>

		</div>
	</div>

	
	
	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</html>