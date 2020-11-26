<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="resources/bootstrap-3.3.2/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
    #container {
      width: 70%;
      margin: 0 auto;     /* 가로로 중앙에 배치 */
      padding-top: 10%;   /* 테두리와 내용 사이의 패딩 여백 */
    }
     
    #list {
      text-align: center;
    }
   
    #write {
      text-align: right;
    }
     
    /* Bootstrap 수정 */
    .table > thead {
      background-color: #b3c6ff;
    }
    .table > thead > tr > th {
      text-align: center;
    }
    .table-hover > tbody > tr:hover {
      background-color: #e6ecff;
    }
    .table > tbody > tr > td {
      text-align: center;
    }
    .table > tbody > tr > #title {
      text-align: left;
    }
     
    div > #paging {
      text-align: center;
    }
     
    .hit {
      animation-name: blink;
      animation-duration: 1.5s;
      animation-timing-function: ease;
      animation-iteration-count: infinite;
      /* 위 속성들을 한 줄로 표기하기 */
      /* -webkit-animation: blink 1.5s ease infinite; */
    }
     
    /* 애니메이션 지점 설정하기 */
    /* 익스플로러 10 이상, 최신 모던 브라우저에서 지원 */
    @keyframes blink {
      from {color: white;}
      30% {color: yellow;}
      to {color: red; font-weight: bold;}
      /* 0% {color:white;}
      30% {color: yellow;}
      100% {color:red; font-weight: bold;} */
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
function checkcheck(){
	var password = document.getElementById("writePassword").value;
	var pw = document.getElementById("pw").value;
	
	if(password != pw){
		alert("비밀번호가 틀립니다");
		return false;
	}
	
	return true;
}


<%-- function idcheck(){
	//인터셉터로 대체한다
	var loginid = <%= session.getAttribute("loginid")%>;
	var loginid=<%="loginid"%>;
	
	if(loginid == null){
		alert('로그인해주세요');
		location.href = 'gologinform'; //로그인폼으로 이동
		return false;
		
	}
	
	if(loginid != null){
		return true;
	}
} --%>
</script>
</head>
<body>

	<!-- 메뉴 -->
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

<div id="container">
    <div id="list"><h1>고객문의</h1></div>
    <div>
      <table class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <th width="10%">번호</th>
            <th width="50%">제목</th>
            <th width="10%">작성자</th>
            <th width="20%">작성일</th>
            <th width="10%">조회</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="list" items="${sList}" varStatus="status">
            <tr>
              <td>${list.boardnum}</td>
              <td id="title">
                <%-- <c:if test="${list.depth > 0}">
                  &nbsp;&nbsp;
                </c:if> --%>
                <%-- <a href="/bbs/content.bbs?articleNumber=${list.boardnum}&pageNum=${pageNum}">${list.title}</a> --%>
                <a href="readBoard?boardnum=${list.boardnum }">${list.title}</a>
                <input type="hidden" value="${list.boardnum }" name="boardnum">
                <c:if test="${list.hits >= 20}">
                  <span class="hit">hit!</span>
                </c:if>
              </td>
              <td>${list.custid}</td>
              <td>${list.inputdate}</td>
              <td>${list.hits}</td>
            <tr>
          </c:forEach>
        </tbody>
      </table>
      <!-- <a href="/board"><input type="button" value="홈으로" class="btn btn-primary" align="left"></a> -->
       <!-- <form action="writeBoard" method="post" onsubmit="return idcheck()"> -->
       <form action="writeBoard" method="post">
		<div id="write"><input type="submit" value="글쓰기" class="btn btn-primary"></div>
	  </form> 
     <%--  <!-- Paging 처리 -->
      <div id="paging">
        ${pageCode}
      </div> --%>
    </div>
  </div>



</body>
</html>