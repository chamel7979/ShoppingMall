<!-- 요것을 추가해주어야 글이 나옴 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ page session="false" %> 이거 필요없음--%>
<html>
<head>
<title>Home</title>
<link href="resources/bootstrap-3.3.2/css/bootstrap.min.css"
	rel="stylesheet">

<style type="text/css">
/* GLOBAL STYLES
-------------------------------------------------- */
/* Padding below the footer and lighter body text */

body {
  padding-bottom: 40px;
  color: #5a5a5a;
}


/* CUSTOMIZE THE NAVBAR
-------------------------------------------------- */

/* Special class on .container surrounding .navbar, used for positioning it into place. */
.navbar-wrapper {
  position: absolute;
  top: 0;
  right: 0;
  left: 0;
  z-index: 20;
}

/* Flip around the padding for proper display in narrow viewports */
.navbar-wrapper > .container {
  padding-right: 0;
  padding-left: 0;
}
.navbar-wrapper .navbar {
  padding-right: 15px;
  padding-left: 15px;
}
.navbar-wrapper .navbar .container {
  width: auto;
}


/* CUSTOMIZE THE CAROUSEL
-------------------------------------------------- */

/* Carousel base class */
.carousel {
  height: 500px;
  margin-bottom: 60px;
}
/* Since positioning the image, we need to help out the caption */
.carousel-caption {
  z-index: 10;
}

/* Declare heights because of positioning of img element */
.carousel .item {
  height: 500px;
  background-color: #777;
}
.carousel-inner > .item > img {
  position: absolute;
  top: 0;
  left: 0;
  min-width: 100%;
  height: 500px;
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


/* Featurettes
------------------------- */

.featurette-divider {
  margin: 80px 0; /* Space out the Bootstrap <hr> more */
}

/* Thin out the marketing headings */
.featurette-heading {
  font-weight: 300;
  line-height: 1;
  letter-spacing: -1px;
}


/* RESPONSIVE CSS
-------------------------------------------------- */

@media (min-width: 768px) {
  /* Navbar positioning foo */
  .navbar-wrapper {
    margin-top: 20px;
  }
  .navbar-wrapper .container {
    padding-right: 15px;
    padding-left: 15px;
  }
  .navbar-wrapper .navbar {
    padding-right: 0;
    padding-left: 0;
  }

  /* The navbar becomes detached from the top, so we round the corners */
  .navbar-wrapper .navbar {
    border-radius: 4px;
  }

  /* Bump up size of carousel content */
  .carousel-caption p {
    margin-bottom: 20px;
    font-size: 21px;
    line-height: 1.4;
  }

  .featurette-heading {
    font-size: 50px;
  }
}

@media (min-width: 992px) {
  .featurette-heading {
    margin-top: 120px;
  }
}

.top1 {
	text-align: right;
	color : #5a5a5a;
}

.title {
	text-align: center;
}
</style>

<!-- 
<script src="resources/jquery-3.2.1.min.js"></script> --> 
<script type="text/javascript">
	function checkpassword() {
		window.open("checkpassword", "checkpw", "width=500px, height=300px");
	}
	function deletemember() {
		window.open("deletemember", "deletem", "width=500px, height=300px");
	}
</script>
<link rel="stylesheet" type="text/css" href="resources/style.css"> 

</head>
<body>
	<div class="title">
		<img alt="a" src="resources/logo.png">

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

	
    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1" ></li>
        <li data-target="#myCarousel" data-slide-to="2" ></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="resources/carousel/carousel1.png" alt="First slide">
        </div>
        <div class="item">
          <img class="second-slide" src="resources/carousel/carousel2.png" alt="Second slide">
        </div>
        <div class="item">
          <img class="third-slide" src="resources/carousel/carousel3.jpg" alt="Third slide">
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading"> <span class="text-muted" style="font-size: 45px">도시적 스타일과 합리적인 예산</span></h2>
          <!-- <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p> -->
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="resources/featurette/f1.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading"> <span class="text-muted" style="font-size: 45px">따뜻하고 모던한 스타일로 휴식 공간을 꾸며보세요</span></h2>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" src="resources/featurette/f2.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading"> <span class="text-muted" style="font-size: 45px">안락함 쉼터, 합리적인 가격</span></h2>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="resources/featurette/f3.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <!-- /END THE FEATURETTES -->


      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">상위로 올라가기</a></p>
        <p>&copy; 2018 Joseunghee Company, Inc. &middot;</p>
      </footer>

    </div><!-- /.container -->
    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="resources/bootstrap-3.3.2/js/bootstrap.min.js"></script>


</body>
</html>
