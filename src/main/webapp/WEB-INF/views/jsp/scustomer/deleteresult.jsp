<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
if(!${empty loginid}){ //empty 연산자는 비어있냐고 물어보는거/로그인 성공했으면 empty customer는 false 
	
	alert('비밀번호를 다시 확인해주세요');
	location.href="deletemember";
}else{
	alert('탈퇴하였습니다');
	opener.location.href="../board";
	window.close();
	
}
</script>
</head>
<body>

</body>
</html>