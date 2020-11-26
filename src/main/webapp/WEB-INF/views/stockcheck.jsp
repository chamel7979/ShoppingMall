<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="resources/style.css" type="text/css" rel="stylesheet">
<link href="resources/bootstrap-3.3.2/css/bootstrap.min.css" rel="stylesheet">
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
function check(){
	var productserialnumber = $('#productserialnumber').val();
	var location = $('#location').val();
	
	if(productserialnumber == ""){
		alert('��ǰ ��ȣ�� �Է����ּ���');
		return false;
	}
	
	if(location == ""){
		alert('������ ������ �ּ���');
		return false;
	}
	
	return true;
}
</script>
</head>
<body>
<div class="title">
		<a href=/board><img alt="a" src="resources/logo.png"></a>

		<!-- �α��� ������ -->
		<c:if test="${loginid != null }">
			<p align="right">${loginid } �� ȯ���մϴ�!</p>
			<div class="top1">
				<a href="logout" style="color : #5a5a5a;">�α׾ƿ�</a> | 
				<a href="#" onclick="checkpassword()" style="color : #5a5a5a;">������������</a> | 
				<a href="#" onclick="deletemember()" style="color : #5a5a5a;">ȸ��Ż��</a>
			</div>
		</c:if>

		<!-- �α��� �����ʾ����� -->
		<c:if test="${loginid == null }">
			<div class="top1">
				<a href="gologinform" style="color : #5a5a5a;">�α���</a> | 
				<a href="gojoinform" style="color : #5a5a5a;">ȸ������</a>
			</div>
		</c:if>

	</div>

<br><br>
<!-- �޴� -->
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
						<li><a href="menu1">����/����/å��</a></li>
					</ul>
					<ul class="nav navbar-nav">
						<li><a href="menu2">ħ��/��Ʈ����</a></li>
					</ul>
					<ul class="nav navbar-nav">
						<li><a href="menu3">����</a></li>
					</ul>
					<ul class="nav navbar-nav">
						<li><a href="visit">������</a></li>
					</ul>
					<ul class="nav navbar-nav">
						<li><a href="checkcheck">��ǰ���Ȯ��</a></li>
					</ul>
					<!-- <form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form> -->
					<ul class="nav navbar-nav navbar-right">
						<li><a href="goshoppingbasket"><img align="right" height="20" alt="��ٱ���" src="resources/2.png">��ٱ���</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

<form action="gostockcheck" onsubmit="return check()">
<div align="center"><h1>��ǰ��� Ȯ��</h1></div>
<hr>
<div align="center"><h3>��ǰ�˻�</h3></div>
<br><br>
<div align="center">
<label>��ǰ ��ȣ </label><input type="text" name="productserialnumber" id="productserialnumber">
<label>���� ���� </label>
<select id="location" name="location">
	<option value="s">����</option>
	<option value="b">��õ</option>
</select>
<input type="submit" value="�˻�" class="btn btn-primary">
</div>
</form>

<c:forEach var="list" items="${pList}" varStatus="status">
<c:if test="${pList != null }">
<div align="center"><label>��ǰ ��ȣ : </label>${list.productserialnumber}</div>
<c:if test="${list.location == 'b'}">
<div align="center"><label>���� :  </label>��õ</div>
</c:if>
<c:if test="${list.location == 's'}">
<div align="center"><label>���� :  </label>����</div>
</c:if>
<div align="center"><label>��ǰ�� :  </label>${list.productname}</div>
<div align="center"><label>��� :  </label>${list.stock}</div>
</c:if>
</c:forEach>

<%-- <c:if test="${pList == null }">
<div align="center">�˻� ����� �����ϴ�</div>
</c:if> --%>


</body>
</html>