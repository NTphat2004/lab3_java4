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
</head>
<body ng-app="myapp">
	<div class="container content-center">

		<div class="row align-items-center justify-content-center "
			style="height: 100dvh">
			<div class="col-8  ">
				<div class="card text-center">
					<div class="card-header">Thông tin đã đăng ký</div>
					<div class="card-body">
						<ul class="list-group  ">
							<li class="list-group-item border-0 ">Tên đăng nhập :
								${bean.fullname}</li>
							<li class="list-group-item border-0">Ngày sinh :
								${bean.formatedDate}</li>
							<li class="list-group-item border-0">Giới tính :
								${bean.convertGender()}</li>
							<li class="list-group-item border-0">Tình trạng hôn nhân :
								${bean.status()}</li>
							<li class="list-group-item border-0">Quốc tịch :
								${bean.country}</li>
							<li class="list-group-item border-0">Ghi chú : ${bean.notes}</li>
							<li class="list-group-item border-0">Sở thích :
								${bean.convertHobbies()}</li>
						</ul>
						<div class="col">
							<div>Hình ảnh : ${bean.photo_file }</div>
							<img class="img-thumbnail" alt=""
								src="/Lab_3/files/${bean.photo_file}" height="100">

						</div>
					</div>

				</div>
			</div>
		</div>

	</div>

</body>
</html>