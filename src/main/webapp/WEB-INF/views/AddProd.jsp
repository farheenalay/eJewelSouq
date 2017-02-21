<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Add Product </title>
<style type="text/css"> 
body {background-image: url("resources/7.jpg");} 
 </style>
</head>
<body>
<jsp:include page="adheader.jsp"></jsp:include>
    <center><h2> Add Product </h2></center>
        <form:form action="" method="post" commandName="addProd">
     <form>
     <div align="center">
     <div class="form-group">
      <label class="col-md-4 control-label" for="Product ID">Product ID:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="id" placeholder="Product ID">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Product Name">Product Name:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="name" placeholder="Product Name">
      </div> <br/> <br/> <br/>
    </div>
    
    <div class="form-group">
      <label class="col-md-4 control-label" for="Product Quantity">Quantity:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="quantity" placeholder="Product Quantity">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Product Price">Price:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="price" placeholder="Product Price">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Manufacturing Date">Manufacturing Date:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="mfg" placeholder="Manufacturing Date">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Product Name">Description:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="description" placeholder="Product Description">
      </div> <br/> <br/> <br/>
    </div>
   <button type="submit" class="btn btn-success">  Add Product  </button>
  </div>
  </form>
</form:form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
            
            
                   