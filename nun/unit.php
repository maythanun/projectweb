<?php include '../nwqeq.php'; ?>
<div class="container">
 <?php include '../connect.php';?>
<?php include '../navbar.php'; ?>

<br>
    <div class="container" style="border:1px white solid; width:1110px; height: 100%;  background-color:white; ">
<br>
    <div style="font-size:30px; text-align:center;">จัดการข้อมูลหน่วยกีฬา</div>
    <br>
    <div class="form-group row" style="margin-left:250px;">
      <label for="inputPassword" class="col-sm-3 col-form-label"><b>ค้นหาข้อมูลหน่วยกีฬา</b></label>
      <form action="unit_find.php" enctype="multipart/form-data" method="post">
      <div class="col-sm-9"  >
        <input type="text" class="form-control" id="find" name="find" placeholder="กรอกรหัสหน่วยกีฬา">
      </div>
      <div style="margin-left:300px; margin-top:-36px;">
          <button type="submit" class="btn btn-info">ค้นหา</button>
      </div>
    </form>
    </div>

    <a href="unit_add.php"><button type="button" class="btn btn-success" style="margin-left:80px;" >+เพิ่มหน่วยกีฬา</button></a>
    <div class="col-lg-4" style="margin-left:900px; margin-top:-10px;">

    </div>
    <br>
    <center><table class="table table-hover" style=" width:100%">
      <tr style="text-align:center;background-color:#00BCD4;">
          <td><B>รหัสหน่วยกีฬา</td></B>
          <td><B>ชื่อหน่วยกีฬา</td></B>
          <td><B>สี</td></B>

        <td><B>การจัดการ</td></B>

      </tr>
      <?php
      $sql = "SELECT * FROM sport_unit ORDER BY Unit_number";
      $query = $con->query($sql);
        $i=1;
        while($row = $query->fetch_assoc()){

      ?>
      <tr >
            <td  style="text-align:center;" ><?php echo $row['Unit_number'] ?></td>
            <td ><?php echo $row['Unit_name'] ?></td>
        <td style="text-align:center;"><?php echo $row['Color'] ?></td>

            <td align="center">
            <a href="Unit_delete.php?Unit_number=<?=$row['Unit_number']?>" onclick="return confirm('คุณต้องการลบข้อมูลใช่หรือไม่ ?')" style="text-decoration:none;color:red">[ลบ]</a>
            <a href="Unit_edit.php?Unit_number=<?php echo $row['Unit_number']?>" style="text-decoration:none;color:blue">[แก้ไข]</a></td>

      </tr>
      <?php
      $i++;
      }
      ?>

    </table>
    </div>
</div>
</body>
</html>
