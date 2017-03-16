<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Confirmation</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css"> 
body {
    margin-top: 20px;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
    <div class="row">
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            
            <div class="row">
                <div class="text-center">
                    <h1>Confirmation</h1>
                    </div>
                
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Product Name</th>
                            <th>Quantity</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        <c:forEach items="${crt }" var="cl">
                            <td class="col-md-9"><em><c:out value="${cl.prodname}"/></em></h4></td>
                            <td class="col-md-1" style="text-align: center"> <c:out value="${cl.quantity}"/></td>
                            <td class="col-md-1 text-center"><c:out value="${cl.prodprice}"/></td>
                            <td class="col-md-1 text-center"><c:out value="${cl.carttotal}"/></td>
                            </tr>
                        <c:set var="grandTotal" value="${grandTotal + cl.carttotal }"></c:set>
                        </c:forEach>
        <tr><td class="text-right"><h4><strong>Amount Payable:</strong></h4> </td> <td><h4><strong>INR ${grandTotal}</strong></h4></td>
                            </tr></tbody>
        </table>
        </div>
        </div>
    </div>
    </div>
    <center><a href="#" class="btn btn-info btn-lg"><span class="glyphicon glyphicon-ok"></span> Confirm My Order </a></center>
    <br/><br/><br/><br/><br/><br/>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>