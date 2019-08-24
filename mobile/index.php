<?php include_once '../php/database.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <script src="https://kit.fontawesome.com/5911355aea.js"></script>
  <script type="text/javascript">
    var isIndex = false;
  </script>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Seafarer Grille</title>
  <link rel="icon" href="img/wheel.png">
  <link rel="stylesheet" href="../css/style.css">
  <link href="https://fonts.googleapis.com/css?family=Oswald|Yellowtail&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="css/animate.css">
  <link rel="icon" href="../img/wheel.png">
</head>
<body class="body-mobile">
  <header class="animated fadeIn opaque" id="top">
    <div class="bg-m"></div>
    <div id="menu-logo"><a href="index.php"><img src="../img/logo7.png" alt=""></a></div>
  </header>
  <div class="main-nav-m">
    <a href="#" id="open-menu-button"><i class="fas fa-bars"></i></a>
    <div class="close-menu" id="close-menu"><a href="#" id="close-menu-button"><span class="x-out">&times;</span>CLOSE</a></div>
    <nav id="main-nav-m">
      <ul>
        <li><a href="http://www.opentable.com">reserve a table</a></li>
        <li><a href="../menu.php">view our menu</a></li>
      </ul>
    </nav>
  </div>
  <div class="mobile-info-links">
    <div class="info-link-m">
      <a href="#"><i class="fas fa-clock"></i></a>
    </div>
    <div class="pop-out-m">
      <?php include_once '../html/hours-m.php';?>
    </div>
    <div class="info-link-m">
      <a href="#"><i class="fas fa-map-marker-alt"></i></a>
    </div>
    <div class="pop-out-m">
      <?php include_once '../html/address-m.php';?>
    </div>
    <div class="info-link-m">
      <a href="#"><i class="fas fa-phone-alt"></i></a>
    </div>
    <div class="pop-out-m">
      <?php include_once '../html/phone-number-m.php';?>
    </div>
  </div>
  <nav class="mobile-nav-social">
    <ul>
      <li class="info-li-m" id="facebook-m">
        <a href="http://www.facebook.com">Find us on <i class="fab fa-facebook"></i></a>
      </li>
      <li class="info-li-m" id="twitter-m">
        <a href="http://www.twitter.com">Visit us at <i class="fab fa-twitter"></i></a>
      </li>
    </ul>
  </nav>
  <footer>
    <h5>Site by Brandon Giampa</h5>
  </footer>
</body>
<script   src="https://code.jquery.com/jquery-3.3.1.min.js"
          integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
          crossorigin="anonymous"></script>
<script src="../js/main.js"></script>
</html>
