<!DOCTYPE html>
<html lang="en">
<head>
<title>Welcome to e-JewelSouq</title>
</head>
<body>
  <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
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
       <img src="resources/Bangles.jpg" alt="Bangles" width="100%" height="100%">
          <div class="carousel-caption">
          <h3>Gold Bangles</h3>
          <p>Beautiful 22k Gold Bangles</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/chain.jpg" alt="Chain" width="100%" height="100%">
        <div class="carousel-caption">
          <h3>Chain</h3>
          <p>Gold Chains</p>
        </div>
      </div>
    
      <div class="item">
        <img src="resources/earrings.jpg" alt="Earrings" width="100%" height="100%">
        <div class="carousel-caption">
          <h3>Gold Earrings</h3>
          <p>Beautiful 22k Gold Earrings</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/jewellery.jpg" alt="Necklace" width="100%" height="100%">
        <div class="carousel-caption">
          <h3>Necklace</h3>
          <p>Gold 22k Necklace
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
<div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</div>
</body>
</html>
