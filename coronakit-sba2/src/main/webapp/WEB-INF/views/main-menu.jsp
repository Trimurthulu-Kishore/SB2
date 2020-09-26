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
<title>Main Menu</title>
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
		<h1 style="text-align: center;">Welcome To Store Dashboard</h1>
		<br/>
		<div style="text-align: right;">
			<a href="${pageContext.request.contextPath}/logout"><input
				type="button" value="LogOut"></a>
		</div>

		<br />
		<div class="containerj">
			<div class="center">

				<br /> <br />
				<security:authorize access="hasRole('ADMIN')">

					<a href="${pageContext.request.contextPath}/admin/home"><button
							class="block">VIEW ADMIN DASHBOARD</button></a>
				</security:authorize>

				<security:authorize access="hasRole('USER')">

					<a href="${pageContext.request.contextPath}/user/home"><button
							class="block">VIEW USER DASHBOARD</button></a>
				</security:authorize>
			</div>
		</div>
		<div align="left"><jsp:include page="footer.jsp" /></div>
	</div>
</body>
</html>