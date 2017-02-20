<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
<style type="text/css"> 
body {background-image: url("resources/bki.jpg");} 
 </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
    <center><h2> Registration </h2></center>
        <form:form action="" method="post" commandName="userForm">
            <form>
     <div class="form-group">
      <label for="UserName"> User Name : </label>
      <input type="text" class="form-control" name="username" placeholder="User Name">
    </div>
    <div class="form-group">
      <label for="Password"> Password: </label>
      <input type="password" class="form-control" name="password" placeholder="Create Password">
    </div>
    <div class="form-group">
      <label for="Email-ID"> Email-ID: </label>
      <input type="text" class="form-control" name="email" placeholder="Email-ID">
    </div>
  <center> <button type="submit" class="btn btn-success"> Register </button> </center>
  </form>
  </form:form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
    