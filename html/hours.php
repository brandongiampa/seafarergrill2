<?php

  $sql = 'SELECT * FROM `hours`;';
  $stmt = $con->prepare($sql);
  $stmt->execute();

  while ($row = $stmt->fetch(PDO::FETCH_OBJ)){
    ?>
    <div class="location-hours" data-value="<?php echo $row->time_zone;?>">
      <h4><?php echo $row->location;?></h4>

        <table>
        <tr>
          <td>Mon.</td>
          <td><?php echo $row->mon_open . '-' . $row->mon_close;?></td>
        </tr>
        <tr>
          <td>Tues.</td>
          <td><?php echo $row->tues_open . '-' . $row->tues_close;?></td>
        </tr>
        <tr>
          <td>Wed.</td>
          <td><?php echo $row->wed_open . '-' . $row->wed_close;?></td>
        </tr>
        <tr>
          <td>Thurs.</td>
          <td><?php echo $row->thurs_open . '-' . $row->thurs_close;?></td>
        </tr>
        <tr>
          <td>Fri.</td>
          <td><?php echo $row->fri_open . '-' . $row->fri_close;?></td>
        </tr>
        <tr>
          <td>Sat.</td>
          <td><?php echo $row->sat_open . '-' . $row->sat_close;?></td>
        </tr>
        <tr>
          <td>Sun.</td>
          <td><?php echo $row->sun_open . '-' . $row->sun_close;?></td>
        </tr>
      </table>
    </div>
    <?php
  }
?>
