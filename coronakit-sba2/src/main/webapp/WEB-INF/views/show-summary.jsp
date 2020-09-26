<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Final Summary Page</title>

<style>
body {
  font-family: cursive;
}

.glow {
  font-size: 15px;
  color: #fff;
  text-align: center;
  -webkit-animation: glow 1s ease-in-out infinite alternate;
  -moz-animation: glow 1s ease-in-out infinite alternate;
  animation: glow 1s ease-in-out infinite alternate;
}

@-webkit-keyframes glow {
   from {
    text-shadow: 0 0 20px orange, 0 0 20px orange, 0 0 20px #FFD700, 0 0 20px #FFD700, 0 0 20px #FFD700, 0 0 40px #FFD700, 0 0 50px #FFD700;
  }
  
  to {
    text-shadow: 0 0 20px green, 0 0 20px green, 0 0 20px green, 0 0 20px green, 0 0 20px green, 0 0 20px green, 0 0 20px green;
  }
}
</style>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	
	<div class="container-fluid">
		<h1 style="text-align: center;">Order Details</h1>
		<a href="${pageContext.request.contextPath }/user/show-list"><button class="glow">Shop Again...Make A Cart.!!!</button></a>
		<div style="text-align: right;"> <a href="${pageContext.request.contextPath}/logout"><input type="button" value="LogOut"></a></div>
		
		<br>
		<br>
		<c:choose>
			<c:when test="${orderedproducts==null || orderedproducts.isEmpty() }">
				<div align="center" style="font: normal; font-size: 20px; color: red;">No products found!!</div>
			</c:when>
			<c:otherwise>
				<div align="center">
					<div>
						<div>
							<table border="1" style="width: 100%">
								<thead>
									<tr>
										<th style="text-align:center" >Product Name</th>
										<th style="text-align:center">Product Description</th>
										<th style="text-align:center">Product Unit Price</th>
										<th style="text-align:center">Product Quantity</th>
										<th style="text-align:center">Product Total Cost</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${orderedproducts }" var="product">
										<tr>
											<td style="text-align:center" >${product.productName }</td>
											<td style="text-align:center" >${product.productDescription }</td>
											<td style="text-align:center" >${product.cost }</td>
											<c:choose>
												<c:when test="${orderDetils[product.id]==null}">
													<td>0</td>
													<td>0</td>
												</c:when>
												<c:otherwise>
													<td style="text-align:center" >${orderDetils[product.id].quantity}</td>
													<td style="text-align:center" >${orderDetils[product.id].amount}</td>
												</c:otherwise>
											</c:choose>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<br>
						<br/>
						<br/>
						<div>
							<table border="2" style="width: 100%">
								<tr>
									<th style="text-align:center">Address</th>
									<th style="text-align:center">Final Amount</th>
								</tr>
								<tr>
									<td style="text-align:center"> ${address}</td>
									<td style="text-align:center">${totalAmount }</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
		<h3 style="text-align: center;">Thank you !!! Be Safe !!!</h3>
	</div>
</body>
</html>