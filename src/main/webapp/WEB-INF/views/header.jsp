<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
#custom-bootstrap-menu.navbar-default .navbar-brand {
    color: rgba(119, 119, 119, 1);
}
#custom-bootstrap-menu.navbar-default {
    font-size: 16px;
    background-color: rgba(194, 172, 46, 1);
    background: -webkit-linear-gradient(top, rgba(240, 232, 168, 1) 0%, rgba(194, 172, 46, 1) 100%);
    background: linear-gradient(to bottom, rgba(240, 232, 168, 1) 0%, rgba(194, 172, 46, 1) 100%);
    border-width: 1px;
    border-radius: 4px;
}
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a {
    color: black;
    background-color: rgba(248, 248, 248, 0);
}
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a:hover,
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a:focus {
    color: black;
    background-color: rgba(248, 248, 248, 0);
}

#custom-bootstrap-menu.navbar-default .navbar-toggle {
    border-color: #ddd;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle:hover,
#custom-bootstrap-menu.navbar-default .navbar-toggle:focus {
    background-color: #ddd;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle .icon-bar {
    background-color: #888;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle:hover .icon-bar,
#custom-bootstrap-menu.navbar-default .navbar-toggle:focus .icon-bar {
    background-color: #c2ac2e;
}
</style>
</head>
<body>
<nav class="navbar navbar-default">
<div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
    <class="navbar-brand brand-name">
       <a href="index.jsp"><img class="img-responsive2"       
       src="resources/logo.png" height=80px width=130px align="left"></a>
   </div>
   <div class="collapse navbar-collapse navbar-menubuilder">
   <ul class="nav navbar-nav navbar-left">
   <li align="center" class="active"><a href="index.jsp"><span class="glyphicon glyphicon-home fa-2x"></span><strong> Home </strong></a></li>
      <li><a href="abtus"><span class="glyphicon glyphicon-info-sign fa-2x" ></span><strong> About Us </strong></a></li>
      <li><a href="contact"><span class="glyphicon glyphicon-envelope fa-2x"></span><strong> Contact Us </strong></a></li>
      <li><a href="ViewProd"><span class="glyphicon glyphicon-th-large fa-2x"></span><strong> View Products </strong></a></li>
  </ul>
   
   <ul class="nav navbar-nav navbar-right">
<c:choose>
 <c:when test="${UserLoggedIn}">
 <li><h3><strong><center>Welcome <c:out value="${UserName}"></c:out></center></strong></h3></li>
 <li><a href="perform_logout"><span class="glyphicon glyphicon-log-in fa-2x"></span><strong> LogOut </strong></a></li>
<strong><c:out value="${cnt}"></c:out></strong>
 <li><a href="showCart"><span class="glyphicon glyphicon-shopping-cart fa-3x"></span></a>
</li></ul> <br/> <br/>

</c:when>
  <c:otherwise>
     <li><a href="Register"><span class="glyphicon glyphicon-pencil fa-2x"></span><strong> Register </strong></a></li>
     <li><a href="Login"><span class="glyphicon glyphicon-log-in fa-2x"></span><strong> Login </strong></a></li>
  </c:otherwise>
</c:choose>

  
</div>
</div>
</div>
</nav>
</body>
</html>