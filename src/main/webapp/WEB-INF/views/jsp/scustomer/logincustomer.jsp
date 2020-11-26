<%@page import="org.jsp.board.service.SCustomerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap core CSS --> 
    <link href="resources/bootstrap-3.3.2/css/bootstrap.min.css" rel="stylesheet">

	
<style type="text/css">
html,
body {
  height: 100%;
}

body {
  display: -ms-flexbox;
  display: -webkit-box;
  display: flex;
  -ms-flex-align: center;
  -ms-flex-pack: center;
  -webkit-box-align: center;
  align-items: center;
  -webkit-box-pack: center;
  justify-content: center;
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #f5f5f5;
}

.form-signin {
  width: 100%;
  max-width: 330px;
  padding: 15px;
  margin: 0 auto;
}
.form-signin .checkbox {
  font-weight: 400;
}
.form-signin .form-control {
  position: relative;
  box-sizing: border-box;
  height: auto;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
</style>
</head>
<body class="text-center">
 <form class="form-signin" action="login" method="post">
      <img class="mb-4" src="resources/login.png" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
      <label class="sr-only">아이디</label>
      <input type="text" id="custid" name="custid" class="form-control" placeholder="아이디" required autofocus>
      <label class="sr-only">비밀번호</label>
      <input type="password" id="password" name="password" class="form-control" placeholder="비밀번호" required>
      <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
      <p class="mt-5 mb-3 text-muted">&copy; Joseunghee</p>
 </form>
</body>
</html>