<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Action</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<style>
.containerj {
	height: 200px;
	position: relative;
	border: 3px solid green;
}

.center {
	margin: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

.block {
	display: block;
	width: 100%;
	border: none;
	background-color: #4CAF50;
	padding: 14px 28px;
	font-size: 16px;
	cursor: pointer;
	text-align: center;
}
</style>
<body>
<div class="container-fluid">
	<h1 style="text-align: center;">Admin Dashboard</h1>
	<div style="text-align: right;">
			<a href="${pageContext.request.contextPath}/logout"><input
				type="button" value="LogOut"></a>
		</div>
<br/>
<br>
	<security:authorize access="hasRole('ADMIN')">

		<div class="containerj">
			<div>
<br>
				

			</div>

			<div class="center">
				<a href="${pageContext.request.contextPath}/admin/product-list"><button
						class="block">View Product</button></a> <br> <br> <a
					href="${pageContext.request.contextPath}/admin/product-entry"><button
						class="block">Add Product</button></a>

			</div>
		</div>

	</security:authorize>
<div align="left"><jsp:include page="footer.jsp" /></div>
</div>
</body>
</html>