<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Supplier</title>
<style type="text/css"> 
body {background-image: url("resources/Te.jpg");} 
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
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>