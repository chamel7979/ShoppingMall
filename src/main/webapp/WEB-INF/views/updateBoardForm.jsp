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
	<style>
    #container {
      width: 70%;
      margin: 0 auto;     /* ���η� �߾ӿ� ��ġ */
      padding-top: 10%;   /* �׵θ��� ���� ������ �е� ���� */
    }
     
    #list {
      text-align: center;
    }
   
    #write {
      text-align: right;
    }
     
    /* Bootstrap ���� */
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
      /* �� �Ӽ����� �� �ٷ� ǥ���ϱ� */
      /* -webkit-animation: blink 1.5s ease infinite; */
    }
     
    /* �ִϸ��̼� ���� �����ϱ� */
    /* �ͽ��÷η� 10 �̻�, �ֽ� ��� ���������� ���� */
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
  function check(){
	  var title = document.getElementById("title").value;
	  var content = document.getElementById("content").value;
	  
	  if(title == ""){
		  alert('������ �Է��� �ּ���');
		  return false;
	  }
	  
	  if(content == ""){
		  alert('������ �Է��� �ּ���');
		  return false;
	  }
	  
	  return true;
  }
  </script>
</head>
<body>
<!-- �޴� -->
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

	<div class="container">
<table class="table table-bordered">
    <tbody>
        <form action="updateBoard" method="post" onsubmit="return check()" style="display: inline;">
        <c:forEach var="list" items="${sList}" varStatus="status">
            <tr>
                <th>���� </th>
                <td><input type="text" value="${list.title }" name="title" id="title" class="form-control"/></td>
            </tr>
            <tr>
                <th>���̵� </th>
                <td><input type="text" value="${list.custid }" name="custid" id="custid" readonly="readonly" class="form-control"/></td>
            </tr>
            <tr>
                <th>��й�ȣ </th>
                <td><input type="password" value="${list.pw }" name="pw" id="pw" readonly="readonly" class="form-control"/></td>
            </tr>
            <tr>
                <th>���� </th>
                <td><textarea rows="20" cols="30" name="content" id="content" class="form-control">${list.content}</textarea></td>
            </tr>
           <!--  <tr>
                <th>÷������ </th>
                <td><input type="text" placeholder="������ �����ϼ���. " name="filename" class="form-control"/></td>
            </tr> -->
            
            <tr>
                <td colspan="2"> 
                    <input type="button" value="�� ���" class="btn btn-primary pull-right" onclick="javascript:location.href='visit'"/>
					<input type="submit" value="����" class="btn btn-primary pull-left">
				</td>
            </tr>
        </form>
     </c:forEach>
    </tbody>
</table>


</div>

</body>
</html>