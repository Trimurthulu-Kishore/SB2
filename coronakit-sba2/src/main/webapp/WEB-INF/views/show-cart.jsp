<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Shoppting Cart </title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container-fluid">
		<h2 style="text-align: center; background-color: green">Shopping Cart</h2>
		<br> <a href="${pageContext.request.contextPath }/user/show-list"><button>Add More to Cart</button></a>
		<div style="text-align: right;"><a href="${pageContext.request.contextPath}/logout"><input type="button" value="LogOut"></a>
		</div>
		<br> <br>
		<div align="center">
			<c:choose>
				<c:when test="${products==null || products.isEmpty() }">
					<div align="center" style="font: normal; font-size: 20px; color: red;">Cart is Empty ...Add Product!!</div>
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
										<th>Product Quantity</th>
										<th>Product Total Cost</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${products }" var="product">
										<tr>
											<td>${product.productName }</td>
											<td>${product.productDescription }</td>
											<td>${product.cost }</td>
											<c:choose>
												<c:when test="${cart[product.id]==null}">
													<td>0</td>
													<td>0</td>
												</c:when>
												<c:otherwise>
													<td>${cart[product.id].quantity}</td>
													<td>${cart[product.id].amount}</td>
												</c:otherwise>
											</c:choose>
											<td><a
												href="${pageContext.request.contextPath}/user/delete/${product.id }"><button>Delete</button></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<br> <a href="${pageContext.request.contextPath}/user/checkout"><button>Check Out the Cart</button></a>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		<div align="right"><jsp:include page="footer.jsp" /></div>
	</div>
</body>
</html>