<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
</head>
<style>
 .navbar-custom {
  background-color: #c4b94a;
  border-color: #b3a83a;
  background-image: -webkit-gradient(linear, left 0%, left 100%, from(#d1c870), to(#c4b94a));}
.navbar-brand {
  padding: 15px;
}
.navbar-brand>img {
  height: 100px;
  padding: 100px;
  width: auto;
}
    </style>
</head>
<body>
<nav class="navbar navbar-custom">
  <div class="container-fluid">
    <div class="navbar-header">
    
      <class="navbar-brand brand-name">
       <a href="index"><img class="img-responsive2"       
       src="resources/mylogo.png" height=100px width=130px></a>
   </div>
    <ul class="nav navbar-nav navbar-center">
   <li class="active"><a href="index"><span class="glyphicon glyphicon-home"></span>Home</a></li>
      <li><a href=".jsp"><span class="glyphicon glyphicon-menu-down"></span>Products</a></li>
      <li><a href="Regstr"><span class="glyphicon glyphicon-pencil"></span>Register</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span>Log in</a></li>
      <li><a href="abtus"><span class="glyphicon glyphicon-info-sign"></span>About Us</a></li>
      <li><a href="contact"><span class="glyphicon glyphicon-envelope"></span>Contact Us</a></li>  
    </ul>
  </div>
  <form class="navbar-form navbar-right" role="search">
  <div class="form-group">
    <input type="text" class="form-control" placeholder="Search">
  </div>
  <button type="submit" class="btn btn-default">Search</button>
</form>
</nav>

</body>
</html>