<?php 


function magazine_header_ads(){ ?>



	<?php 

		$head_ad_responsive = of_get_option('magz_ad_head_responsive');
		$adsense_id = of_get_option('magz_adsense_id');
		$slot728_head = of_get_option('magz_head_ad_slot_728');
		$slot468_head = of_get_option('magz_head_ad_slot_468');
		$slot336_head = of_get_option('magz_head_ad_slot_336');
		$slot300_head = of_get_option('magz_head_ad_slot_300');
		$slot250_head = of_get_option('magz_head_ad_slot_250');
		$slot200_head = of_get_option('magz_head_ad_slot_200');
		$slot180_head = of_get_option('magz_head_ad_slot_180');
		$slot125_head = of_get_option('magz_head_ad_slot_125');

		if(empty($head_ad_responsive)) {
	

		// Check if all slot fields are not empty		
		if(!empty($slot728_head) || !empty($slot468_head) || !empty($slot336_head) || !empty($slot300_head) || !empty($slot250_head) || !empty($slot200_head) || !empty($slot180_head) || !empty($slot125_head)  ) {
		
	?>

	
	
	<div class="head-ad">

		<div id="google_ads_head" class="ads_code">
			
			<script type="text/javascript">
							
				adUnit   = document.getElementById("google_ads_head");
				adWidth  = adUnit.offsetWidth;

				google_ad_client = "<?php echo $adsense_id; ?>";
				google_adtest = "on";

				if ( adWidth >= 728 ) {
				  /* Leaderboard 728x90 */
				  google_ad_slot = "<?php echo $slot728_head; ?>";
				  google_ad_width = 728;
				  google_ad_height = 90;
				} else if ( adWidth >= 468 ) {
				  /* Banner (468 x 60) */
				  google_ad_slot = "<?php echo $slot468_head; ?>"; 
				  google_ad_width = 468;
				  google_ad_height = 60;
				} else if ( adWidth >= 336 ) {
				  /* Large Rectangle (336 x 280) */
				  google_ad_slot = "<?php echo $slot336_head; ?>";
				  google_ad_width = 336;
				  google_ad_height = 280;
				} else if ( adWidth >= 300 ) {
				  /* Medium Rectangle (300 x 250) */
				  google_ad_slot = "<?php echo $slot300_head; ?>";
				  google_ad_width = 300;
				  google_ad_height = 250;
				} else if ( adWidth >= 250 ) {
				  /* Square (250 x 250) */
				  google_ad_slot = "<?php echo $slot250_head; ?>";
				  google_ad_width = 250;
				  google_ad_height = 250;
				} else if ( adWidth >= 200 ) {
				  /* Small Square (200 x 200) */
				  google_ad_slot = "<?php echo $slot200_head; ?>";
				  google_ad_width = 200;
				  google_ad_height = 200;
				} else if ( adWidth >= 180 ) {
				  /* Small Rectangle (180x150) */
				  google_ad_slot = "<?php echo $slot180_head; ?>";
				  google_ad_width = 180;
				  google_ad_height = 150;
				} else {
				  /* Button (125x125) */
				  google_ad_slot = "<?php echo $slot125_head; ?>";
				  google_ad_width = 125;
				  google_ad_height = 125;
				}
				
				
			</script>
							
			<script type="text/javascript"  src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>			
			
			
		</div><!-- /#google-ads-head -->

	</div><!-- /.head-ad -->
	
	

	<?php } // Check if all slot fields are not empty ends
	
	
	} else { ?>
	
	<div class="head-ad">

		<div class="ads_code">
			<?php echo $head_ad_responsive; ?>
		</div>
		
	</div>	
	
	<?php } ?>
	
	
	<?php
		$banner_img_header = of_get_option('magz_header_img_banner_1');
		$banner_url_header = of_get_option('magz_header_img_banner_1_url');
		if (!empty($banner_img_header)) {
	?>	


	<div class="head-ad">
		<div class="image_ad">
			<a href="<?php echo $banner_url_header; ?>" target="_blank"><img src="<?php echo $banner_img_header; ?>" alt="Banner Ads Top" /></a>
		</div>
	</div>	
		

	<?php } ?>	
	


<?php } // magazine_header_ads() ends 








