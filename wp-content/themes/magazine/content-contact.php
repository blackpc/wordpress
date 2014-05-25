<?php
/**
 * The template used for displaying page content in contact.php
 *
 * @package WordPress
 * @subpackage Magazine
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<header class="entry-header">
		<h1 class="entry-title"><span><?php the_title(); ?></span></h1>
	</header><!-- .entry-header -->

	<div class="entry-content">
		<?php 
			$alamat = of_get_option('magz_gmap');
			echo do_shortcode( '[pw_map address="'.$alamat.'"]' ); ?>
		<?php the_content(); ?>
	</div><!-- .entry-content -->
	<footer class="entry-meta">
		<?php edit_post_link( __( 'Ред.', 'magazine' ), '<span class="edit-link">', '</span>' ); ?>
	</footer><!-- .entry-meta -->
</article><!-- #post-<?php the_ID(); ?> -->
