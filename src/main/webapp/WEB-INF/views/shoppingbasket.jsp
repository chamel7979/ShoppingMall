<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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

</head>
<body>
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


<table border="1px" align="center">
<tr>
	<th>제품번호</th>
	<th>제품명</th>
	<th>수량</th>
	<th>가격</th>
	<th></th>
</tr>
<c:forEach var="list" items="${slList}" varStatus="status">
<form action="deleteshoppingbasket" method="get">
<tr>
	<td>${list.productserialnumber }<input type="hidden" value="${list.productserialnumber }" name="productserialnumber"></td>
	<td>${list.productname }<input type="hidden" value="${list.productname }" name="productname"></td>
	<td>${list.amount }<input type="hidden" value="${list.amount }" name="amount"></td>
	<td>${list.price }<input type="hidden" value="${list.price }" name="price"></td>
	<input type="hidden" value="${list.custid }" name="custid">
	<td><input type="submit" class="btn btn-primary" value="삭제"></td>
</tr>
</form>
</c:forEach>

</table>
</body>
</html>