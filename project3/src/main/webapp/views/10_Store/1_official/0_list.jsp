<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="attachedFileTest.*"
	import="officialStoreTest.*"
	import="yunjinTest.*"
	%>
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
<title>Insert title here</title>
<script src="/javaexp/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="/project3/views/CSS/commoncss.css">
<style>
.lordshopwrap{
	width: 1200px;
	height: 1200px;
	margin: 0 auto;
	padding: 20px;
}

.lordshopchild{
	width: 300px;
	height: 300px;
	border: 3px solid yellow;
	display: inline-block;
	margin: 20px;
	text-decoration: none;
	font-size: 30px;
}

.lordshopchild a{
	text-decoration: none;
	color : red;
	font-size: 20px;
}

.lordshopchild a:hover{
	color : red;
}

.lordshopwrap{
	width: 1200px;
	height: 1200px;
	margin: 0 auto;
	padding: 20px;
}

.lordshopchild{
	width: 300px;
	height: 300px;
	border: 3px solid yellow;
	display: inline-block;
	margin: 20px;
}

body{
background-color: #111111;
}

h1{
text-align:center;
color:white;
}

button{
width:150px;
height:50px;
background-color:rgba(0,0,0,0);
color : skyblue;
border: 1px solid skyblue;
font-weight:bold;
border-top-left-radius: 5px;
border-bottom-left-radius: 5px;
border-top-right-radius: 5px;
border-bottom-right-radius: 5px;
}

button:hover{
width:150px;
height:50px;
background-color:#3F3F3F;
color : white;
border:none;
border-top-left-radius: 5px;
border-bottom-left-radius: 5px;
border-top-right-radius: 5px;
border-bottom-right-radius: 5px;
}

/* 좌측 메뉴바 영역 */
#menubar{
position: fixed;
top:350px;
left:150px;
width:200px;
height:400px;
border: solid grey;
}

/* 지팡이 메뉴 버튼 */
#menustaff{
position:absolute;
left:20px;
}

/* 빗자루 메뉴 버튼 */
#menustick{
position: absolute;
left:20px;
top: 200px;
}

/* 유니폼 메뉴 버튼 */
#menuuniform{
position: absolute;
left:20px;
top: 320px;
}

/* 상품 영역 */
#product{
position: absolute;
top: 300px;
left: 500px;
width:1200px;
height:800px;
}

/* 님부스2000 */
#broom1{
position: absolute;
top:100px;
left:100px;
}

#prod1Info{
position: absolute;
width:200px;
top:350px;
left:150px;
color:white;
}

/* 님부스2001 */
#prod2{
position:absolute;
top:0px;
left:400px;
}

#broom2{
position: absolute;
top:100px;
left:100px;
}

#prod2Info{
position: absolute;
width:200px;
top:350px;
left:150px;
color:white;
}

/* 파이어볼트 */
#prod3{
position:absolute;
top:0px;
left:800px;
}

#broom3{
position: absolute;
top:100px;
left:100px;
}

#prod3Info{
position: absolute;
width:200px;
top:350px;
left:150px;
color:white;
}


#footer{
position:absolute;
width:100%;
top:1000px;
}

input[name=pname]{
	width:400px;
	height: 50px;
	text-align: center;
	font-size: 60px;
}

#searchoffbar p{
	text-align: center;
	font-size: 40px;
}

#show{
margin : 0 auto;
margin-top: 30px;
margin-bottom: 30px;
color : white;
border : 3px solid white;
width : 600px;
}


