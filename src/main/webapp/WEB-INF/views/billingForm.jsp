<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="resources/bootstrap-3.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<title>Insert title here</title>
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
		<h4 class="mb-3" align="center">주문서</h4>
		<br>
		<form class="needs-validation" action="buyproduct" method="get" novalidate>
			<div class="row">
				<div class="col-md-6 mb-3">
					<label>제품번호</label> <input type="text"
						class="form-control" name="productserialnumber" readonly="readonly" value="${productserialnumber }"
						required>
				</div>
				<div class="col-md-6 mb-3">
					<label>제품명</label> <input type="text"
						class="form-control" name="productname" readonly="readonly" value="${productname }"
						required>
				</div>
				<div class="col-md-6 mb-3">
					<label>수량</label> <input type="text"
						class="form-control" name="amount" readonly="readonly" value="${amount }"
						required>
				</div>
				<div class="col-md-6 mb-3">
					<label>가격</label> <input type="text"
						class="form-control" name="price" readonly="readonly" value="${price }"
						required>
				</div>
			</div>
			<br><br>
			
			<div class="mb-3">
				<label>아이디</label>
				<div class="input-group">
					<input type="text" class="form-control" name="custid" readonly="readonly"
						value="${loginid }" required>
				</div>
			</div>
			<div class="mb-3">
				<label>이름</label>
				<div class="input-group">
					<input type="text" class="form-control" id="name" name="name" 
						required>
				</div>
			</div>
			<div class="mb-3">
				<label>주소</label> <input type="text"
					class="form-control" id="address" name="address"
					required>
			</div>

			<hr class="mb-4">

			<h4 class="mb-3">결제수단</h4>

			<div class="d-block my-3">
				<div class="custom-control custom-radio">
					<input value="credit" name="payment" type="radio"
						class="custom-control-input" checked required> <label
						class="custom-control-label">신용카드</label>
				</div>
				<div class="custom-control custom-radio">
					<input value="debit" name="payment" type="radio"
						class="custom-control-input" required> <label
						class="custom-control-label">체크카드</label>
				</div>
				<div class="custom-control custom-radio">
					<input value="paypal" name="payment" type="radio"
						class="custom-control-input" required> <label
						class="custom-control-label">무통장입금</label>
				</div>
			</div>
			<hr class="mb-4">
			<button class="btn btn-primary btn-lg btn-block" type="submit">주문하기</button>
		</form>
	

	<footer class="my-5 pt-5 text-muted text-center text-small">
	<p class="mb-1">&copy; Jokea</p>
	</footer>
</div>
</body>
</html>