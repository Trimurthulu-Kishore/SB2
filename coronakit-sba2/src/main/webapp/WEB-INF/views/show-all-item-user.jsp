<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Product List</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container-fluid">
		<h2 style="text-align: center; background-color: green">Products
			List</h2>
		<hr>
		<div style="text-align: left;">
			<a href="${pageContext.request.contextPath}/user/home"><input
				type="button" value="User Home"></a>
		</div>
		<div style="text-align: right;">
			<a href="${pageContext.request.contextPath}/logout"><input
				type="button" value="LogOut"></a>
		</div>
		<br />
		<div align="center">
			<c:choose>
				<c:when test="${products==null || products.isEmpty() }">
					<p style="font: normal; font-size: 30px; color: red;">No Products Found!!</p>
				</c:when>
				<c:otherwise>
					<div align="center">
						<div>
							<table border="1" style="width: 100%">
								<thead>
									<tr>
										<th>Product Name</th>
										<th>Product Description</th>
										<th>Product Cost</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${products }" var="product">
										<tr>
											<td>${product.productName }</td>
											<td>${product.productDescription }</td>
											<td>${product.cost }</td>
											<td><a href="${pageContext.request.contextPath}/user/add-to-cart/${product.id }"><button>Add Cart</button></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		<div align="right"><jsp:include page="footer.jsp" /></div>
	</div>
</body>
</html>