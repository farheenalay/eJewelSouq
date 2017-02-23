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
<style>
#custom-bootstrap-menu.navbar-default .navbar-brand {
    color: rgba(119, 119, 119, 1);
}
#custom-bootstrap-menu.navbar-default {
    font-size: 14px;
    background-color: rgba(194, 172, 46, 1);
    background: -webkit-linear-gradient(top, rgba(240, 232, 168, 1) 0%, rgba(194, 172, 46, 1) 100%);
    background: linear-gradient(to bottom, rgba(240, 232, 168, 1) 0%, rgba(194, 172, 46, 1) 100%);
    border-width: 1px;
    border-radius: 4px;
}
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a {
    color: rgba(119, 119, 119, 1);
    background-color: rgba(248, 248, 248, 0);
}
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a:hover,
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a:focus {
    color: rgba(51, 51, 51, 1);
    background-color: rgba(248, 248, 248, 0);
}
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a,
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a:hover,
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a:focus {
    color: rgba(85, 85, 85, 1);
    background-color: rgba(231, 231, 231, 1);
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
       src="resources/logo.png" height=100px width=130px></a>
   </div>
   <div class="collapse navbar-collapse navbar-menubuilder">
    <ul class="nav navbar-nav navbar-left">
   <li class="active"><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> Home </a></li>
      <li><a href="Regi"><span class="glyphicon glyphicon-pencil"></span> Register </a></li>
      <li><a href="abtus"><span class="glyphicon glyphicon-info-sign"></span> About Us </a></li>
      <li><a href="contact"><span class="glyphicon glyphicon-envelope"></span> Contact Us </a></li>
      <li><a href="Adpage"><span class="glyphicon glyphicon-user"></span> Admin </a></li>
      <li><a href="AddProd"><span class="glyphicon glyphicon-menu-hamburger"></span> Products </a></li>
      <li><a href="Supplier"><span class="glyphicon glyphicon-menu-hamburger"></span> Supplier </a></li>
      <li><a href="Category"><span class="glyphicon glyphicon-menu-hamburger"></span> Category </a></li>
   </ul>
    <div class="col-sm-2 col-md-2 pull-right">
        <form class="navbar-form" role="search">
        <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="q">
        <div class="input-group-btn">
        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
        </div>
        </div>
        </form>
</div>
 <ul class="nav navbar-nav navbar-right">
  <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Log in </a></li></ul>
</div>
</div>
</div>
</nav>
</body>
</html>