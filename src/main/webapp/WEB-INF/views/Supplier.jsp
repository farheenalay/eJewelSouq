<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Supplier</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css"> 
body {background-image: url("resources/supplier.png");} 
 </style>
 <style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
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
<center><h2>Add Supplier</h2></center>
        <form:form action="" method="post" commandName="addSupp">
           <form>
           <div align="center">
     <div class="form-group">
      <label class="col-md-4 control-label" for="Supplier ID">Supplier ID:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="sid" placeholder="Supplier ID" />
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Supplier Name">Supplier Name:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="sname" placeholder="Supplier Name" />
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Supplier Description">Description:</label>
      <div class="col-md-4">
      <textarea class="form-control" rows="5" id="comment" name="sdescription" placeholder="Description" /> </textarea>
    </div><br/> <br/> <br/>
    </div>
    <br/> <br/> <br/>
    <button type="submit" class="btn btn-success">Add Supplier</button>
  </div>
  </form>
  </form:form>
  
  <h3 class="text-center"> Supplier List </h3>
<table class="table table-bordered">
  <thead>
   <tr>
    <th>Supplier Id</th>
    <th>Supplier Name</th>
    <th>Supplier Description</th>
    </tr>
  </thead>
  <c:forEach items="${suplist}" var="supl">
  <tr>
    <td><c:out value="${supl.sid}"/></td>
    <td><c:out value="${supl.sname}"/></td>
    <td><c:out value="${supl.sdescription}"/></td>
  </tr>
  </c:forEach>
</table>
  
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>