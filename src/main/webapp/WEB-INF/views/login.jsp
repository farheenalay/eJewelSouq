<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form action=Login>
 <h2>Login</h2>
      Enter Name : <input type="text" name="name"/><br>
      Password : <input type="password" name="pass"/> <br/> <br/> <br/>    
 <input type="submit" value="Login"> 
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
