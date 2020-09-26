<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Product List</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container-fluid">
		<h1 style="text-align: center;">Store Products List</h1>

		<a href="${pageContext.request.contextPath}/admin/home"><button>Admin
				Home</button></a> <br> <br>
		<div align="center">
			<core:choose>
				<core:when test="${productlist.size() <= 0}">
					<div>
						<h1>No Products In Stock ...!!!</h1>
					</div>
				</core:when>
				<core:otherwise>
					<table border="1" style="width: 100%">
						<tr>
							<th>Product ID</th>
							<th>Product Name</th>
							<th>Product Description</th>
							<th>Product Cost</th>
							<th>Action</th>
						</tr>
						<tbody>
							<core:forEach var="product" items="${productlist}">
								<tr>
									<td>${product.id}</td>
									<td>${product.productName}</td>
									<td>${product.productDescription}</td>
									<td>${product.cost}</td>
									<td><a
										href="${pageContext.request.contextPath}/admin/product-delete/${product.id}"><button>Delete</button></a></td>
								</tr>
							</core:forEach>
						</tbody>
					</table>
				</core:otherwise>
			</core:choose>
		</div>
		<div align="left"><jsp:include page="footer.jsp" /></div>
	</div>
</body>
</html>