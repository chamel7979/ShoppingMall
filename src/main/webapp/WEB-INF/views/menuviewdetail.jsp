<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="resources/jquery-3.3.1.js"></script>

<link href="resources/bootstrap-3.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
body {
  padding-bottom: 40px;
  color: #5a5a5a;
}
/* MARKETING CONTENT
-------------------------------------------------- */

/* Center align the text within the three columns below the carousel */
.marketing .col-lg-4 {
  margin-bottom: 20px;
  text-align: center;
}
.marketing h2 {
  font-weight: normal;
}
.marketing .col-lg-4 p {
  margin-right: 10px;
  margin-left: 10px;
}
.top1 {
	text-align: right;
	color : #5a5a5a;
}

.title {
	text-align: center;
}
</style>
<script type="text/javascript">


$(document).ready(function() {
	$('#formBtn').on('click', check);
	$('#shoppingBtn').on('click',checkcheck);
});

var sell_price;
var amount;

function init () {
	sell_price = document.form.sell_price.value;
	amount = document.form.amount.value;
	document.form.sum.value = sell_price;
	change();
}

function add () {
	hm = document.form.amount;
	sum = document.form.sum;
	hm.value ++ ;

	sum.value = parseInt(hm.value) * sell_price;
}

function del () {
	hm = document.form.amount;
	sum = document.form.sum;
		if (hm.value > 1) {
			hm.value -- ;
			sum.value = parseInt(hm.value) * sell_price;
		}
}

function change () {
	hm = document.form.amount;
	sum = document.form.sum;

		if (hm.value < 0) {
			hm.value = 0;
		}
	sum.value = parseInt(hm.value) * sell_price;
	
}

function check(){
	
	var amount = $('#amount').val();
	var sum = $('#sum').val();
	
	$('#productamount').val(amount);
	$('#productsum').val(sum); 
	
	var form = $('#productForm');
	form.submit();

}

function checkcheck(){
	
	var amount = $('#amount').val();
	var sum = $('#sum').val();
	
	$('#shoppinglistamount').val(amount);
	$('#shoppinglistsum').val(sum); 
	
	var form = $('#shoppinglistForm');
	form.submit();
	
}

</script>
</head>
<body onload="init();">
<div class="title">
		<a href=/board><img alt="a" src="resources/logo.png"></a>

		<!-- 로그인 했을때 -->
		<c:if test="${loginid != null }">
			<p align="right">${loginid } 님 환영합니다!</p>
			<div class="top1">
				<a href="logout" style="color : #5a5a5a;">로그아웃</a> | 
				<a href="#" onclick="checkpassword()" style="color : #5a5a5a;">개인정보수정</a> | 
				<a href="#" onclick="deletemember()" style="color : #5a5a5a;">회원탈퇴</a>
			</div>
		</c:if>

		<!-- 로그인 하지않았을때 -->
		<c:if test="${loginid == null }">
			<div class="top1">
				<a href="gologinform" style="color : #5a5a5a;">로그인</a> | 
				<a href="gojoinform" style="color : #5a5a5a;">회원가입</a>
			</div>
		</c:if>

	</div>

<br><br>
	<!-- 메뉴 -->
<div class="container" style="width: 100%">
		<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- <a class="navbar-brand">Brand</a> -->
				</div>

				<div class="navbar-collapse collapse" id="navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="menu1">소파/의자/책상</a></li>
					</ul>
					<ul class="nav navbar-nav">
						<li><a href="menu2">침대/매트리스</a></li>
					</ul>
					<ul class="nav navbar-nav">
						<li><a href="menu3">조명</a></li>
					</ul>
					<ul class="nav navbar-nav">
						<li><a href="visit">고객문의</a></li>
					</ul>
					<ul class="nav navbar-nav">
						<li><a href="checkcheck">제품재고확인</a></li>
					</ul>
					<!-- <form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form> -->
					<ul class="nav navbar-nav navbar-right">
						<li><a href="goshoppingbasket"><img align="right" height="20" alt="장바구니" src="resources/2.png">장바구니</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>


<!-- 소파/의자/책상 -->
<c:if test="${category == 'scd' }">
<div class="row featurette">
  <div class="col-md-7">
	<div><img alt="a" src="resources/sofa-chair-desk/c${status }.JPG"></div>
  </div>
  <div class="col-md-5">
    <br><br><br><br>
  <div><label>제품번호:</label> <h2>${p.productserialnumber }</h2></div>
	<div><label>가격:</label> <h2>${p.price }원/개</h2></div>
	<div><label>제품명:</label> <h2>${p.productname }</h2></div>
	<form name="form" method="get">
	<br><br>
<label>수량 :</label> <input type=hidden name="sell_price" value="${p.price }">
<input type="text" name="amount" id="amount" value="1" size="3" onchange="change();">
<input type="button" value=" + " class="btn btn-primary" onclick="add();">
<input type="button" value=" - " class="btn btn-primary" onclick="del();"><br>