</style>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){

	$("#schBtn").click(function(){
	});
		
	
	$("[name=officialPname]").on("keyup",function(){
		console.log($("form").serialize());
		$.ajax({
			url:"${contextPath}/deptAjax.do",
			data:"officialPname="+$("[name=officialPname]").val(),
			dataType:"json",
			success:function(dList){
				var listTxt="";
				$.each(dList,function(idx, dept){
					console.log(idx+":"+dept)
					listTxt+="<tr><td>"+dept.officialPname+"</td><td>"+dept.officialInventory+"</td></tr>";
				});
				$("#show").html(listTxt);
			}
		});
	});
	
	
	
	function go(qStr){
		//alert("ajax DB데이터 가져오기");
		$.ajax({
			url:"${contextPath}/deptAjax.do",
			dataType:"json",
			data : qStr,
			success:function(data){
				var deptList = data;
				console.log(data);
				var listTxt = "";
				// $.each(배열, function(index, 단위데이터){})
				$.each(deptList,function(idx, dept){
					console.log(idx+":"+dept)
					listTxt+="<tr><td>"+dept.officialPname+"</td><td>"+dept.officialPname+"</td>"+
						"<td>"+dept.officialPname+"</td></tr>";
				});
				$("h3").append(", 건수:"+deptList.length);
				$("#show").html(listTxt);
			}
		});
	};
			
			
});
</script>
</head>
<body>
	<!-- S헤더 삽입 -->
	<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->

	<!-- S헤더 삽입 -->
	<jsp:include page="/views/10_Store/menu.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->
	
	<script>
AOS.init();
</script>


<div id="menubar">
<h1>메뉴</h1>
<a href="/project3/views/9_Marvel/2_Marvelshop/accessories.jsp">
<button type="button" id="menustaff">마블</button>
</a>
<a href="/project3/views/8_HarryPotter/2_store/store_broom.jsp">
<button type="button" id="menustick">해리포터</button>
</a>
<a href="${contextPath }/oftLord/list.do"></a>
<button type="button" id="menuuniform">반지의제왕</button>	
</div>
	
		<%
			String mid =(String) session.getAttribute("ID");
			System.out.println(mid);
			
			MemberDAO dao = new MemberDAO();
			int mKey = dao.searchId(mid);
			int authNum = dao.searchAuth(mid);
			
			System.out.println("########################");
			System.out.println(mKey);
			
		%>

	<div class="contents">
		<div class="cards">
		<form id="searchoffbar">
			<input type="text" name="officialPname"> <input type="submit" value="검색">
		</form>
		<table id="show">
			<tr><th>물건명</th><th>재고</th></tr>
		</table>
		
		
				<h1> Absolute Ring ship</h1>
				<p> 엄선된 물건들이 있습니다.<br>
				 마음껏 둘러보십시오</p>
				 
				 <input type="button" value="물건 추가" onclick="gogo(<%=authNum%>); gogogo();">
				 <script>
				 function gogo(a){
				 	if(a==2){
				 		confirm("물건을 추가하시겠습니까?");
				 	}
				 	if(a==1){
				 		alert("권한이 없습니다.");
				 		location.href='/project3/oft/list.do';
				 	}
				 	
				 }
				 function gogogo(){
					 location.href='/project3/oft/list.do'
				 }
				 </script>
					<div class="lordshopwrap">
				<c:choose>
					<c:when test="${empty oftList}">
						<div>
							<td colspan="16">등록된 글이 없습니다.</td>
						</div>
					</c:when>
					
					<c:when test="${!empty oftList}">
						<c:forEach var="oftList" items="${oftList}" varStatus="oftNum">
							<div class="lordshopchild"> 
							
								물건명 : ${oftList.officialPname }<br>
									재고 : ${oftList.officialInventory }<br>
								할인률 : ${oftList.officialDiscount }%<br>
								제품 분류 : ${oftList.proCateKey }<br>
								<a href="${contextPath }/oft/view.do?officialKey=${oftList.officialKey}">상품 자세히 보기</a><br>
								<a href="${contextPath }/oft/del.do?officialKey=${oftList.officialKey}">상품 삭제</a><br>
								<a href="${contextPath }/oft/modForm.do?officialKey=${oftList.officialKey}">상품 수정</a>
							</div>
						</c:forEach>
					</c:when>
				</c:choose>
				</div>
		</div>
	</div>





	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
</body>
</html>