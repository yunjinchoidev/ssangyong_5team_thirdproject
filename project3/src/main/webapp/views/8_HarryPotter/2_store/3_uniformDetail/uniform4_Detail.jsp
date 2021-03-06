<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유니폼-슬리데린 교복</title>
<style>
body{
background-color: #111111;
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

/* 상품 사진 */
#prodpic{
position: absolute;
top: 350px;
left:200px;
width:600px;
height:600px;
}

#prodInfo{
position: absolute;
top:350px;
left:1000px;
width:500px;
height:600px;
color:white;
text-align: center;
}

#footer{
position:absolute;
width:100%;
height:200px;
top:1500px;
}
</style>

<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script type="text/javascript">

$(document).ready(function() {
	$('#wishbtn').on("click", function(){
		Swal.fire({
			  title: '장바구니 추가',
			  text: "장바구니에 추가 하시겠습니까?",
			  icon: 'confirm',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: '확인',
			  cancelButtonText: '취소'
			}).then((result) => {
			  if (result.value) {
	              $('form').submit();
			  }
			})
	});

});
</script>

</head>
<body>

<jsp:include page="/views/common/commonheader.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E헤더 삽입 -->
	
<!-- 상품 사진 -->
<div id=prodpic>
<img src="../../media/prodDetailFrame.png" width="100%" height="100%">
<img src="../../media/슬리데린교복.png" width="500px" height="500px"
style="position: absolute; top:50px;left:50px">
</div>



<div id=prodInfo>
<h1>슬리데린교복</h1>
<img src="../../media/storeline.png" width="400px" height="80px">
<h1>43000원</h1>
<img src="../../media/storeline.png" width="400px" height="80px">
<form>
<input type="text" name="cnt" placeholder="수량을 입력해주세요"
style="width:150px;height:30px">
<button id="wishbtn" type="button">장바구니 추가</button>
</form>
</div>



<div id="footer">
	<!-- S푸터 삽입 -->
	<jsp:include page="/views/common/commonfooter.jsp">
		<jsp:param name="name" value="go" />
	</jsp:include>
	<!-- E푸터 삽입 -->
	</div>
</body>
</html>