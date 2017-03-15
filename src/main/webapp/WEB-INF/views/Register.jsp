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
        <form:form action="Register" method="post"  commandName="UserDetails">
            <form>
     <div align="center">
    <div class="form-group">
     <label class="col-md-4 control-label"> Name : </label>
     <div class="col-md-4">
      <input type="text" class="form-control" name="name" >
      <form:errors name="name" cssClass="error"/>
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
     <label class="col-md-4 control-label"> User Name : </label>
     <div class="col-md-4">
      <input type="text" class="form-control" name="userName" >
      <form:errors name="userName" cssClass="error"/>
      </div> <br/> <br/> <br/>
    <div class="form-group">
      <label class="col-md-4 control-label"> Password: </label>
      <div class="col-md-4">
      <input type="password" class="form-control" name="password">
      <form:errors name="password" cssClass="error"/>
      </div> <br/> <br/> <br/>
    </div>
    
    <div class="form-group">
      <label class="col-md-4 control-label"> Email-ID: </label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="email">
      <form:errors name="email" cssClass="error"/>
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label"> Mobile No: </label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="mobile" >
      <form:errors name="mobile" cssClass="error"/>
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label"> Billing Address: </label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="billadd" >
      <form:errors name="billadd" cssClass="error"/>
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label"> Shipping Address: </label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="shipadd" >
      <form:errors name="shipadd" cssClass="error"/>
      </div> <br/> <br/> <br/>
    </div>
     <div class="form-group">
      <label class="col-md-4 control-label"> Zip Code: </label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="zipcode" >
      <form:errors name="zipcode" cssClass="error"/>
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label"> Country: </label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="cntry" >
      <form:errors name="cntry" cssClass="error"/>
      </div> <br/> <br/> <br/>
    </div>
  <center> <button type="submit" class="btn btn-success"> Register </button> </center>
  </div>
  </div>
  </form>
  </form:form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
    