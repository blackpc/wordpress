<?php
/**
 * Template Name: Full-width Template
 *
 * This is the template that displays full-width pages with no sidebar.
 * Use this page template to remove the sidebar from any page.
 *
 * @package WordPress
 * @subpackage Magazine
 */

get_header(); ?>

	<div id="main" class="row-fluid">
	
			<?php while ( have_posts() ) : the_post(); ?>
				<?php get_template_part( 'content', 'page' ); ?>
				<?php comments_template( '', true ); ?>
			<?php endwhile; // end of the loop. ?>
		
		<div class="clearfix"></div>
		
	</div><!-- #main -->

<?php get_footer(); ?>