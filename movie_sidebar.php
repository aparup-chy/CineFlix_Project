
<div class="listview_1_of_3 images_1_of_3">
					<h1 style="color:#800080; font-family: Times New Roman;">Now Showing</h1>
					
					<?php
          	 $today=date("Y-m-d");
          	$qry2=mysqli_query($con,"select * from  movies where status='0' order by rand() limit 5");
						
          	  while($m=mysqli_fetch_array($qry2))
                   {
                    ?>
            <div class="content-left">
					<div class="listimg listimg_1_of_2">
					<?php
						
						?>
						 <a href="about.php?id=<?php echo $m['movie_id'];?>"><img src="<?php echo $m['image'];?>"></a>
					</div>
					<div class="text list_1_of_2">
						<div class="extra-wrap1">
                                         <a href="about.php?id=<?php echo $m['movie_id'];?>" class="link4" style="text-decoration:none; font-size:18px;"><?php echo $m['movie_name'];?></a><br>
                                        <span class="data">Release Date: <?php echo $m['release_date'];?></span><br>
                                        Cast: <Span class="data"><?php echo $m['cast'];?></span><br>
                                        Description: <span" class="color2" style="text-decoration:none;"><?php echo $m['desc'];?></span><br>
                        </div>
					</div>
					
					<div class="clear"></div>
				</div>
  	    <?php
  	    	}
  	    	?>
								
				</div>		
				<div class="clear"></div>		
			
