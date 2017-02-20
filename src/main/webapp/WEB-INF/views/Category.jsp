<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Category</title>
</head>
<body>
<jsp:include page="adheader.jsp"></jsp:include>
    <center><h2> Add New Category </h2></center>
        <form:form action="" method="post" commandName="addCat">
           <form>
<div class="form-group">
      <label for="Category ID">Category ID:</label>
      <input type="text" class="form-control" name="cid" placeholder="Category ID">
    </div>
    <div class="form-group">
      <label for="Category Name">Category Name:</label>
      <input type="text" class="form-control" name="cname" placeholder="Category Name">
    </div>
    <div class="form-group">
      <label for="Description">Description:</label>
      <input type="text" class="form-control" name="catdes" placeholder="Description">
    </div>
    
    <button type="submit" class="btn btn-success">Add Category</button>
  </form>
</div>
</form:form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>