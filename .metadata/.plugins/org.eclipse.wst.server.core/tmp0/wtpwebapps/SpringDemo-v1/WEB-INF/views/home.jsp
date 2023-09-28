<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        
    </head>
    <body>
        <div class="container">
        	<h1>Product List</h1>
        	<div class="container">
        		<a href="<c:url value='/add'/>" class="btn btn-success">Add Product</a>
        	</div>
        	<table class="table table-responsive table-bordered table-hover mt-2">
        		<thead>
        			<tr>
        				<th>Id</th>
        				<th>Name</th>
        				<th>Price</th>
        				<th>Actions</th>
        			</tr>
        		</thead>
        		<tbody>
        			<c:forEach var="product" items="${products}">
        				<tr>
        					<td>${product.id} </td>
        					<td>${product.name} </td>
        					<td>${product.price} </td>
        					<td>
        						<a href="<c:url value='/edit1/${product.id}'/>" class="btn btn-warning">Edit</a>
        						&nbsp;
        						<a href="<c:url value='/delete1/${product.id}'/>" class="btn btn-danger">Delete</a>
        					</td>
        				</tr>
        			</c:forEach>
        		</tbody>
        	</table>
        </div>
    </body>
</html>