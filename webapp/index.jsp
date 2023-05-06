<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Image Operations</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body class="bg-white">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-body">
						<p class="text-center fs-3">Image Operations</p>
						<form action="UploadFile" method="post" enctype="multipart/form-data">
							<div class="mb-3">
								<label>Image</label> <input type="file" class="form-control"
									name="file">
							</div>
							
							<div class="mb-3">
								<label>remark</label> <input type="text" class="form-control"
									name="description">
							</div>
							
							<div class="mb-3">
								<label>Product name: </label> <input type="text"
									class="form-control" name="product_name">
							</div>
							<div class="mb-3">
								<label>Product Price: </label> <input type="text"
									class="form-control" name="price">
							</div>
							<div class="mb-3">
								<label>Category</label> <input type="text" class="form-control"
									name="category">
							</div>
							<div class="text-center">
								<button class="btn btn-primary mt-3" type="submit">Submit</button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>


		<table class="table mt-4">
			<thead>
				<tr>
					<th scope="col">image</th>
					<th scope="col">remark</th>
					
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Mark</td>
					
				</tr>
				
			</tbody>
		</table>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>