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
			<div class="col-5  ">
				<div class="card bg-white bg-opacity-50 border border-1 ">
					<div class="card-header text-center">Bài 2</div>
					<div class="card-body">
						<form action="/Lab_3/mail" method="post" name="fmrdk">
							<div class="row ">
								<div class="col">
									<input type="text"
										class="form-control  border border-black border-1 border-top-0 border-start-0 border-end-0 rounded-0"
										placeholder="From" name="from">

								</div>
							</div>
							<div class="row mt-3">
								<div class="col">
									<input type="text"
										class="form-control border border-black border-1 border-top-0 border-start-0 border-end-0 rounded-0 "
										placeholder="To" name="To">
								</div>
							</div>
							<div class="row mt-3">
								<div class="col">
									<input type="text"
										class="form-control border border-black border-1 border-top-0 border-start-0 border-end-0 rounded-0 "
										placeholder="Subject" name="Subject">
								</div>
							</div>

							<div class="input-group mb-3">
								<span class="input-group-text">Ghi chú</span>
								<textarea name="body" rows="3" cols="30" class="form-control"></textarea>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-danger">
									<i class="bi-check"></i>Gửi
								</button>
							</div>
							<div> ${message} </div>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>


</body>
</html>