<article class="menu opaque">
  <?php
  for($i=0; $i<count($food_types); $i++){
    $bg_pic = $food_types[$i]["bg_pic"];
    ?>
    <div class="menu-category" id="<?php echo $food_types[$i]["food_link"];?>">
      <div class="menu-bg animated fadeIn"
      style="background-image: url(<?php echo $bg_pic;?>)">
        <div class="black-opaque"></div>
      </div>
      <h2 class="animated fadeIn"><?php echo $food_types[$i]["food_type"];?></h2>
      <table class="animated fadeInUp">
        <?php
        $query = "SELECT name, price_dollar, price_euro, pic,
                    description FROM `menu_items`
                      WHERE food_type_id = ?
                        ORDER BY list_order, id, created";

        $stmt = $con->prepare($query);
        $stmt->bindParam(1, $food_types[$i]["food_type_id"]);
        $stmt->execute();

        while($row = $stmt->fetch(PDO::FETCH_OBJ)){
          ?>
          <tr>
            <!--pic, title, price, abbr. desc-->
            <td class="menu-pic"><a href="#"><img src="img/small/<?php echo $row->pic;?>.jpg" alt="" data-pic="<?php echo $row->pic;?>"></a></td>
            <td class="menu-title"><a href="#"><?php echo $row->name;?></a></td>
            <td class="menu-price"><?php echo '$' . $row->price_dollar . ' | €' . $row->price_euro;?></td>
            <td class="menu-text" value="<?php echo $row->description;?>">
              <?php
                //abbreviate menu description
                $strArray = explode(' ' , $row->description, 21);
                for ($j=0; $j<count($strArray)-1; $j++){
                  if ($j != count($strArray)-2){
                    echo $strArray[$j] . ' ';
                  }
                  else {
                    echo $strArray[$j] . '...';
                  }
                }
              ?>
              <a href="#">READ MORE</a>
            </td>
          </tr>
          <tr class="hidden">
            <td>

            </td>
          </tr>
          <?php
        }
        ?>
      </table>

    </div>
    <div class="back-to-top smooth">
      <a href="#top" class="animated fadeInUp"><span class="arrow-l">&uarr;</span>Back to Top<span class="arrow-r">&uarr;</span></a>
    </div>
  <?php
  }
  ?>
</article>
