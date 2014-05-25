<?php

/**
 * Template Name: Home
 * The main template file.

 *

 * @package WordPress

 * @subpackage Magazine

 */





get_header(); ?>



		<div id="main" class="row-fluid">



			<div id="main-left" class="span8">

				<?php if ( 1 == of_get_option('magz_slider') ) { ?>

				<div id="slider" class="clearfix">

					<div id="slide-left" class="flexslider span8">

						<ul class="slides">

						<?php

							$args = array(

								'posts_per_page' => 4,

								'post_type' => array( 'post', 'page' ),

								'meta_key' => 'magz_slider', // metabox ID (prefix) + field ID

								'meta_value' => 'on' // this is checked checkbox

							);



							// The Query

							$query = new WP_Query( $args );



							// The Loop

							if ( $query->have_posts() ) {

								while ( $query->have_posts() ) {

								$query->the_post(); ?>

	

							<?php 

								$feat_img = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'slide');

								if ( has_post_thumbnail() ) { ?>

								<li data-thumb="<?php echo $feat_img[0]; ?>">

								<?php } else { ?>

								<li data-thumb="<?php echo get_template_directory_uri(); ?>/images/thumb_546x291.png">

							<?php } ?>

									<a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark">

									<?php 

										if ( has_post_thumbnail() ) { 

											the_post_thumbnail('slide'); 

										} else { ?>

											<img src="<?php echo get_template_directory_uri(); ?>/images/thumb_546x291.png">

									<?php } ?>

									</a>

									<div class="entry">

									<h4><?php the_title_limit('', '...', true, '80'); ?></h4>

									<p><?php echo get_excerpt(80); ?></p>

									</div>

								</li>

								<?php } 

							} else {

								// no posts found

								}

							/* Restore original Post Data */

							wp_reset_postdata();

						?>

						</ul>

					</div>



					<div id="slide-right" class="span4">

						<h3><?php echo of_get_option('magz_sl_right_title'); ?></h3>

							<ul>

								<?php

									$args = array(

										'posts_per_page' => 4,

										'post_type' => array( 'post', 'page' ),

										'meta_key' => 'magz_topnews', // metabox ID (prefix) + field ID

										'meta_value' => 'on' // this is checked checkbox

									);



									// The Query

									$query = new WP_Query( $args );



									// The Loop

									if ( $query->have_posts() ) {

										$title = of_get_option('magz_sl_right_char_limit');

										while ( $query->have_posts() ) {

										$query->the_post(); ?>

											<li><a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark"><h4 class="post-title"><?php the_title_limit('', '...', true, $title); ?></h4></a></li>

										<?php	} 

									} else {

										// no posts found

										}

									/* Restore original Post Data */

									wp_reset_postdata();

								?>

							</ul><div class="clear"></div>

					</div>

				</div>

				<?php } ?>



				<?php if ( 1 == of_get_option('magz_home_top') ) { ?>

				<div id="home-top">

					<h3 class="title"><span><?php echo of_get_option('magz_home_top_title'); ?></span></h3>

					<ul class="bxslider">

						<?php

							$args = array(

								'posts_per_page' => -1,

								'post_type' => array( 'post', 'page' ),

								'meta_key' => 'magz_headline', // metabox ID (prefix) + field ID

								'meta_value' => 'on' // this is checked checkbox

							);



							// The Query

							$query = new WP_Query( $args );



							// The Loop

							if ( $query->have_posts() ) {

								while ( $query->have_posts() ) {

								$query->the_post(); ?>

									<li>

										<?php 

											if ( has_post_thumbnail() ) { ?>
												<a class="image_thumb_zoom" href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark">
												<?php the_post_thumbnail(); ?>
												</a>
											<?php } else { ?>
												<a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark">														
													<img src="<?php echo get_template_directory_uri(); ?>/images/thumb_225x136.png">
												</a>												
										<?php } ?>



<h4 class="post-title">



<?php if ( get_post_meta($post->ID, "magz2_posttype", true)=='1') { 

	echo '<img class="post-icon" src='.get_template_directory_uri().'/images/text.png>'; 

} elseif ( get_post_meta($post->ID, "magz2_posttype", true)=='2') {

	echo '<img class="post-icon" src='.get_template_directory_uri().'/images/image.png>';

} elseif ( get_post_meta($post->ID, "magz2_posttype", true)=='3') {

	echo '<img class="post-icon" src='.get_template_directory_uri().'/images/photo.png>';

} elseif ( get_post_meta($post->ID, "magz2_posttype", true)=='4') {

	echo '<img class="post-icon" src='.get_template_directory_uri().'/images/vid.png>';

 } ?>



<?php  $carousel_title = of_get_option('magz_carousel_char_limit'); ?>
	<a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark">
		<?php the_title_limit('', '...', true, $carousel_title); ?>	</a>	</h4>

										<div class="meta">

											<span class="date"><?php the_time( get_option ( 'date_format' ) ); ?></span>

											<?php echo PostRatings()->getControl(); ?>

										</div>

									</li>

								<?php	}

							} else {

								// no posts found

								}

							/* Restore original Post Data */

							wp_reset_postdata();

						?>

					</ul>

				</div>

				<?php } ?>



				<div id="home-middle" class="clearfix">

					<div class="left span6">

					<?php $first=0; ?>

					<?php

						$tlimit = of_get_option('magz_title_char_limit');

						$excerpt = of_get_option('magz_post_excerpt_limit');

						$mini_excerpt = of_get_option('magz_mini_excerpt_limit');

						$carousel_title = of_get_option('magz_carousel_char_limit');

						$cats = of_get_option('magz_halfleft_categories');

						$category = get_the_category();

						$catname = get_category($cats);

						$temp_query = $wp_query;

						$args = array(

							'posts_per_page' => 3,

							'post_type' => 'post',

							'paged' => $paged,

							'order' => 'DESC',

							'cat' => $cats

						);

						// The Query

						$query = new WP_Query( $args ); 

						
						if ( !is_wp_error( $catname ) ) {

							if ( of_get_option('magz_halffull_categories') ) {

								echo '<h3 class="title"><span>' . $catname->name . '</span></h3>';

							} else {

								echo '<h3 class="title"><span>' . $category[1]->name . '</span></h3>';

							} 
							
						}	
						
						
						?>



						<div class="row-fluid">	



						<?php if ( $query->have_posts() ) {

							while ( $query->have_posts() ) {

							$query->the_post();$first++; ?>



								<?php if ( 1 == $first  ) { ?>



									<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

										<a class="image_thumb_zoom" href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark">

										<?php if ( has_post_thumbnail() ) { 

											the_post_thumbnail('post-first'); 

										} else { ?>

											<img class="fl" src="<?php echo get_template_directory_uri(); ?>/images/thumb_371x177.png">

										<?php } ?>

										</a>

									

									<h4 class="post-title"><a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark"><?php the_title_limit('', '...', true, '35'); ?></a><span class="date"><?php the_time('j F Y') ?></span></h4>

									<p><?php echo get_excerpt($excerpt); ?></p>

									</article>

								<?php } else { ?>

									<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

										<div class="entry clearfix">

										<a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark">

										<?php 

											if ( has_post_thumbnail() ) { 

												the_post_thumbnail('thumbs', array('class' => 'thumb')); 

											} else { ?>

											<img src="<?php echo get_template_directory_uri(); ?>/images/thumb_91x55.png">

										<?php } ?>

										<h4 class="post-title"><?php the_title_limit('', '...', true, $tlimit); ?></h4></a>

										<p><?php echo get_excerpt($mini_excerpt); ?></p>

											<div class="meta">

												<span class="date"><?php the_time('j F Y') ?></span>

											</div>

										</div>

									</article>

								<?php } 



							} 

						} 

					?>

					</div></div>



					<div class="right span6">

						<?php $first=0; ?>

						<?php

							$cats = of_get_option('magz_halfright_categories');

							$category = get_the_category();

							$catname = get_category($cats);

							$temp_query = $wp_query;

							$args = array(

								'posts_per_page' => 3,

								'post_type' => 'post',

								'paged' => $paged,

								'order' => 'DESC',

								'cat' => $cats

							);

							// The Query

							$query = new WP_Query( $args ); 

								if ( !is_wp_error( $catname ) ) {

								if ( of_get_option('magz_halffull_categories') ) {

									echo '<h3 class="title"><span>' . $catname->name . '</span></h3>';

								} else {

									echo '<h3 class="title"><span>' . $category[1]->name . '</span></h3>';

								} 
							
							
							} ?>



							<div class="row-fluid">



							<?php if ( $query->have_posts() ) {

								while ( $query->have_posts() ) {

								$query->the_post();$first++; ?>



						<?php if ( 1 == $first ) { ?>

							<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

								<a class="image_thumb_zoom" href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark">

								<?php 

									if ( has_post_thumbnail() ) {

										the_post_thumbnail('post-first'); 

									} else { ?>

										<img src="<?php echo get_template_directory_uri(); ?>/images/thumb_371x177.png">

								<?php } ?></a>

								<h4 class="post-title"><a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark"><?php the_title_limit('', '...', true, $tlimit); ?></a><span class="date"><?php the_time('j F Y') ?></span></h4>

								<p><?php echo get_excerpt($excerpt); ?></p>

							</article>

						<?php } else { ?>

							<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

								<div class="entry clearfix">

									<a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark">

									<?php 

										if ( has_post_thumbnail() ) { 

											the_post_thumbnail('thumbs', array('class' => 'thumb')); 

										} else { ?>

											<img src="<?php echo get_template_directory_uri(); ?>/images/thumb_91x55.png">

									<?php } ?>

									<h4 class="post-title"><?php the_title_limit('', '...', true, $tlimit); ?></h4></a>

									<p><?php echo get_excerpt($mini_excerpt); ?></p>

									<div class="meta">

										<span class="date"><?php the_time('j F Y') ?></span>

									</div>

								</div>

							</article>

						<?php } 



							} 



							} 

						?>

					</div></div>

				</div>

				

			

				<div id="home-bottom" class="clearfix">

				

					<?php

						$cats = of_get_option('magz_halffull_categories');

						$category = get_the_category();

						$catname = get_category($cats);

						$temp_query = $wp_query; 

				
						
						if ( !is_wp_error( $catname ) ) {
							
							if ( of_get_option('magz_halffull_categories') ) {

								echo '<h3 class="title"><span>' . $catname->name . '</span></h3>';

							} else {

								echo '<h3 class="title"><span>' . $category[1]->name . '</span></h3>';

							} 
						
						}
						
						?>	

						

					<div class="row-fluid">	

				

					<div class="span6">



					<?php	$args = array(

							'posts_per_page' => 1,

							'post_type' => 'post',

							'paged' => $paged,

							'order' => 'DESC',

							'cat' => $cats

						);

						// The Query

						$query = new WP_Query( $args ); 



						// The Loop

						if ( $query->have_posts() ) {

							while ( $query->have_posts() ) {

							$query->the_post(); ?>



										<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

											<a class="image_thumb_zoom" href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark">

											<?php 

												if ( has_post_thumbnail() ) { 

													the_post_thumbnail('post-first'); 

												} else { ?>

													<img src="<?php echo get_template_directory_uri(); ?>/images/thumb_371x177.png">

											<?php } ?></a>

											<h4 class="post-title"><a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark"><?php the_title_limit('', '...', true, '35'); ?></a><span class="date"><?php the_time('j F Y') ?></span></h4>

											<p><?php echo get_excerpt($excerpt); ?></p>

										</article>

								<?php } 

							} 

						wp_reset_query();

					?>

					</div>



									

									

					<div class="span6">

					<?php	$args = array(

								'posts_per_page' => 3,

								'offset' => 1,

								'post_type' => 'post',

								'paged' => $paged,

								'order' => 'DESC',

								'cat' => $cats

							);

							// The Query

							$query = new WP_Query( $args ); 

							

							// The Loop

							if ( $query->have_posts() ) {

								while ( $query->have_posts() ) {

								$query->the_post(); ?>

							

										<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

											<div class="entry clearfix">

												<a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark">

												<?php 

													if ( has_post_thumbnail() ) { 

														the_post_thumbnail('thumbs', array('class' => 'thumb')); 

													} else { ?>

														<img src="<?php echo get_template_directory_uri(); ?>/images/thumb_91x55.png">

												<?php } ?>

												<h4 class="post-title"><?php the_title_limit('', '...', true, '35'); ?></h4></a>

												<p><?php echo get_excerpt($mini_excerpt); ?></p>

												<div class="meta">

													<span class="date"><?php the_time('j F Y') ?></span>

												</div>

											</div>

										</article>

								<?php } 

							} 

						wp_reset_query();

					?>

					</div>

					</div>

					

				</div>



			</div><!-- #main-left -->



			<?php get_sidebar(); ?>

			<div class="clearfix"></div>



			<?php if ( 1 == of_get_option('magz_home_bottom') ) { ?>

				<div id="gallery">

					<h3 class="title"><span><?php echo of_get_option('magz_home_bottom_title'); ?></span></h3>

					<ul class="gallery">

						<?php

							$args = array(

								'posts_per_page' => -1,

								'post_type' => array( 'galleries' )

							);

							// The Query

							$query = new WP_Query( $args );



							// The Loop

							if ( $query->have_posts() ) {

								while ( $query->have_posts() ) {

								$query->the_post(); ?>

									<li><a class="image_thumb_zoom" href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark">

										<?php 

											if ( has_post_thumbnail() ) { 

												the_post_thumbnail(); 

											} else { ?>

												<img src="<?php echo get_template_directory_uri(); ?>/images/thumb_225x136.png">

										<?php } ?></a>

										<a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark"><h4 class="post-title">



<?php if ( get_post_meta($post->ID, "magz2_posttype", true)=='1') { 

	echo '<img class="post-icon" src='.get_template_directory_uri().'/images/text.png>'; 

} elseif ( get_post_meta($post->ID, "magz2_posttype", true)=='2') {

	echo '<img class="post-icon" src='.get_template_directory_uri().'/images/image.png>';

} elseif ( get_post_meta($post->ID, "magz2_posttype", true)=='3') {

	echo '<img class="post-icon" src='.get_template_directory_uri().'/images/photo.png>';

} elseif ( get_post_meta($post->ID, "magz2_posttype", true)=='4') {

	echo '<img class="post-icon" src='.get_template_directory_uri().'/images/vid.png>';

 } ?>



<?php the_title_limit('', '...', true, $carousel_title); ?></h4></a>

										<div class="meta">

											<span class="date"><?php the_time('j F Y') ?></span>

											<?php echo PostRatings()->getControl(); ?>

										</div>

									</li>

								<?php	} 

							} else {

								// no posts found

								}

							/* Restore original Post Data */

							wp_reset_postdata();

						?>

					</ul>

				</div>

			<?php } ?>



		</div><!-- #main -->



	<?php get_footer(); ?>