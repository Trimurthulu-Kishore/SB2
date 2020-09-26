<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product to Store</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
.error {
	color: red;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<h1 style="text-align: center;">Product Store</h1>
		<spring-form:form action="${pageContext.request.contextPath}/logout"
			method="POST">
			<input style="float: right" type="submit" value="Logout">
		</spring-form:form>
		<hr />

		<spring:form
			action="${pageContext.request.contextPath}/admin/product-save"
			method="post" modelAttribute="product">
			<div>
				<div>
					<spring:label path="productName">Enter Product Name</spring:label>
				</div>
				<div>
					<spring:input path="productName" />
					<spring:errors path="productName" cssClass="error" />
				</div>
			</div>

			<br>
			<br>

			<div>
				<div>
					<spring:label path="productDescription">Enter Product Description</spring:label>
				</div>
				<div>
					<spring:input path="productDescription" />
					<spring:errors path="productDescription" cssClass="error" />
				</div>
			</div>

			<br>
			<br>

			<div>
				<div>
					<spring:label path="cost">Enter Product Cost</spring:label>
				</div>
				<div>
					<spring:input path="cost" />
					<spring:errors path="cost" cssClass="error" />
				</div>
			</div>

			<br>

			<div>
				<div>
					<input type="submit" value="Add Product">
				</div>
			</div>
		</spring:form>
		<div align="left"><jsp:include page="footer.jsp" /></div>
	</div>
</body>
</html>