function magazine_sidebar_ads(){ ?>



	<?php 

		$side_ad_responsive = of_get_option('magz_ad_side_responsive');
		$adsense_id = of_get_option('magz_adsense_id');
		$slot336_side = of_get_option('magz_side_ad_slot_336');
		$slot300_side = of_get_option('magz_side_ad_slot_300');
		$slot250_side = of_get_option('magz_side_ad_slot_250');
		$slot200_side = of_get_option('magz_side_ad_slot_200');
		$slot180_side = of_get_option('magz_side_ad_slot_180');
		$slot125_side = of_get_option('magz_side_ad_slot_125');

		if(empty($side_ad_responsive)) {
	

		// Check if all slot fields are not empty		
		if( !empty($slot336_side) || !empty($slot300_side) || !empty($slot250_side) || !empty($slot200_side) || !empty($slot180_side) || !empty($slot125_side)  ) {
		
	?>

	
	
	<div class="side_ad">

		<div id="google_ads_side" class="ads_code">
			
			<script type="text/javascript">
							
				adUnit   = document.getElementById("google_ads_side");
				adWidth  = adUnit.offsetWidth;

				google_ad_client = "<?php echo $adsense_id; ?>";
				google_adtest = "on";

				if ( adWidth >= 336 ) {
				  /* Large Rectangle (336 x 280) */
				  google_ad_slot = "<?php echo $slot336_side; ?>";
				  google_ad_width = 336;
				  google_ad_height = 280;
				} else if ( adWidth >= 300 ) {
				  /* Medium Rectangle (300 x 250) */
				  google_ad_slot = "<?php echo $slot300_side; ?>";
				  google_ad_width = 300;
				  google_ad_height = 250;
				} else if ( adWidth >= 250 ) {
				  /* Square (250 x 250) */
				  google_ad_slot = "<?php echo $slot250_side; ?>";
				  google_ad_width = 250;
				  google_ad_height = 250;
				} else if ( adWidth >= 200 ) {
				  /* Small Square (200 x 200) */
				  google_ad_slot = "<?php echo $slot200_side; ?>";
				  google_ad_width = 200;
				  google_ad_height = 200;
				} else if ( adWidth >= 180 ) {
				  /* Small Rectangle (180x150) */
				  google_ad_slot = "<?php echo $slot180_side; ?>";
				  google_ad_width = 180;
				  google_ad_height = 150;
				} else {
				  /* Button (125x125) */
				  google_ad_slot = "<?php echo $slot125_side; ?>";
				  google_ad_width = 125;
				  google_ad_height = 125;
				}
				
				
			</script>
							
			<script type="text/javascript"  src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>			
			
			
		</div><!-- /#google-ads-head -->

	</div><!-- /.side_ad -->
	
	

	<?php } // Check if all slot fields are not empty ends
	
	
	} else { ?>
	
	<div class="side_ad">

		<div class="ads_code">
			<?php echo $side_ad_responsive; ?>
		</div>
		
	</div>	
	
	<?php } 
	
	
	
		$banner_img_side = of_get_option('magz_sidebar_img_banner_1');
		$banner_url_side = of_get_option('magz_sidebar_img_banner_1_url');
		
		if (!empty($banner_img_side)) {
	
	?>

	
	<div class="img_banner_ads">
		<a href="<?php echo $banner_url_side; ?>" target="_blank"><img src="<?php echo $banner_img_side; ?>" alt="<?php _e('Banner Ads', 'magazine'); ?>" /></a>
	</div>
	

<?php	} 


	} // magazine_sidebar_ads() ends 
	
	
	
	



	




