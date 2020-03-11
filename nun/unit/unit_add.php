
<meta charset="utf-8">
<?php include "../navbar.php";
require_once '../connect.php';
//error_reporting(0);
if(isset($_POST['add'])){
							$Unit_number = $_POST['Unit_number'];
              $Unit_name = $_POST['Unit_name'];
							$Color = $_POST['Color'];
							$count=0;
							$sqlVal ="select Unit_number from sport_unit where Unit_number='$Unit_number'";
							$resultVal = $connect->query($sqlVal);
							while ($row=mysqli_fetch_array($resultVal)) {
							$count++;
						}
						if($count>0){
                            echo "<script>alert('ไอดีนี้มีอยู่แล้ว')</script>";
                            }else {
								if($Unit_number != ""&&$Unit_name != ""&&$Color != ""){
									 $sql = "INSERT INTO sport_unit (Unit_number,Unit_name,Color) VALUES ('$Unit_number','$Unit_name','$Color')";
									$result = $connect->query($sql);
								if($result){
									echo "<script>alert('เพิ่มข้อมูลสำเร็จ')</script>";
									echo "<script>window.location.href='unit.php';</script>";
								}else {
									echo "<script>alert('เพิ่มข้อมูลล้มเหลว')</script>";
									echo "<script>window.location.href='unit.php';</script>";
									  }
								}else{
									echo "<script>alert('กรุณากรอกข้อมูลให้ครบ !')</script>";
								}
									};
                                }

if(isset($_POST['btnSubmitEmp'])){
  $file = $_FILES['fileCSV']['tmp_name'];
  $handle = fopen($file,"r");
  while(($fileop = fgetcsv($handle,1000,",")) !== false)
      {
          $Unit_number= $fileop[0];
          $Color= $fileop[1];
          $sql = ("INSERT INTO sport_unit VALUES ('$Unit_number','$Color','$Unit_name')");
          if($connect->query($sql)){
          echo "<script>alert('เพิ่มข้อมูลของสำเร็จแล้ว');
          window.location.href='unit.php';
          </script>";
          }else {
          echo "<script>
          alert('ERROR : ไม่สามารถบันทึกข้อมูลได๋');
          window.history.back();
          </script>";
          }

      }
    }
 ?>
<meta charset="utf-8">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Athiti" rel="stylesheet">
<body style="font-family: 'Athiti', sans-serif;">
<?php  ?>
<style>
body  {
width:100%;
height: 100%;
background-color: #5c9dc0;
}
</style>
  <div class="container" style="border:1px white solid; width:1700px; height: 600px;  background-color:white; opacity:1.5;">
<div class="pos-f-t">
  <div class="collapse" id="navbarToggleExternalContent">
    <div class="bg-dark p-4">
      <h5 class="text-white h4">Collapsed content</h5>
      <span class="text-muted">Toggleable via the navbar brand.</span>
    </div>
  </div>

</div>

<div class="container" style="width:700px;margin-top:40px;   ">
            <div class="card">
                <div class="card-header   text-center"><h5 style="color: #5c9dc0">เพิ่มข้อมูลหน่วยกีฬา</h5></div>
                		<div class="card-body" style="background-color: #F5FFFA">
                    <form action="<?php $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data" method="post">

                        <div class="form-group row">
                            <label class="col-lg-4 col-form-label">รหัสหน่วยกีฬา: </label>
                                <div class="col-lg-7">
                                    <input type="text" class="form-control"  name="Unit_number" placeholder="กรุณาใส่รหัสหน่วย">
                                </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-4 col-form-label">ชื่อหน่วยกีฬา: </label>
                                <div class="col-lg-7">
                                    <input type="text" class="form-control"  name="Unit_name" placeholder="กรุณาใส่ชื่อหน่วย">
                                </div>
                        </div>
                        <div class="row">
                          <label class="col-lg-4 col-form-label">สี: </label>
                          <div class="col">
                            <input type="text"style="width:170px;" class="form-control" placeholder="สี" name="Color">
                          </div>
                        </div>

                        <br>
                        </div>


                        <div class="form-group row">
                            <div class="col-lg-6" style="text-align: right">
                                <input type="submit" class="btn btn-success col-4" name="add" value="ตกลง">
                            </div>
                            <div class="col-lg-6" style="text-align: left">
    <a  class="btn btn-danger col-4"  href="unit.php" style="color:white; text-decoration-line: none;">ยกเลิก</a>                             </div>
                        </div>
                    </form>

                </div>
            </div>
<br><br>        </div>
