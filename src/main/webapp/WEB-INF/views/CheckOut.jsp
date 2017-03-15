<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CheckOut</title>
</head>
<body>
<c:forEach items="${crt }" var="cl">

Cart ID :<c:out value="${cl.cartid}"/><br/>
Cart User: <c:out value="${cl.cartuser}"/><br/>
Product ID: <c:out value="${cl.productid}"/><br/>
Product Name: <c:out value="${cl.prodname}"/><br/>
Product Price: <c:out value="${cl.prodprice}"/><br/>
Quantity: <c:out value="${cl.quantity}"/><br/>
Total:    <c:out value="${cl.carttotal}"/><br/>
    </c:forEach>
    
    <h2>Grand Total =</h2>
</body>
</html>