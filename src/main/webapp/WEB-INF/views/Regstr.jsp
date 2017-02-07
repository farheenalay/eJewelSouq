<!DOCTYPE html>
<html>
<head>
<title>Registration Page</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css"> 
body {background-image: url("resources/bki.jpg");} 
 </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form action=register>
<div class="container">
<h1>Registration</h1>
<form>
<div class="form-group">
      <label for="text">Name:</label>
      <input type="text" class="form-control" name="name" placeholder="Enter Name">
    </div>
    <div class="form-group">
      <label for="pwd">Create Password:</label>
      <input type="password" class="form-control" name="pass" placeholder="Enter password">
    </div>
 <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" name="email" placeholder="Enter email">
    </div>
 <div class="form-group">
      <label for="text">Mobile No:</label>
      <input type="text" class="form-control" name="mno" placeholder="Enter Mobile Number">
 </div>   
    <button type="submit" class="btn btn-primary">REGISTER</button>
  </form>
</div>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

