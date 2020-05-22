<!DOCTYPE html>

<?php include_once 'php/db.php'; ?>

<html lang="en">
<head>
  <script type="text/javascript">
    if (screen.width <= 500) {
        document.location = "mobile/index.php";
    }
  </script>
  <script src="https://kit.fontawesome.com/5911355aea.js"></script>
  <script type="text/javascript">
    var isIndex = true;
  </script>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="css/style.css">
  <link rel="icon" href="img/wheel.png">
  <title>Seafarer Grille</title>
  <link href="https://fonts.googleapis.com/css?family=Oswald|Yellowtail&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="css/animate.css">
</head>
<body>

<div class="index-page">
  <div id="logo" class="animated fadeInDown">
    <img src="img/logo7.png" alt="">
    <a href="http://www.opentable.com">MAKE A RESERVATION</a>
    <a href="menu.php">OUR MENU</a>
  </div>

  <div id="navmenu">
    <?php include_once 'html/nav-menu.php';?>
  </div>


  <div id="landing-page" class="animated fadeIn">
    <img id="hero-image" src="img/restaurant5.jpg" alt="">
  </div>
</div>

</body>
<script   src="https://code.jquery.com/jquery-3.3.1.min.js"
          integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
          crossorigin="anonymous"></script>
<script src="js/main.js"></script>
<script src="js/bg-slide.js"></script>

</html>
