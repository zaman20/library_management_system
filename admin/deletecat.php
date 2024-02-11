<?php if(isset($_POST['p_id'])){
include '../database_connection.php';
$id = $_POST['p_id'];
//echo $id;
$sql = "DELETE FROM `lms_category` WHERE category_id = '$id'";

 $result = $connect->query($sql);

 if($result){
    header('Location:category.php?msg="Deleted"');

 }

}?>