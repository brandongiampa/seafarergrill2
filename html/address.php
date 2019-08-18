

<?php

  $sql = 'SELECT * FROM `locations`;';
  $stmt = $con->prepare($sql);
  $stmt->execute();

  while ($row = $stmt->fetch(PDO::FETCH_OBJ)) {
    ?>
    <div class="address">
      <ul>
        <li>
          <h4><?php echo $row->location;?></h4>
        </li>
        <li>
          <?php echo $row->address1;?>
        </li>
        <?php if ($row->address2 != null){?>
        <li>
          <?php echo $row->address2;?>
        </li>
          <?php
        }
        ?>
        <li>
          <?php
            $cityStateCountry = '';
            $cityStateCountry .= $row->city . ', ';
            if ($row->state_province != null) {
              $cityStateCountry .= $row->state_province . ', ';
            }
            $cityStateCountry .= $row->country . '  ';
            $cityStateCountry .= $row->zip_code;
            echo $cityStateCountry;
          ?>
        </li>
      </ul>
    </div>
    <?php
  }
?>
