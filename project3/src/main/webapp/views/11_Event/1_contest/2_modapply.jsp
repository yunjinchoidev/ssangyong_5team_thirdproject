<%@page import="literacyContest.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*"
	%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />  
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/project3/views/CSS/commoncss.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<style>
.literapplytab{
	width : 1000px;
	height : 800px;
	border: 3px solid white;
	font-size: 30px;
}


input[type=text], input[type=date], select{
	width:500px;
	height: 50px;
	font-size: 30px;
	text-align: center;
}
.literapplytab td, .literapplytab tr, .literapplytab table{
	border : 3px solid yellow;
		font-size: 30px;
}

</style>
<script>
function check() {
    if (!confirm("확인(예) 또는 취소(아니오)를 선택해주세요.")) {
        alert("취소(아니오)를 누르셨습니다.");
    } else {
        alert("확인(예)을 누르셨습니다.");
    }
}
</script>
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


<jsp:useBean id="conapply" class="literacyContest.LiteraryContestVO"></jsp:useBean>

<%



int literKey=0;
String literKeyS = request.getParameter("literKey");
if(literKeyS!=null) {literKey=Integer.parseInt(literKeyS);};

LiteraryContestDAO dao = new LiteraryContestDAO();

ArrayList<LiteraryContestVO> findapply = dao.SearchbyliterKey(literKey);

LiteraryContestVO theone = findapply.get(0);





String literTitle = request.getParameter("literTitle"); if(literTitle==null) {literTitle="";};
String literContents = request.getParameter("literContents"); if(literContents==null) {literContents="";};
String literSort = request.getParameter("literSort"); if(literSort==null) {literSort="";};
String literCareer = request.getParameter("literCareer"); if(literCareer==null) {literCareer="";};

int literProductionDate=0;
String literProductionDateS = request.getParameter("literProductionDate");
if(literProductionDateS!=null) {literProductionDate=Integer.parseInt(literProductionDateS);};


String literSubmissionDateS = request.getParameter("literSubmissionDateS"); if(literSubmissionDateS==null) {literSubmissionDateS="";};


int mKey=0;
String mKeyS = request.getParameter("mKey");
if(mKeyS!=null) {mKey=Integer.parseInt(mKeyS);}; 

int fileKey=0;
String fileKeyS = request.getParameter("fileKey");
if(fileKeyS!=null) {fileKey=Integer.parseInt(fileKeyS);}; 



dao.insertlt(new LiteraryContestVO(
		literKey,literTitle,literContents,
		literSort,literCareer,
		literProductionDate,literSubmissionDateS,
		mKey, fileKey));

%>

	<div class="contents">
		<div class="cards">
			<h1>공모서 수정</h1>
			<form action="3_modapplyprc.jsp">
				<table border="1" align="center" class="literapplytab">
					<colgroup>
						<col width="30%">
					</colgroup>
						<tr>
							<td colspan="2" align="center" height="50">&lt;기본 입력 사항&gt;
							</td>
						</tr>
						<tr>
							<td width="100">신청번호:</td>
							<td><input type="text" name="literKey" size="10" value="<%=theone.getLiterKey() %>" autofocus="">
							</td>
						</tr>
						<tr>
							<td width="100">작품 제목 :</td>
							<td><input type="text" name="literTitle" size="10" value="<%=theone.getLiterTitle() %>" autofocus="">
							</td>
						</tr>
						
						
						<tr>
							<td width="100">작품 설명:</td>
							<td>
							<input type="text" name="literContents" size="10" value="<%=theone.getLiterContents() %>" autofocus="">
							</td>
						</tr>
						<tr>
							<td width="100">작품 분류 :</td>
							<td><input type="text" name="literSort" size="10" value="<%=theone.getLiterSort() %>" autofocus="">
							</td>
						</tr>
						<tr>
							<td width="100">지원자의 경력 :</td>
							<td><input type="text" name="literCareer" value="<%=theone.getLiterCareer() %>" size="20"></td>
						</tr>
						<tr>
							<td width="100">제작기간 :</td>
							<td>
							<select name="literProductionDate">
								<option value="<%=theone.getLiterProductionDate()%>" selected><%=theone.getLiterKey() %></option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</select>
							
							일</td>
						</tr>
						<tr>
							<td width="100">제출일 :</td>
							<td><input type="date" name="literProductionDateS" size="20" value="<%=theone.getLiterCareer() %>"></td>
						</tr>
						<tr>
							<td width="100">회원번호:</td>
							<td><input type="text" name="mKey" size="20" value="<%=theone.getmKey() %>" ></td>
						</tr>
						<tr>
							<td width="100">파일:</td>
							<td><input type="text" name="fileKey" size="20" value="<%=theone.getFileKey()%>"></td>
						</tr>
				</table>
				<br>
				<input type="submit" value="수정하기" onclick="check()">
				</form>
				
		</div>
	</div>




	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>