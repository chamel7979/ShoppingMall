<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<div align="center"><h1>소파/의자/책상</h1></div>
<br><br>
      
      <div class="row" align="center">
      <c:forEach var="list" items="${scdList}" varStatus="status">
      
      <form action="goviewdetail" method="get">
        <div class="col-lg-4">
          <img src="resources/sofa-chair-desk/c${status.count }.JPG" alt="a" width="250" height="250">
          <h2>${list.productname }</h2>
          <p>${list.price }원 / 개</p>
          <p><input class="btn btn-default" type="submit" value="View details &raquo;"></p>
        </div>
        <input type="hidden" name="status" value="${status.count }">
        <input type="hidden" name="category" value="${list.category }">
        <input type="hidden" name="productserialnumber" value="${list.productserialnumber }">
        <input type="hidden" name="price" value="${list.price }">
        <input type="hidden" name="stock" value="${list.stock }">
        <input type="hidden" name="location" value="${list.location }">
        <input type="hidden" name="productname" value="${list.productname }">    
      </form>
      
      </c:forEach>
      <div>

       <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">상위로 올라가기</a></p>
        <p class="pull-left">&copy; 2018 Joseunghee Company, Inc. &middot;</p>
      </footer>
      
</body>
</html>