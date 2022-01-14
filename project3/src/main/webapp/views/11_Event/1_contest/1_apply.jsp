<%@page import="literacyContest.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>신춘문예</title>
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<style>
.literapplytab{
	width : 1000px;
	height : 600px;
	border: 3px solid yellow;
	font-size: 20px;
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


input[type=submit]{
	width: 500px;
	height: 100px;
	font-size: 60px;
	margin: 30px;
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


LiteraryContestDAO dao = new LiteraryContestDAO();
dao.insertlt(new LiteraryContestVO(
		literKey,literTitle,literContents,
		literSort,literCareer,
		literProductionDate,literSubmissionDateS,
		mKey, fileKey));

System.out.println(literSubmissionDateS);
%>

	<div class="contents">
		<div class="cards">
			<h1>제 1회 판타지 빌리지 신춘문예 공모서</h1>
			<hr style="border:3px solid yellow; margin:30px;">
			<form>
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
							<td><input type="text" name="literKey" size="10" autofocus="">
							</td>
						</tr>
						<tr>
							<td width="100">작품 제목 :</td>
							<td><input type="text" name="literTitle" size="10" autofocus="">
							</td>
						</tr>
						
						
						<tr>
							<td width="100">작품 설명:</td>
							<td>
							<input type="text" name="literContents" size="10" autofocus="">
							</td>
						</tr>
						<tr>
							<td width="100">작품 분류 :</td>
							<td><input type="text" name="literSort" size="10" autofocus="">
							</td>
						</tr>
						<tr>
							<td width="100">지원자의 경력 :</td>
							<td>
								<select  name="literCareer">
								<option value="1년">1년</option>
								<option value="2년">2년</option>
								<option value="3년">3년</option>
								<option value="4년">4년</option>
								<option value="5년">5년</option>
							</select>
							
							</td>
						</tr>
						<tr>
							<td width="100">제작기간 :</td>
							<td>
							<select  name="literProductionDate">
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
							<td>
								<input type="text" name="literSubmissionDateS" size="10" autofocus="" placeholder="YYYY/MM/DD">
							</td>
						</tr>
						<tr>
							<td width="100">회원번호:</td>
							<td><input type="text" name="mKey" size="20"></td>
						</tr>
						<tr>
							<td width="100">파일:</td>
							<td><input type="text" name="fileKey" size="20"></td>
						</tr>
				</table>
				<br>
				<input type="submit" value="공모하기" onclick="check()">
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