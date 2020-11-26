<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
if(!${empty customer}){ //empty 연산자는 비어있냐고 물어보는거/로그인 성공했으면 empty customer는 false 
	alert('비밀번호 확인 업데이트 화면으로 이동');
	opener.location.href="goupdateform";
	window.close();
}else{
	alert('비밀번호를 다시 확인해주세요');
	location.href="checkpassword";
}
</script>
</head>
<body>

</body>
</html>