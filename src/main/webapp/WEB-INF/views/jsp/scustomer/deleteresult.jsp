<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
if(!${empty loginid}){ //empty �����ڴ� ����ֳİ� ����°�/�α��� ���������� empty customer�� false 
	
	alert('��й�ȣ�� �ٽ� Ȯ�����ּ���');
	location.href="deletemember";
}else{
	alert('Ż���Ͽ����ϴ�');
	opener.location.href="../board";
	window.close();
	
}
</script>
</head>
<body>

</body>
</html>