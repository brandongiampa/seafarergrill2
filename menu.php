<?php include_once 'php/database.php';
      //include_once 'api/objects/menu/item.php';

  //array of food types and pictures
  $food_types = array();

  $query = "SELECT DISTINCT m.food_type_id, ft.food_type, ft.bg_pic
              FROM `menu_items` m LEFT JOIN `food_types` ft
              ON m.food_type_id = ft.id";

  $stmt = $con->prepare($query);
  $stmt->execute();

  while($row = $stmt->fetch(PDO::FETCH_OBJ)){

    $food_type = array(
      "food_type" => $row->food_type,
      "food_link" => strtolower(str_replace(' ', '', $row->food_type)),
      "bg_pic" => 'img/' . $row->bg_pic . '.jpg',
      "food_type_id" => $row->food_type_id
    );

    array_push($food_types, $food_type);
  }

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <script>
    var isIndex = false;
  </script>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Seafarer Grille</title>
  <script src="https://kit.fontawesome.com/5911355aea.js"></script>
  <link rel="icon" href="img/wheel.png">
  <link rel="stylesheet" href="css/style.css">
  <link href="https://fonts.googleapis.com/css?family=Oswald|Yellowtail&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="css/animate.css">
</head>
<body class="menu-page">
  <div id="top-m"></div>
  <header class="opaque" id="top">
    <div id="menu-logo" class="animated fadeIn"><a href="index.php"><img src="img/logo7.png" alt=""></a></div>
    <div id="menu-cta" class="animated fadeInRight"><a href="http://www.opentable.com">RESERVE A TABLE</a></div>
    <nav id="menu-page-nav" class="animated fadeInLeft">
      <ul>
        <li><a href="http://www.twitter.com"><i class="fab fa-twitter"></i></a></li>
        <li><a href="http://www.facebook.com"><i class="fab fa-facebook"></i></a></li>
      </ul>
    </nav>
  </header>
  <div class="reserve-responsive">
    <a href="http://www.opentable.com">reserve a table</a>
  </div>
  <!--FOOD NAV-->
  <nav class="animated fadeInUp" id="food-nav">
    <ul class="opaque">
      <?php
        for ($i=0;$i<count($food_types);$i++){
          ?>
          <li class="smooth">
            <a href="#<?php echo $food_types[$i]["food_link"];?>"><?php echo $food_types[$i]["food_link"];?></a>
          </li>
          <?php
        }
      ?>
    </ul>
  </nav>

  <!--MENU-->
  <main>
<?php include_once 'html/menu-wide.php'; ?>
<?php include_once 'html/menu-thin.php'; ?>
  </main>
  <div class="modal" id="menu-single-item">
    <div class="modal-wrap">
      <div class="modal-content">
        <span id="close-btn">&times;</span>
        <div class="modal-text">
          <img src="img/sandwich2.jpg" alt="">
          <h1>THE DETROITER<span class="price">$11.99</span></h1>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam iusto nihil recusandae fuga, numquam asperiores quam doloribus repudiandae id cum expedita est velit corporis fugiat esse vel natus officia cumque! Fugit animi nihil architecto quae ipsum, voluptatibus consequatur ut, doloribus nulla atque officia. Voluptate quibusdam possimus, voluptatum maiores saepe, sint excepturi dolorum eum odit quia hic id minus sed. Voluptatibus temporibus, nemo a molestiae magni officiis laboriosam qui, maiores deserunt sed totam repudiandae velit, vero reiciendis quae natus fugit vitae recusandae ducimus ipsa. Aspernatur veritatis recusandae incidunt vero, beatae iste. Beatae voluptatibus ea saepe commodi libero ipsa, mollitia nobis nihil quod quis quae molestiae magni.</p>
        </div>
      </div>
    </div>
  </div>
  <?php include_once 'html/footer.php'; ?>
</body>
<script   src="https://code.jquery.com/jquery-3.3.1.min.js"
          integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
          crossorigin="anonymous"></script>
<script src="js/smooth-scroll.js"></script>
<script src="js/main.js"></script>
</html>
