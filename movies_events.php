<?php include('header.php');?>
</div>
<div class="content">
	<div class="wrap">
		<div class="content-top">
			<center><h1 style="color:#800080; font-size: 20px; font-style: italic;">NOW SHOWING MOVIES:</h1></center>
			
			<?php
          	 $today=date("Y-m-d");
          	 $qry2=mysqli_query($con,"select * from  movies");
          	  while($m=mysqli_fetch_array($qry2))
                   {
                    ?>
                    <div class="col_1_of_4 span_1_of_4">
					<div class="imageRow">
						  	<div class="single">
						  		<?php						
						?>
						  		<a href="about.php?id=<?php echo $m['movie_id'];?>"><img src="<?php echo $m['image'];?>" alt="" /></a>
						  	</div>
						  	<div class="movie-text">
							<a href="about.php?id=<?php echo $m['movie_id'];?>" class="link4" style="text-decoration:none; font-size:18px;"><?php echo $m['movie_name'];?></a><br>
                            Cast: <Span class="data"><?php echo $m['cast'];?></span><br>
                            Description: <span" class="color2" style="text-decoration:none;"><?php echo $m['desc'];?></span><br>
						  		
						  	</div>
		  				</div>
		  		</div>
		  		
  	    <?php
  	    	}
  	    	?>
			
			</div>
				<div class="clear"></div>		
			</div>
			<?php include('footer.php');?>