<label>금액 :</label> <input type="text" name="sum" id="sum" size="11" readonly>원
</form>
<br><br>
<form action="gobuy" method="get" id="productForm">
<input type="hidden" name="amount" id="productamount">
<input type="hidden" name="price" id="productsum">
<input type="hidden" name="productserialnumber" value="${p.productserialnumber }">
<input type="hidden" name="productname" value="${p.productname }">
<input type="button" class="btn btn-primary" value="주문하기" id="formBtn">
</form>
<form action="putproduct" method="get" id="shoppinglistForm">
<input type="hidden" name="custid" value="${loginid }">
<input type="hidden" name="amount" id="shoppinglistamount">
<input type="hidden" name="price" id="shoppinglistsum">
<input type="hidden" name="productserialnumber" value="${p.productserialnumber }">
<input type="hidden" name="productname" value="${p.productname }">
<input type="button" class="btn btn-primary" value="장바구니담기" id="shoppingBtn">
</form>
  </div>
</div>
</c:if> 




<!-- 침대/매트리스 -->
<c:if test="${category == 'b' }">
<div class="row featurette">
  <div class="col-md-7">
	<div><img alt="a" src="resources/bedding/b${status }.JPG"></div>
  </div>
  <div class="col-md-5">
    <br><br><br><br>
  <div><label>제품번호:</label> <h2>${p.productserialnumber }</h2></div>
	<div><label>가격:</label> <h2>${p.price }원/개</h2></div>
	<div><label>제품명:</label> <h2>${p.productname }</h2></div>
	<form name="form" method="get">
	<br><br>
<label>수량 :</label> <input type=hidden name="sell_price" value="${p.price }">
<input type="text" name="amount" id="amount" value="1" size="3" onchange="change();">
<input type="button" value=" + " class="btn btn-primary" onclick="add();">
<input type="button" value=" - " class="btn btn-primary" onclick="del();"><br>

<label>금액 :</label> <input type="text" name="sum" id="sum" size="11" readonly>원
</form>
<br><br>
<form action="gobuy" method="get" id="productForm">
<input type="hidden" name="amount" id="productamount">
<input type="hidden" name="price" id="productsum">
<input type="hidden" name="productserialnumber" value="${p.productserialnumber }">
<input type="hidden" name="productname" value="${p.productname }">
<input type="button" class="btn btn-primary" value="주문하기" id="formBtn">
</form>
<form action="putproduct" method="get" id="shoppinglistForm">
<input type="hidden" name="custid" value="${loginid }">
<input type="hidden" name="amount" id="shoppinglistamount">
<input type="hidden" name="price" id="shoppinglistsum">
<input type="hidden" name="productserialnumber" value="${p.productserialnumber }">
<input type="hidden" name="productname" value="${p.productname }">
<input type="button" class="btn btn-primary" value="장바구니담기" id="shoppingBtn">
</form>
  </div>
</div>
</c:if> 




<!-- 조명 -->
<c:if test="${category == 'l' }">
<div class="row featurette">
  <div class="col-md-7">
	<div><img alt="a" src="resources/lighting/l${status }.JPG"></div>
  </div>
  <div class="col-md-5">
    <br><br><br><br>
  <div><label>제품번호:</label> <h2>${p.productserialnumber }</h2></div>
	<div><label>가격:</label> <h2>${p.price }원/개</h2></div>
	<div><label>제품명:</label> <h2>${p.productname }</h2></div>
	<form name="form" method="get">
	<br><br>
<label>수량 :</label> <input type=hidden name="sell_price" value="${p.price }">
<input type="text" name="amount" id="amount" value="1" size="3" onchange="change();">
<input type="button" value=" + " class="btn btn-primary" onclick="add();">
<input type="button" value=" - " class="btn btn-primary" onclick="del();"><br>

<label>금액 :</label> <input type="text" name="sum" id="sum" size="11" readonly>원
</form>
<br><br>
<form action="gobuy" method="get" id="productForm">
<input type="hidden" name="amount" id="productamount">
<input type="hidden" name="price" id="productsum">
<input type="hidden" name="productserialnumber" value="${p.productserialnumber }">
<input type="hidden" name="productname" value="${p.productname }">
<input type="button" class="btn btn-primary" value="주문하기" id="formBtn">
</form>
<form action="putproduct" method="get" id="shoppinglistForm">
<input type="hidden" name="custid" value="${loginid }">
<input type="hidden" name="amount" id="shoppinglistamount">
<input type="hidden" name="price" id="shoppinglistsum">
<input type="hidden" name="productserialnumber" value="${p.productserialnumber }">
<input type="hidden" name="productname" value="${p.productname }">
<input type="button" class="btn btn-primary" value="장바구니담기" id="shoppingBtn">
</form>
  </div>
</div>
</c:if> 





      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">상위로 올라가기</a></p>
        <p>&copy; 2018 Joseunghee Company, Inc. &middot;</p>
      </footer>


</body>
</html>