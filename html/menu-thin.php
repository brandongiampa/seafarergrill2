<article class="menu-thin opaque">
  <?php
  for ($i=0; $i<count($food_types); $i++){?>
    <div class="menu-category-m" id="<?php echo $food_types[$i]['food-link'].'-m';?>">
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
          <img src="img/<?php echo $row->pic;?>.jpg" alt="">
          <div class="menu-title-price-m">
            <span class="menu-title-m"><?php echo $row->name;?></span>
            <span class="menu-price-m"><?php echo $row->price_dollar . ' | ' . $row->price_euro;?></span>
          </div>
          <div class="menu-description-m">
            <?php
            //abbreviate menu description
            ?>
            <p class="abbr">
            <?php
            $strArray = explode(' ' , $row->description, 5);
            for ($j=0; $j<count($strArray)-1; $j++){
              if ($j != count($strArray)-2){
                echo $strArray[$j] . ' ';
              }
              else {
                echo $strArray[$j] . '...';
              }
            }
            ?>
            </p>
            <button class="show-more">show more</button>
            <p class="menu-description-m disappear">
              <?php echo $row->description;?>
            </p>
            <button class="show-less disappear">show less</button>
          </div>
        </div>
        <?php
      }
       ?>

    </div>
    <?php
  }

   ?>
</article>
