<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- successful -->
 ${list} 

hello
<%-- <form:form action="asd" > --%>

<table>

<c:forEach items="${productList.products}" var="product" varStatus="status">
		<td>
			Product : ${product.product_Name}<BR>
			Price : ${product.price}<BR>
 			Stock :${product.stock}<BR>
<!-- 		<input type="submit" value="Add to Cart" name=${product.product_Name}/><BR><BR> -->
<!-- 		<input type="submit" value="View Details" name=${product.product_Name}/> -->
<%-- 	<a href="/Shopping_Cart/details?id=${product.product_Name}></a> --%>
	<a href="/Shopping_Cart/details?id=<c:out value="${product.product_Name}"> </c:out>"><input type="submit" value="Add to Cart"/> </a>
		</td>
	</c:forEach>
</table>

<%-- </form:form> --%>
</body>
</html>