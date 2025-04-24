<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="./base.jsp"%>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">

<style>
	/* === Full Page Gradient Background or Image === */
	body {
		margin: 0;
		padding: 0;
		font-family: 'Roboto', sans-serif;
		background: linear-gradient(to right, #74ebd5, #acb6e5); /* 🔁 Gradient */
		/* Uncomment this line if you want an image instead */
		/* background-image: url('images/bg.jpg'); */
		background-size: cover;
		background-position: center;
		background-repeat: no-repeat;
		min-height: 100vh;
		display: flex;
		align-items: center;
		justify-content: center;
	}

	/* === Form Card Styling === */
	.card {
		background-color: #ffffff;
		padding: 40px 30px;
		border-radius: 20px;
		box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
		width: 100%;
		max-width: 550px;
	}

	.card h2 {
		text-align: center;
		color: #2c3e50;
		margin-bottom: 25px;
		font-weight: 600;
	}

	/* === Input Field Styling === */
	label {
		color: #333;
		font-weight: 500;
		margin-bottom: 8px;
		display: block;
	}

	input, textarea {
		width: 100%;
		padding: 12px 14px;
		border: 2px solid #ddd;
		border-radius: 10px;
		background-color: #f0f6ff;
		font-size: 15px;
		transition: all 0.3s ease;
		margin-bottom: 20px;
	}

	input:focus, textarea:focus {
		border-color: #74ebd5;
		background-color: #e8f8ff;
		outline: none;
		box-shadow: 0 0 8px rgba(116, 235, 213, 0.4);
	}

	/* === Buttons === */
	.actions {
		display: flex;
		justify-content: space-between;
	}

	.btn {
		padding: 10px 22px;
		font-size: 14px;
		border: none;
		border-radius: 8px;
		cursor: pointer;
		transition: background 0.3s ease;
		text-decoration: none;
	}

	.btn-primary {
		background-color: #2ecc71;
		color: #fff;
	}

	.btn-primary:hover {
		background-color: #27ae60;
	}

	.btn-secondary {
		background-color: #f1f1f1;
		color: #333;
		border: 1px solid #ccc;
	}

	.btn-secondary:hover {
		background-color: #e1e1e1;
	}
</style>
</head>
<body>

	<div class="card">
		<h2>Add Product Details</h2>
		<form action="handle-product" method="post">
			<div>
				<label for="name">Product Name</label>
				<input type="text" id="name" name="name" placeholder="Product name">
			</div>
			<div>
				<label for="description">Product Description</label>
				<textarea id="description" name="description" rows="4" placeholder="Description"></textarea>
			</div>
			<div>
				<label for="price">Product Price</label>
				<input type="text" id="price" name="price" placeholder="e.g. 499">
			</div>
			<div class="actions">
				<a href="${pageContext.request.contextPath}/" class="btn btn-secondary">Back</a>
				<button type="submit" class="btn btn-primary">Add Product</button>
			</div>
		</form>
	</div>

</body>
</html>
