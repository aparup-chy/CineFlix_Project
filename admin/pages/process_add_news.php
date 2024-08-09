<?php
include('../../config.php');
session_start();
extract($_POST);

// Validate and sanitize input
$name = mysqli_real_escape_string($con, $name);
$cast = mysqli_real_escape_string($con, $cast);
$date = mysqli_real_escape_string($con, $date);
$description = mysqli_real_escape_string($con, $description);

// File upload handling
$uploaddir = '../upcoming_images/';
$uploadfile = $uploaddir . basename($_FILES['attachment']['name']);

if (move_uploaded_file($_FILES['attachment']['tmp_name'], $uploadfile)) {
    $flname = "upcoming_images/" . basename($_FILES["attachment"]["name"]);

    // Use prepared statement to avoid SQL injection
    $query = "INSERT INTO upcoming VALUES (NULL, ?, ?, ?, ?, ?)";
    $stmt = mysqli_prepare($con, $query);

    // Bind parameters
    mysqli_stmt_bind_param($stmt, 'sssss', $name, $cast, $date, $description, $flname);

    // Execute the statement
    if (mysqli_stmt_execute($stmt)) {
        $_SESSION['add'] = 1;
    } else {
        $_SESSION['add'] = 0; // Set an error flag
    }

    // Close the statement
    mysqli_stmt_close($stmt);
} else {
    $_SESSION['add'] = 0; // Set an error flag for file upload
}

// Redirect with appropriate feedback
header('location: add_movie_news.php');
?>