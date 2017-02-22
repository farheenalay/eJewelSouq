<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Category</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css"> 
body {background-image: url("resources/sto.jpg"); width:100%;} 
 </style>
 
 <style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;
}
</style>
</head>
<body>
<jsp:include page="adheader.jsp"></jsp:include>
    <center><h2> Add New Category </h2></center>
        <form:form action="" method="post" commandName="addCat">
           <form>
           <div align="center">
    <div class="form-group">
      <label class="col-md-4 control-label" for="Category ID">Category ID:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="cid" placeholder="Category ID">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Category Name">Category Name:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="cname" placeholder="Category Name">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Description">Description:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="catdes" placeholder="Description">
      </div> <br/> <br/> <br/>
    </div>
    
   <button type="submit" class="btn btn-success">Add Category</button>
  </div>
  </form>
</form:form>



  <caption><strong><bold>Category List</bold></strong></caption>
  <table class="table" style="width:100%">
  <thead class="thead-inverse">
  <tr>
    <th>CategoryId</th>
    <th>CategoryName</th>
    <th>CategoryDescription</th>
    </tr>
  </thead>
  <c:forEach items="${emplist}" var="empl">
  <tr>
    <td><c:out value="${empl.cid}"/></td>
    <td><c:out value="${empl.cname}"/></td>
    <td><c:out value="${empl.catdes}"/></td>
  </tr>
  </c:forEach>
</table>



<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>