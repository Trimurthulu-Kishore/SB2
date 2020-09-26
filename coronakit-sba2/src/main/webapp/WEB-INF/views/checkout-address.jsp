<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Checkout</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container-fluid">
		<h2 style="text-align: center; background-color: green">Order Summary</h2>
		<div style="text-align: right;"><a href="${pageContext.request.contextPath}/logout"><input type="button" value="LogOut"></a></div>	
	<div>
		
		<a href="${pageContext.request.contextPath}/user/show-kit"><button>Show Cart</button></a>
		<a href="${pageContext.request.contextPath}/user/show-list"><button>Add More to Cart</button></a>
	</div>

	
	<div align="center">
	<h1 align="center" style="font: normal; font-size: 20px; color: blue;">Address</h1>
		<table>
			<tr>
				<td>
					<form action="${pageContext.request.contextPath}/user/finalize" method="post">
						<label><textarea name="address" rows="3" cols="40" required></textarea></label> 
						<br> <br>
						<div align="center">
							<button>Order the cart</button>
						</div>
					</form>
				</td>
			</tr>
		</table>
	</div>
	</div>
</body>
</html>