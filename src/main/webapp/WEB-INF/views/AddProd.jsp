<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Add Product </title>
</head>
<body>
<jsp:include page="adheader.jsp"></jsp:include>
    <center><h2> Add Product </h2></center>
        <form:form action="" method="post" commandName="addProd">
            
        <form>
<div class="form-group">
      <label for="Product ID">Product ID:</label>
      <input type="text" class="form-control" name="id" placeholder="Product ID">
    </div>
    <div class="form-group">
      <label for="Product Name">Product Name:</label>
      <input type="text" class="form-control" name="name" placeholder="Product Name">
    </div>
    <div class="form-group">
      <label for="Product Name">Description:</label>
      <input type="text" class="form-control" name="description" placeholder="Product Description">
    </div>
    <div class="form-group">
      <label for="Product Quantity">Quantity:</label>
      <input type="text" class="form-control" name="quantity" placeholder="Product Quantity">
    </div>
    <div class="form-group">
      <label for="Product Price">Price:</label>
      <input type="text" class="form-control" name="price" placeholder="Product Price">
    </div>
    <div class="form-group">
      <label for="Manufacturing Date">Manufacturing Date:</label>
      <input type="text" class="form-control" name="mfg" placeholder="Manufacturing Date">
    </div>
    <center><button type="submit" class="btn btn-success">  Add Product  </button></center>
  </form>
</div>
</form:form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
            
            
                   