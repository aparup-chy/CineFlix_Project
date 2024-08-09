<?php
    include('../../config.php');
    extract($_POST);
    mysqli_query($con,"insert into halls values(NULL,'$theatre','$name','$seats','$charge')");
?>