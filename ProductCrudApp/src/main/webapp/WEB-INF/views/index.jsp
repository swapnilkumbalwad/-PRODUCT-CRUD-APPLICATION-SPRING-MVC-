<html>
<head>
    <%@ include file="./base.jsp"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <style>
        body {
            background-color: #40e0d0; /* Turquoise background color */
            font-family: 'Arial', sans-serif;
            color: #34495e;
            margin: 0;
            padding: 0;
        }
        .container {
            margin-top: 40px;
            max-width: 1200px;
            margin-left: auto;
            margin-right: auto;
            padding: 20px;
        }
        .header-text {
            color: #2c3e50;
            font-size: 2.8rem;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
            margin-bottom: 30px;
            text-align: center;
        }
        .table {
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            margin-top: 30px;
            transition: transform 0.3s ease;
        }
        .table th, .table td {
            text-align: center;
            padding: 18px;
            font-size: 1.15rem;
            color: #34495e;
        }
        .table th {
            background-color: #3498db;
            color: white;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        .table tbody tr:nth-child(even) {
            background-color: #ecf0f1;
        }
        .table tbody tr:hover {
            background-color: #d5dbdb;
            transform: scale(1.03);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }
        .font-weight-bold {
            color: #e67e22;
        }
        .btn-custom {
            background-color: #e74c3c;
            color: white;
            border-radius: 30px;
            padding: 15px 40px;
            font-size: 1.3rem;
            font-weight: bold;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }
        .btn-custom:hover {
            background-color: #c0392b;
            transform: scale(1.1);
            box-shadow: 0 12px 20px rgba(0, 0, 0, 0.2);
        }
        .action-icons i {
            font-size: 1.7rem;
            margin-right: 20px;
            transition: all 0.3s ease;
        }
        .action-icons i:hover {
            transform: scale(1.3);
        }
        .text-danger {
            color: #e74c3c;
        }
        .text-primary {
            color: #3498db;
        }
        .card {
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
            transition: all 0.3s ease;
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="header-text">Welcome to Product App</h1>

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Description</th>
                    <th scope="col">Price</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${products}" var="p">
                    <tr>
                        <th scope="row">${p.id}</th>
                        <td>${p.name}</td>
                        <td>${p.description}</td>
                        <td class="font-weight-bold">&#x20B9; ${p.price}</td>
                        <td class="action-icons">
                            <a href="delete/${p.id}">
                                <i class="fa-solid fa-person-circle-minus text-danger"></i>
                            </a>
                            <a href="update/${p.id}">
                                <i class="fa-solid fa-pen-to-square text-primary"></i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <div class="text-center mt-4">
            <a href="add_product" class="btn btn-custom">Add Product</a>
        </div>
    </div>
</body>
</html>
