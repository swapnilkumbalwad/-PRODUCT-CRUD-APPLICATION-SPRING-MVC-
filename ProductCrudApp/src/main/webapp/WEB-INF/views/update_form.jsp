<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="./base.jsp"%>
<!-- Ensure base.jsp is in the correct directory -->
<style>
    body {
        background-color: #f7f7f7;
        font-family: 'Arial', sans-serif;
        color: #2c3e50;
    }
    h1 {
        color: #3498db;
        font-size: 2.5rem;
        text-align: center;
        margin-bottom: 30px;
        text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.2);
    }
    .container {
        margin-top: 40px;
    }
    .form-group label {
        font-size: 1.2rem;
        font-weight: bold;
        color: #34495e;
    }
    .form-control {
        border-radius: 8px;
        padding: 15px;
        font-size: 1rem;
        border: 1px solid #ccc;
        background-color: #ecf0f1;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        transition: all 0.3s ease;
    }
    .form-control:focus {
        border-color: #3498db;
        background-color: #ffffff;
        box-shadow: 0 0 5px rgba(52, 152, 219, 0.5);
    }
    .btn {
        border-radius: 30px;
        padding: 10px 30px;
        font-size: 1.2rem;
        font-weight: bold;
        transition: all 0.3s ease;
    }
    .btn-outline-danger {
        color: #e74c3c;
        border: 2px solid #e74c3c;
    }
    .btn-outline-danger:hover {
        background-color: #e74c3c;
        color: white;
        transform: scale(1.1);
    }
    .btn-primary {
        background-color: #3498db;
        border: none;
    }
    .btn-primary:hover {
        background-color: #2980b9;
        transform: scale(1.1);
    }
    .btn-container {
        margin-top: 20px;
    }
    .btn-container a {
        margin-right: 20px;
    }
</style>
</head>
<body>
    <div class="container mt-3">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h1 class="text-center mb-3">Change Product Details</h1>
                <form action="${pageContext.request.contextPath}/handle-product" method="post">
                    <input type="hidden" name="id" value="${product.id}"/>
                    <div class="form-group">
                        <label for="name">Product Name</label>
                        <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name" placeholder="Enter the product name here" value="${product.name}">
                    </div>
                    <div class="form-group">
                        <label for="description">Product Description</label>
                        <textarea class="form-control" name="description" id="description" rows="5" placeholder="Enter the product description">${product.description}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="price">Product Price</label>
                        <input type="text" class="form-control" id="price" name="price" placeholder="Enter Product Price" value="${product.price}">
                    </div>
                    <div class="btn-container text-center">
                        <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
                        <button type="submit" class="btn btn-primary">Update</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
