<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="project3.lord.*"
    import="lord.*"
     %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반지의제왕</title>
<link rel="stylesheet" 
	href="${path}/a00_com/a00_com.css">
<style>

.lordtesttab{
	width:1000px;
	height: 500px;
	margin: 0 auto;
	font-size: 40px;
}
.lordtesttab table, .lordtesttab td, .lordtesttab th{
	border : 3px solid yellow;
	border-collapse : collapse;
}


#pp01{
	color : white;
	font-size: 100px;
}
</style>
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">

<%--
 
--%>
<script>
</script>
</head>
<body>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

	<!-- S반지제왕 메뉴 삽입 -->
	<jsp:include page="/views/5_LordOfRing/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E반지제왕 메뉴 삽입 -->
	<%
	
		LordTestDao dao = new LordTestDao();
	
		int lordTestKey=0;
		int mKey=0;
		String lordTestKeys = request.getParameter("lordTestKey");	
		String mKeys = request.getParameter("mKey");	
		
		if(lordTestKeys!=null){lordTestKey=Integer.parseInt(lordTestKeys);};
		if(mKeys!=null){mKey=Integer.parseInt(mKeys);};
		
		int info01=0;
		int info02=0;
		int info03=0;
		int info04=0;
		int info05=0;
		int info06=0;
		int info07=0;
		int info08=0;
		int info09=0;
		int info10=0;
		int info11=0;
		int info12=0;
		int info13=0;
		int info14=0;
		String info01s = request.getParameter("chk_info01");
		String info02s = request.getParameter("chk_info02");
		String info03s = request.getParameter("chk_info03");
		String info04s = request.getParameter("chk_info04");
		String info05s = request.getParameter("chk_info05");
		String info06s = request.getParameter("chk_info06");
		String info07s = request.getParameter("chk_info07");
		String info08s = request.getParameter("chk_info08");
		String info09s = request.getParameter("chk_info09");
		String info10s = request.getParameter("chk_info10");
		String info11s = request.getParameter("chk_info11");
		String info12s = request.getParameter("chk_info12");
		String info13s = request.getParameter("chk_info13");
		String info14s = request.getParameter("chk_info14");

		if(info01s!=null){info01=Integer.parseInt(info01s);};
		if(info02s!=null){info02=Integer.parseInt(info02s);};
		if(info03s!=null){info03=Integer.parseInt(info03s);};
		if(info04s!=null){info04=Integer.parseInt(info04s);};
		if(info05s!=null){info05=Integer.parseInt(info05s);};
		if(info06s!=null){info06=Integer.parseInt(info06s);};
		if(info07s!=null){info07=Integer.parseInt(info07s);};
		if(info08s!=null){info08=Integer.parseInt(info08s);};
		if(info09s!=null){info09=Integer.parseInt(info09s);};
		if(info10s!=null){info10=Integer.parseInt(info10s);};
		if(info11s!=null){info11=Integer.parseInt(info11s);};
		if(info12s!=null){info12=Integer.parseInt(info12s);};
		if(info13s!=null){info13=Integer.parseInt(info13s);};
		if(info14s!=null){info14=Integer.parseInt(info14s);};
		int sumofvalue=info01+info02+info03+info04+info05+info06+info07+
						info08+info09+info10+info11+info12+info13+info14;
	
		String ans = "";
		if(sumofvalue>20){
			ans="있습니다.";
		}else{
			ans="없습니다.";
		};
			
			dao.insertlt(new LordTestVO(lordTestKey,mKey,sumofvalue));
		%>

<div class="contents">
	<div class="cards">
	
		<p id="pp01">당신의 테스트 결과</p>
		<table class="lordtesttab">
			<colgroup>
				<col width="50%">
			</colgroup>
				<tr><th>당신의 검사번호</th><td><%=lordTestKey %></tr>
				<tr><th>당신의 회원번호</th><td><%=mKey%></tr>
				<tr><td>당신의 점수</td><td><%=sumofvalue %></td></tr>
				<tr><td colspan="2">당신은 절대 반지의 자격이......<%=ans %></td></tr>
		</table>
		</div>
</div>
<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>

