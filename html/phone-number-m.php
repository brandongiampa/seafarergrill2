<?php

  $sql = 'SELECT * FROM `locations`;';
  $stmt = $con->prepare($sql);
  $stmt->execute();

  while ($row = $stmt->fetch(PDO::FETCH_OBJ)) {
    ?>
    <div class="phone-number-m">
      <ul>
        <li>
          <h4><?php echo $row->location;?></h4>
        </li>
        <li>
          <p><?php echo $row->phone_number;?></p>
        </li>
      </ul>

    </div>
    <?php
  }

?>
