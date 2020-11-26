<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="resources/bootstrap-3.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
body{
	background-color: #f5f5f5;
}
</style>
</head>
<body>
<div align="center"><h4>비밀번호 확인</h4></div>
<br>
<form action="confirmupdate" method="post">
	<div class="row" align="center">
	<input type="password" name="password">
	<input type="submit" class="btn btn-primary" value="확인">
	</div>
	<input type="hidden" name="custid" value="${loginid }">
</form>
</body>
</html>