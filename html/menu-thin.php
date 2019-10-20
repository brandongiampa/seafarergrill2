<article class="menu-thin animated fadeIn">
  <?php
  for ($i=0; $i<count($food_types); $i++){?>
    <div class="menu-category-m" id="<?php echo $food_types[$i]['food_link'].'-m';?>">
      <h2><?php echo $food_types[$i]['food_type'];?></h2>
      <?php
      $query = "SELECT name, price_dollar, price_euro, pic,
                  description FROM `menu_items`
                    WHERE food_type_id = ?
                      ORDER BY list_order, id, created";

      $stmt = $con->prepare($query);
      $stmt->bindParam(1, $food_types[$i]["food_type_id"]);
      $stmt->execute();

      while ($row = $stmt->fetch(PDO::FETCH_OBJ)){
        ?>
        <div class="menu-item-m">
          <img src="img/small/<?php echo $row->pic;?>.jpg" alt="">
          <div class="menu-title-price-m">
            <span class="menu-title-m"><?php echo $row->name;?></span>
            <span class="menu-price-m"><?php echo '$'. $row->price_dollar . ' | €' . $row->price_euro;?></span>
          </div>
          <div class="menu-description-m">
            <?php
            //abbreviate menu description
            ?>
            <p class="menu-description-abbr-m">
            <?php
            $strArray = explode(' ' , $row->description, 7);
            for ($j=0; $j<count($strArray)-1; $j++){
              if ($j != count($strArray)-2){
                echo $strArray[$j] . ' ';
              }
              else {
                echo $strArray[$j] . '...';
              }
            }
            ?>
            <span class="show-more"><a href="#">show more</a></span>
            </p>
            <p class="menu-description-text-m">
              <?php echo $row->description;?>
              <span class="show-less"><a href="#">show less</a></span>
            </p>
          </div>
        </div>
        <?php
      }
       ?>

    </div>
    <div class="back-to-top smooth">
      <a href="#top" class="animated fadeInUp"><span class="arrow-l">&uarr;</span>Back to Top<span class="arrow-r">&uarr;</span></a>
    </div>
    <?php
  }

   ?>
</article>
