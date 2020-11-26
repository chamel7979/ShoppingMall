<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="resources/bootstrap-3.3.2/css/bootstrap.min.css"
	rel="stylesheet">

<script type="text/javascript">
	function idcheckform() {
		//새 창을 띄운다
		//window.open("","",""); //url(action),이름,새로 열 창의 스타일(width랑 height 속성안주면 창이아니라 탭으로 켜짐)
		//window.open("idcheckform"); //이렇게 하면 창이아니라 새 탭으로 열림
		window.open("idcheckform", "newwin", "width=300, height=200");
	}
	function checkvalue() {
		var custid = document.getElementById("custid").value;
		var password = document.getElementById("password").value;
		var passwordcheck = document.getElementById("passwordcheck").value;
		var name = document.getElementById("name").value;
		var email = document.getElementById("email").value;
		var idno = document.getElementById("idno").value;
		var address = document.getElementById("address").value;

		if (custid == "") {
			alert('아이디를 입력해주세요');
			return false;
		}

		if (password == "") {
			alert('비밀번호를 입력해주세요');
			return false;
		}

		if (passwordcheck == "") {
			alert('비밀번호를 다시 입력해주세요');
			return false;
		}

		if (password != passwordcheck) {
			alert('비밀번호가 다릅니다');
			return false;
		}

		if (name == "") {
			alert('이름을 입력해주세요');
			return false;
		}

		if (email == "") {
			alert('이메일을 입력해주세요');
			return false;
		}

		if (idno == "") {
			alert('주민등록번호를 입력해주세요');
			return false;
		}

		if (address == "") {
			alert('주소를 입력해주세요');
			return false;
		}
		
		alert('가입 되었습니다.');
		return true;
	}
</script>
<style type="text/css">
.container {
	max-width: 960px;
}

.border-top {
	border-top: 1px solid #e5e5e5;
}

.border-bottom {
	border-bottom: 1px solid #e5e5e5;
}

.border-top-gray {
	border-top-color: #adb5bd;
}

.box-shadow {
	box-shadow: 0 .25rem .75rem rgba(0, 0, 0, .05);
}

.lh-condensed {
	line-height: 1.25;
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
</style>
</head>
<body>
	<div class="col-md-8 order-md-1">
		<h4 class="h3 mb-3 font-weight-normal" align="center">회원가입</h4>
		<br>
		<form class="needs-validation" action="joincustomer" method="post"
			onsubmit="return checkvalue()" novalidate>
			<div class="row">
				<div class="col-md-6 mb-3">
					<label>아이디</label><input type="text" class="form-control"
						id="custid" placeholder="ID" name="custid" required>
						
				</div>
				<br>
				<input type="button" value="중복확인" class="btn btn-primary" onclick="idcheckform()">
			</div>
			<br>
			<div class="row">
			<div class="col-md-6 mb-3">
				<label>비밀번호</label> <input type="password" class="form-control"
					id="password" name="password" placeholder="PASSWORD" required>
			</div>
			

			<div class="col-md-6 mb-3">
				<label>비밀번호확인</label> <input type="password" class="form-control"
					id="passwordcheck" name="passwordcheck" placeholder="PASSWORDCHECK" required>
			</div>
			</div>
			<br>
			<div class="row">
				<div class="col-md-6 mb-3">
					<label>이름</label><input type="text" class="form-control"
						id="name" placeholder="NAME" name="name" required>
				</div>
			</div>
			<br>
			<div class="row">
			<div class="col-md-6 mb-3">
				<label>이메일</label>
				<input type="email" class="form-control" id="email"
					placeholder="EMAIL" name="email">
			</div>
			</div>
			<br>
			<div class="row">
			<div class="col-md-6 mb-3">
				<label>주민등록번호</label>
				<input type="text" class="form-control" id="idno"
					placeholder="IDNO" name="idno">
			</div>
			</div>
			<br>
			<div class="mb-3">
				<label>주소</label> <input type="text"
					class="form-control" id="address" name="address" placeholder=ADDRESS
					required>
			</div>
			<br>
	
			<label>개인/사업자</label>
			<br>
			<div class="d-block my-3">
				<div class="custom-control custom-radio">
					<input id="division" name="division" value="personal" type="radio" checked required> 
					<label>개인</label>
					<input id="division" name="division" value="company" type="radio" required> 
					<label>사업자</label>
				</div>
			</div>
			
			<hr class="mb-4">
			<button class="btn btn-primary btn-lg btn-block" type="submit">가입</button>
		</form>


		<footer class="my-5 pt-5 text-muted text-center text-small">
		<p class="mb-1">&copy; Jokea</p>
		</footer>
	</div>

</body>
</html>