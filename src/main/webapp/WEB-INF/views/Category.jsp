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
body {background-image: url("resources/yyy.jpg"); width:100%;} 
 </style>
 <style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: center;
    padding: 8px;
}

tr{background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
</style>
</head>
<body>
<jsp:include page="adheader.jsp"></jsp:include>
    <center><h2> Add New Category </h2></center>
    <c:set var="pst" scope="session" value="${editing}"/>
    <c:choose>
    <c:when test="${pst==0}">
        <form:form action="Category" method="post" commandName="addCat">
           <form>
           <div align="center">
    <div class="form-group">
      <label class="col-md-4 control-label" for="Category ID">Category ID:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="cid" value="${catData.cid}" >
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Category Name">Category Name:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="cname" value="${catData.cname}">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Description">Description:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="catdes" value="${catData.catdes}">
      </div> <br/> <br/> <br/>
    </div>
    <br/> <br/> <br/> <br/>
   <button type="submit" class="btn btn-success">Add Category</button>
  </div>
  </form>
</form:form>
</c:when>
<c:otherwise>
 <form:form action="editCategory" method="post" commandName="addCat">
           <form>
           <div align="center">
    <div class="form-group">
      <label class="col-md-4 control-label" for="Category ID">Category ID:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="cid" value="${catData.cid}" >
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Category Name">Category Name:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="cname" value="${catData.cname}">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Description">Description:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="catdes" value="${catData.catdes}">
      </div> <br/> <br/> <br/>
    </div>
    <br/> <br/> <br/> <br/>
   <button type="submit" class="btn btn-success">Edit Category</button>
  </div>
  </form>
</form:form>
</c:otherwise>
</c:choose>

<br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/>
<h2 style="background-color:rgb(255, 255, 255)"><center><bold> Category List </bold></center></h2>
<table class="table table-bordered">
  <thead>
   <tr>
    <th><center>Category Id</center></th>
    <th><center>Category Name</center></th>
    <th><center>Category Description</center></th>
    </tr>
  </thead>
  <c:forEach items="${catlist}" var="cl">
  <tr>
    <td><c:out value="${cl.cid}"/></td>
    <td><c:out value="${cl.cname}"/></td>
    <td><c:out value="${cl.catdes}"/></td>
     <td><a href="edit?catid=${cl.cid}"><span class="glyphicon glyphicon-scissors"></span> Edit </a></td>
    <td><a href="deletecat?id=${cl.cid}"><span class="glyphicon glyphicon-remove"></span> Delete </a></td>
  </tr>
  </c:forEach>
</table>



<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>