<?php if(isset($_POST['p_id'])){
include '../database_connection.php';
$id = $_POST['p_id'];
//echo $id;
$sql = "DELETE FROM `lms_location_rack` WHERE location_rack_id = '$id'";

 $result = $connect->query($sql);

 if($result){
    header('Location:location_rack.php?msg="Deleted"');

 }

}?>