<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Página de Carrinho</title>
</head>
<body>
<h3>Página de Carrinho</h3>
<table cellpadding="1" cellspacing="1" border="1">
		<tr>
			<th>Option</th>
			<th>Id</th>
			<th>Name</th>
			<th>Photo</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Sub Total</th>
		</tr>
		<c:set var = "total" value="0"></c:set>
		<c:forEach var="item" items="${sessionScope.cart }">
		<c:set var = "total" value="${total + item.product.price * item.quantity }"></c:set>
			<tr>
				<td align="center">
					<a href="${pageContext.request.contextPath }/cart/remove/${item.product.id}" 
					                                          onclick="return confirm('Tem certeza?')">Remover</a>
				</td>
			
				<td>${item.product.id }</td>
				<td>${item.product.name }</td>
				<td>
					<img src="${pageContext.request.contextPath }/resources/images/${item.product.photo}"
					                                                                 width="50">
				                                                            
				</td>
				<td>${item.product.price }</td>
				<td>${item.quantity }</td>
				<td>${item.product.price * item.quantity }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="6" align="right">Soma</td>
			<td>${total }</td>
		</tr>
	</table>
	<br>
	<a href="${pageContext.request.contextPath }/produto">Continue Comprando</a>
</body>
</html>