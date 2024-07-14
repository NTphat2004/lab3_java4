<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script src="https://code.angularjs.org/1.8.2/angular-route.min.js"></script>
<script>
	var app = angular.module("myapp", []);
</script>
</head>
<body ng-app="myapp"
	style="background-image: linear-gradient(to right bottom, #6d94d0, #238cad, #1f7d7e, #3d6a53, #4c5537);">
	<div class="container">
		<nav class="navbar navbar-expand-lg bg-primary rounded">
			<div class="container-fluid">
				<a class="navbar-brand" href="/Lab_2/views/index.jsp">Lab 1</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/Lab_2/tam-giac/bai1">Bài 1</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/Lab_2/dangky">Bài 2</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/Lab_2/dangky2">Bài 3</a></li>
						<li class="nav-item"><a class="nav-link" href="/Lab_2/bai4">Bài
								4</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="container content-center ">

		<div class="row align-items-center justify-content-center "
			style="height: 100dvh">
			<div class="col-8  ">
				<div class="card  border border-1 ">
					<div class="card-header text-center">Đăng nhập</div>
					<div class="card-body">
						<form action="/Lab_3/dangnhap2" method="post" name="fmrdk">
							<em>${message}</em>
							<div class="row ">
								<div class="col">
									<input type="text"
										class="form-control  border border-black border-1 border-top-0 border-start-0 border-end-0 rounded-0"
										placeholder="Tên tài khoản" name="username" value="${u}">
									<em class="text-danger" ng-show="fmrdk.username.$invalid">Nhập
										tên đăng nhập !</em>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col">
									<input type="password"
										class="form-control border border-black border-1 border-top-0 border-start-0 border-end-0 rounded-0 "
										placeholder="Mật khẩu" name=password value="${p}"> <em
										class="text-danger" ng-show="fmrdk.password.$invalid">Nhập
										mật khẩu</em>
								</div>
							</div>
							<div class=" w-50 form-check text-start ">
								<input class="form-check-input  " type="checkbox"
									name="remember" id="flexCheckDefault"> <label
									class="form-check-label" for="flexCheckDefault"> Nhớ
									mật khẩu </label>
							</div>

							<div class="text-center">
								<button ng-disabled="fmrdk.$invalid" type="submit"
									class="btn btn-danger">
									<i class="bi-check"></i>Đăng nhập
								</button>
							</div>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	</div>

</body>
</html>