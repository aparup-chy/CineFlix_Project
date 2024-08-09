<?php
    include('../../config.php');
    extract($_POST);
    mysqli_query($con,"insert into showtime values(NULL,'$screen','$sname','$time')");
?>