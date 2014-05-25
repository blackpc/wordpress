<?php
/**
 *
 * Template Name: Contact Template
 *
 * The template for displaying Contact page.
 *
 * @package WordPress
 * @subpackage Magazine
 */

get_header(); ?>

		<div id="main" class="row-fluid">

			<div id="main-left" class="span8">
	
			<?php while ( have_posts() ) : the_post(); ?>
				<?php get_template_part( 'content', 'contact' ); ?>
				<?php comments_template( '', true ); ?>
			<?php endwhile; // end of the loop. ?>

		</div><!-- #main-left -->
		
		<?php get_sidebar(); ?>
		
		<div class="clearfix"></div>
		
	</div><!-- #main -->

<?php get_footer(); ?>