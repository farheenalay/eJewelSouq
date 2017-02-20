<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Supplier</title>
</head>
<body>
<jsp:include page="adheader.jsp"></jsp:include>
    <center><h2>Add Supplier</h2></center>
        <form:form action="" method="post" commandName="addSupp">
           <form>
<div class="form-group">
      <label for="Supplier Name">Supplier Name:</label>
      <input type="text" class="form-control" name="sname" placeholder="Supplier Name">
    </div>
    <div class="form-group">
      <label for="Supplier Description">Description:</label>
      <input type="text" class="form-control" name="sdescription" placeholder="Description">
    </div>
    <center><button type="submit" class="btn btn-success">Add Supplier</button></center>
  </form>
</div>
</form:form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>