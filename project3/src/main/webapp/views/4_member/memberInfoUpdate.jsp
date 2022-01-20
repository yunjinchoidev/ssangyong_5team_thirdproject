<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
color:white;
background-color: #051f30; 
}

h1{
font-size: 40pt;
}

input[type=text]{
height:30px;
width:230px;
}

input[name=addfirst]{
height:30px;
width:100px;
}

select{
height:40px;
}

#title{
position:absolute;
width:750px;
left:550px;
top:200px;
}

#updateForm{
position: absolute;
top:350px;
left:725px;
}

#giftForm{
position: absolute;
top:600px;
left:820px;
}

#mychar{
position: absolute;
top:750px;
left:740px;
}

#canclebtn{
position: absolute;
top:1000px;
left:820px;
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
}

#canclebtn:hover{
width:100px;
height:30px;
background-color:#3F3F3F;
color : white;
border:none;
}

#completebtn{
position: absolute;
top:1000px;
left:960px;
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
}

#completebtn:hover{
width:100px;
height:30px;
background-color:#3F3F3F;
color : white;
border:none;
}


#footer{
position:absolute;
width:100%;
height:200px;
top:1200px;
}

</style>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<%
// 컨트롤러에서 받아온 DB의 id, pass
String path = request.getContextPath();

String sessionid = (String)session.getAttribute("ID");
String sessionpass = (String)session.getAttribute("PASSWORD");

String status = (String) request.getAttribute("status");

%>
<script type="text/javascript">
$().ready(function(){
	var form = $('#form').serialize();
	
	// 이메일 select Box 직접 입력 선택 시 함수
	$("#seldirect").hide();
	$("#addsecond").change(function(){
		if($("#addsecond").val()=="direct"){
			$("#addsecond").hide();
			$("#seldirect").show();
		}else{
			$("#addsecond").show();
			$("#seldirect").hide();
		}	
	});
	
	
	
	 $("#canclebtn").click(function () {
         Swal.fire({
             icon: 'confirm',
             title: '회원정보수정 취소',
             text: '취소하시겠습니까?',
             showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: '확인',
			  cancelButtonText: '취소'
         }).then((result) => {
			  if (result.value) {
				  location.replace("mypage.do");
			  }
			  
			})
     });
	 
	 $('#completebtn').on("click", function(){
			if(confirm("회원정보를 수정 하시겠습니까?")==true){
				$.ajax({
					url:'${pageContext.request.contextPath}/memupdate.do',
					type:'post',
					data:form,
					dataType:'json',
					complete:function(data){
						if($("[name=nickname]").val()==""){
							alert('닉네임 입력해주세요');
							return false;
						}else if($("[name=addfirst]").val()==""){
							alert('이메일을 입력해주세요');
							return false;
						}else if($("[name=phone]").val()==""){
							alert('전화번호를 입력해주세요');
							return false;
						}else if($("[name=address]").val()==""){
							alert('주소를 입력해주세요');
							return false;
						}else if($("[name=gifttext1]").val()==""){
							alert('재능을 입력해주세요');
							return false;
						}else if($("[name=potterchar]").val()==""){
							alert('해리포터 캐릭터를 입력해주세요');
							return false;
						}else if($("[name=marvelchar]").val()==""){
							alert('마블 캐릭터를 입력해주세요');
							return false;
						}else if($("[name=lordchar]").val()==""){
							alert('반지의제왕 캐릭터를 입력해주세요');
							return false;
						}else{
				      		alert("회원정보 수정이 완료되었습니다");
				      		location.href="<%=path%>/mypage.do";
						}
						
					}
					
				});
				 
				 
	       }
			
			
		
		});
	
});
</script>
</head>
<body>
	
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->
	
	<div id="title">
	<h1>FantasyVillage 회원정보 수정</h1>
	</div>
	<form id="form">
	<div id="updateForm">
		<table>
			<tr><th>닉네임</th>
			<td><input type="text" name="nickname" /></td>
			</tr>
			<tr><th>이메일</th>
				<td><input type="text" name="addfirst" size="8"> @
				<select name = "addsecond" id="addsecond" style="width:100px;">
					<option value="naver.com">naver.com</option>
					<option value="daum.net">daum.net</option>
					<option value="gmail.com">gmail.com</option>
					<option value="direct">직접입력</option>
				</select>
				<input type="text" id="seldirect" size="9" placeholder="직접입력" /></td>
				</tr>
			<tr>
			<tr><th>전화번호</th>
			<td><input type="text" name="phone" /></td>
			<tr><th>주소</th>
			<td><input type="text" name="address" /></td>
			<tr>
			<th>재능기부참여</th>
			<td><input type="radio" name="giftdona" value="Y" checked="checked">참여 
			<input type="radio" name="giftdona" value="N">미참여</td>
			</tr>
		</table>
		</div>
		
		<div id="giftForm">
			<h2 align="center">나의 재능</h2>
			<table>
				<tr><td><input type="text" name="gifttext1"></td></tr>
			</table>
		</div>
		
		<div id="mychar">
			<h2 style="position: relative;left:130px;">나의 캐릭터</h2>
				<table>
					<tr>
						<th>해리포터</th>
						<td><input type="text" name="potterchar"></td>					
					</tr>
					<tr>
						<th>마블</th>
						<td><input type="text" name="marvelchar"></td>					
					</tr>
					<tr>
						<th>반지의제왕</th>
						<td><input type="text" name="lordchar"></td>					
					</tr>
				</table>
		</div>
		
		<div id="btn">
			<button type="button" id="canclebtn">취소</button>
			<button type="submit" id="completebtn">완료</button>
			<input type="hidden" name=sessionid value=<%=sessionid %>>
			<input type="hidden" name=sessionpass value=<%=sessionpass %>>
		</div>
	</form>
	
	
	<div id="footer">
	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
	</div>
</body>
</html>