<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Página de Produtos</title>
</head>
<body>
	<h3>Página de Produtos</h3>
	<table cellpadding="1" cellspacing="1" border="1">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Photo</th>
			<th>Price</th>
			<th>Buy</th>
		</tr>
		<c:forEach var="product" items="${produtos }">
			<tr>
				<td>${product.id }</td>
				<td>${product.name }</td>
				<td><img src="${pageContext.request.contextPath }/resources/images/${product.photo}" width="50"></td>
				<td>${product.price }</td>
				<td align="center">
					<a href="${pageContext.request.contextPath }/cart/buy/${product.id}">Compre Agora</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>