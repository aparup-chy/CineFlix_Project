<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineFlix</title>
    <!-- Consider linking a CSS file here instead of using inline styles -->
</head>
<body>
    <?php include('header.php'); ?>

    <div class="content">
        <div class="wrap">
            <div class="content-top">
                <div class="listview_1_of_3 images_1_of_3">
                    <h1 style="color:#800080; font-family: 'Times New Roman', serif;">Upcoming Movies</h1>
                    <?php 
                    $qry3 = mysqli_query($con, "SELECT * FROM upcoming LIMIT 5");
                    while ($n = mysqli_fetch_array($qry3)) {
                    ?>
                        <div class="content-left">
                            <div class="listimg listimg_1_of_2">
                                <img src="admin/<?php echo $n['attachment']; ?>" alt="Movie Image">
                            </div>
                            <div class="text list_1_of_2">
                                <div class="extra-wrap">
                                    <div>
                                        <span style="color:#FF0000;" class="data">
                                            <strong><?php echo $n['name']; ?></strong><br>
                                        </span>
                                    </div>
                                    <div class="data">Release Date: <?php echo $n['upcoming_date']; ?></div>
                                    <span style="color: #000;">Cast: </span>
                                    <span style="color: #808080;"><?php echo $n['cast']; ?></span><br>
                                    <span class="text-top" style="color:#0047AB;"><?php echo $n['description']; ?></span>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                    <?php
                    }
                    ?>
                </div>
                
                <div class="listview_1_of_3 images_1_of_3">
                    <h1 style="color:#800080; font-family: 'Times New Roman', serif;">Trailers</h1>
                    <div class="middle-list">
                    <?php 
                    $qry4 = mysqli_query($con, "SELECT * FROM movies ORDER BY rand() LIMIT 6");
                    while ($nm = mysqli_fetch_array($qry4)) {
                    ?>
                        <div class="listimg1">
                            <a target="_blank" href="<?php echo $nm['video_url']; ?>">
                                <img src="<?php echo $nm['image']; ?>" alt="Trailer Image">
                            </a>
                        </div>
                    <?php
                    }
                    ?>
                    </div>
                </div>
                <?php include('movie_sidebar.php'); ?>
            </div>
        </div>
    </div>

    <?php include('footer.php'); ?>
    <?php include('searchbar.php'); ?>
</body>
</html>
