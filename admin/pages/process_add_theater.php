<?php
    include('../../config.php');
    extract($_POST);
    mysqli_query($con,"insert into  theater values(NULL,'$name','$address','$place','$state','$pin')");
    $id=mysqli_insert_id($con);
    mysqli_query($con,"insert into  login values(NULL,'$id','$username','$password','1')");
    header('location:add_theatre_2.php?id='.$id);
?>