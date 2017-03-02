<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Single Product Info</title>
</head>
<body>
<jsp:include page="userheader.jsp"></jsp:include>

<c:url value="/resources/.jpg" var="url"></c:url>
<c:forEach items="${addProd}" var="prol">

  <center><h1><bold>Information of <c:out value="${prol.name}"/></bold></h1></center>
  
  <br><center><c:url var="src" value="/resources/${prol.id}.jpg"></c:url>
    <img src="${src }" width="50%" height="50%"/><center><br>
    
   <h2> 
    <br><c:out value="${prol.name}"/><br>
    
    <br><c:out value="${prol.price}"/><br>
    
    <br><c:out value="${prol.description}"/><br></h2>
</c:forEach>
<br> <br> <br> <br> <br> <br> 
<button type="submit" class="btn btn-success">  Add to Cart  </button>
<br> <br> <br> <br> <br> <br> <br> <br> <br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>