function magazine_post_ads(){ ?>



	<?php 

		$single_ad_responsive = of_get_option('magz_ad_post_responsive');
		$adsense_id = of_get_option('magz_adsense_id');
		$slot468_post = of_get_option('magz_post_ad_slot_468');
		$slot336_post = of_get_option('magz_post_ad_slot_336');
		$slot300_post = of_get_option('magz_post_ad_slot_300');
		$slot250_post = of_get_option('magz_post_ad_slot_250');
		$slot200_post = of_get_option('magz_post_ad_slot_200');
		$slot180_post = of_get_option('magz_post_ad_slot_180');
		$slot125_post = of_get_option('magz_post_ad_slot_125');

		if(empty($single_ad_responsive)) {
	

		// Check if all slot fields are not empty		
		if(!empty($slot468_post) || !empty($slot336_post) || !empty($slot300_post) || !empty($slot250_post) || !empty($slot200_post) || !empty($slot180_post) || !empty($slot125_post)  ) {
		
	?>

	
	
	<div class="singe_ad">

		<div id="google_ads_post" class="ads_code">
			
			<script type="text/javascript">
							
				adUnit   = document.getElementById("google_ads_post");
				adWidth  = adUnit.offsetWidth;

				google_ad_client = "<?php echo $adsense_id; ?>";
				google_adtest = "on";

				if ( adWidth >= 468 ) {
				  /* Banner (468 x 60) */
				  google_ad_slot = "<?php echo $slot468_post; ?>"; 
				  google_ad_width = 468;
				  google_ad_height = 60;
				} else if ( adWidth >= 336 ) {
				  /* Large Rectangle (336 x 280) */
				  google_ad_slot = "<?php echo $slot336_post; ?>";
				  google_ad_width = 336;
				  google_ad_height = 280;
				} else if ( adWidth >= 300 ) {
				  /* Medium Rectangle (300 x 250) */
				  google_ad_slot = "<?php echo $slot300_post; ?>";
				  google_ad_width = 300;
				  google_ad_height = 250;
				} else if ( adWidth >= 250 ) {
				  /* Square (250 x 250) */
				  google_ad_slot = "<?php echo $slot250_post; ?>";
				  google_ad_width = 250;
				  google_ad_height = 250;
				} else if ( adWidth >= 200 ) {
				  /* Small Square (200 x 200) */
				  google_ad_slot = "<?php echo $slot200_post; ?>";
				  google_ad_width = 200;
				  google_ad_height = 200;
				} else if ( adWidth >= 180 ) {
				  /* Small Rectangle (180x150) */
				  google_ad_slot = "<?php echo $slot180_post; ?>";
				  google_ad_width = 180;
				  google_ad_height = 150;
				} else {
				  /* Button (125x125) */
				  google_ad_slot = "<?php echo $slot125_post; ?>";
				  google_ad_width = 125;
				  google_ad_height = 125;
				}
				
				
			</script>
							
			<script type="text/javascript"  src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>			
			
			
		</div><!-- /#google-ads-head -->

	</div><!-- /.singe_ad -->
	
	

	<?php } // Check if all slot fields are not empty ends
	
	
	} else { ?>
	
	<div class="singe_ad">

		<div class="ads_code">
			<?php echo $single_ad_responsive; ?>
		</div>
		
	</div>	
	
	<?php } ?>
	
	
	<?php
		$banner_img_post = of_get_option('magz_post_img_banner_1');
		$banner_url_post = of_get_option('magz_post_img_banner_1_url');
		if (!empty($banner_img_post)) {
	?>	


	<div class="single-ad">
		<div class="image_ad">
			<a href="<?php echo $banner_url_post; ?>" target="_blank"><img src="<?php echo $banner_img_post; ?>" alt="Banner Ads Post" /></a>
		</div>
	</div>	
		

	<?php } ?>		


<?php } // magazine_header_ads ends 