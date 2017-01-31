<!DOCTYPE html>
<html lang="en">
<head>
  <title>Welcome to e-JewelSouq</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
<style>
 .navbar-default {
    background-color: #bdab44;
    border-color: #E7E7E7;
}
.navbar-brand {
 color: hover;
}
    </style>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><b><strong>e-JewelSouq</strong></b></a>
    </div>
    <ul class="nav navbar-nav">
   <li class="active"><a href="#"><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-home"></span>Home</button></a></li>
      <li><a href=".jsp"><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-menu-down"></span>Products</button></a></li>
      <li><a href="reg"><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-pencil"></span>Register</button></a></li>
      <li><a href="login"><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-log-in"></span>Log in</button></a></li>
      <li><a href="abtus"><button type="submit" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-info-sign"></span>About Us</button></a></li>
      <li><a href="contact"><button type="button" class="btn btn-default btn-sm">
      <span class="glyphicon glyphicon-envelope"></span>Contact Us</button></a></li>  
    </ul>
  </div>
</nav>
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="5000">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
<!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
    <div class="item active">
       <div class="carousel-caption">
          <img src="C:\Users\Anam\Pictures\1024x400\Bangles.jpg" alt="Bangles" width="100%" height="100%">
          <h3>Gold Bangles</h3>
          <p>Beautiful 22k Gold Bangles</p>
        </div>
      </div>

      <div class="item">
        <img src="chain.jpg" alt="Chain" width="100%" height="100%">
        <div class="carousel-caption">
          <h3>Chain</h3>
          <p>Gold Chains</p>
        </div>
      </div>
    
      <div class="item">
        <img src="earrings.jpg" alt="Earrings" width="100%" height="100%">
        <div class="carousel-caption">
          <h3>Gold Earrings</h3>
          <p>Beautiful 22k Gold Earrings</p>
        </div>
      </div>

      <div class="item">
        <img src="1.jpg" alt="Diamond Ring" width="100%" height="100%">
        <div class="carousel-caption">
          <h3>Diamond Ring</h3>
          <p>Beautiful Solitaire Diamond Ring
          </p>
        </div>
      </div>
  </div>
  <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</body>
</html>
