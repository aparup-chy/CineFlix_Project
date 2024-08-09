<div class="footer">
	<div class="wrap">
			<div class="footer-top">
				<div class="col_1_of_4 span_1_of_4">
					<div class="info">
                        <p><img src="images/CineFlix Logo.jpg" height="80" width="175" alt="Image resize"/><br>
                        <!-- <img src="images/Flix.png" height="80" width="80" alt="Image resize"/><br> -->
                        <span style="text-decoration: italic;"><strong>CineFlix Movies</strong></span><br>
		                Kha 224 Bir Uttam Rafiqul Islam Avenue, Merul Badda, Dhaka<br>
		              </div>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<div class="contact">
						<p><strong style="font-size: 14px;">For further information contact us:</strong><br>
						Phone Number: <strong>+8801324242424</strong><br>
                        Email address: <strong>cineflix@gmail.com</strong><br>
                        <strong style="font-size: 14px;">Follow us on: </strong><br>
                        <a href="#"><img src="images/facebook.png" alt="Facebook link"/></a>
						<a href="#"><img src="images/instagram.png" alt="Instagram link"/></a>
						</p>
					</div>
				</div>
				
				<div class="col_1_of_4 span_1_of_4">
					<div class=policy>
                        <p><strong style="font-size: 18px;">About us</strong><br>
                        <a href="#">Terms and condition</a><br>
                        <a href="#">Privacy Policy</a><br>
                        <a href="#">Refund and Return Policy</a><br>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
</body>
</html>

<style>
.content {
	padding-bottom:0px !important;
}
#form111 {
                width:500px;
                margin:50px auto;
}
#search111{
                padding:8px 15px;
                background-color:#fff;
                border:0px solid #dbdbdb;
}
#button111 {
                position:relative;
                padding:6px 15px;
                left:-8px;
                border:2px solid #ca072b;
                background-color:#ca072b;
                color:#fafafa;
}
#button111:hover  {
                background-color:#b70929;
                color:white;
}

</style>

<script src="js/auto-complete.js"></script>
 <link rel="stylesheet" href="css/auto-complete.css">
    <script>
        var demo1 = new autoComplete({
            selector: '#search111',
            minChars: 1,
            source: function(term, suggest){
                term = term.toLowerCase();
                <?php
						$qry2=mysqli_query($con,"select * from movies");
						?>
               var string="";
                <?php $string="";
                while($ss=mysqli_fetch_array($qry2))
                {
                
                $string .="'".strtoupper($ss['movie_name'])."'".",";
                //$string=implode(',',$string);
                
              
                }
                ?>
                //alert("<?php echo $string;?>");
              var choices=[<?php echo $string;?>];
                var suggestions = [];
                for (i=0;i<choices.length;i++)
                    if (~choices[i].toLowerCase().indexOf(term)) suggestions.push(choices[i]);
                suggest(suggestions);
            }
        });
    </script>