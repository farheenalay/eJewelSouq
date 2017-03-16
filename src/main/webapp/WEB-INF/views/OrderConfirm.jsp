<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Order Confirmation </title>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
    <div class="row">
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            
            <div class="row">
                <div class="text-center">
                    <h1>Order Confirmation</h1>
                    </div>
<div>
<table class="table table-hover">

<tr>
<th>Amount Payable</th>
<th>User name</th>
<th>Mobile</th>
<th>Email</th>
<th>Shipping Address</th>
<th>Billing Address</th>
				
			</tr>
<c:forEach var="ad" items="${UserInfo}">
<tr>
<td>${crtTot}</td>
<td>${ad.userName}</td>
<td>${ad.mobile}</td>
<td>${ad.email}</td>
<td>${ad.shipadd}</td>
<td>${ad.billadd}, ${ad.zipcode}, ${ad.cntry}</td>
</tr>
</c:forEach>			
</table>
</div></div></div></div></div>
<br/>
<center><a href="ViewProd" class="btn btn-danger btn-lg"><span class="glyphicon glyphicon-remove"></span> Cancel Order </a>
<a href="Payment" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-ok"></span> Payment </a></center>
<br/><br/><br/><br/><br/>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>