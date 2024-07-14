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
<body ng-app="myapp">
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
	<div class="container content-center">

		<div class="row align-items-center justify-content-center "
			style="height: 100dvh">
			<div class="col-8  ">
				<div class="card text-center">
					<div class="card-header">Bài 1</div>
					<div class="card-body">
						<form action="/Lab_3/upload" method="post"
							enctype="multipart/form-data">
							<div class="row">
								<div class="col">
									<div>Hình ảnh : ${img.name }</div>
									<img class="img-thumbnail" alt=""
										src="/Lab_3/files/${img.name}" height="100">

								</div>
								<div class="col">
									<div>Tài liệu :${doc.name}</div>
									<a href="/Lab_3/files/${doc.name}">Tải về</a>


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
