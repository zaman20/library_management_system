<?php if(isset($_POST['p_id'])){
include '../database_connection.php';
$id = $_POST['p_id'];
//echo $id;
$sql = "DELETE FROM `lms_author` WHERE author_id = '$id'";

 $result = $connect->query($sql);

 if($result){
    header('Location:author.php?msg="Deleted"');

 }

}?>