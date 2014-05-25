<?php

/**
 *
 * @package WordPress
 * @subpackage Magazine
 */

get_header(); ?>

		<div id="main" class="row-fluid">
			<div id="main-left" class="span8">

<?php if (have_posts()) : ?>   
     <?php $paged = (get_query_var('paged')) ? get_query_var('paged') : 1; query_posts("paged=$paged"); ?>
        <?php while (have_posts()) : the_post(); ?>  
				<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
					<h2 class="entry-title">
						<span class="the_title"><a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark"><?php the_title(); ?></a></span>
						<span class="entry-cat"><?php the_category(','); ?></span>
					</h2>
					<?php do_action('after_post_title'); ?>
					<a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark"><?php the_post_thumbnail('single'); ?></a>
					<div class="entry-content">
					<?php the_excerpt(); ?>
					</div>
				</article>

		<?php endwhile; // end of the loop. ?>

	<?php else : ?>

		<article id="post-0" class="post no-results not-found">
			<div class="entry-content">
				<p><?php _e( 'Apologies, but no results were found for the requested archive. Perhaps searching will help find a related post.', 'magazine' ); ?></p>
				<?php get_search_form(); ?>
			</div><!-- .entry-content -->
		</article><!-- #post-0 -->

	<?php endif; ?>

<?php magz_pagination() ?>

</div><!-- #main-left -->

<?php get_sidebar(); ?>

<div class="clear"></div>

		</div><!-- #main -->

<?php get_footer(); ?>