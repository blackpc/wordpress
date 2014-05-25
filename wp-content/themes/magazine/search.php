<?php
/**
 * The template for displaying Archive pages.
 *
 * @package WordPress
 * @subpackage Magazine
 */

get_header(); ?>

		<div id="main" class="row-fluid">

			<div id="main-left" class="span8">

	<?php if ( have_posts() ) : ?>
	
	<header class="entry-header">
		<h3><?php printf( __( 'Результат поиска: %s', 'magazine' ), '<span>' . get_search_query() . '</span>' ); ?></h3>
	</header><!-- .entry-header -->
	
		<?php  			global $post;			$postID = $post->ID;		
			$categories = get_the_category($postID);
			$catname = get_the_category($postID);
			while ( have_posts() ) : the_post();
		?>
		
				<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
					<h2 class="entry-title">
						<span class="the_title"><a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Ссылка на %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark"><?php the_title(); ?></a></span>
						<span class="entry-cat"><?php the_category(','); ?></span>
					</h2>

					<?php do_action('after_post_title'); ?>											<a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Ссылка на %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark"><?php the_post_thumbnail('single'); ?></a>
					
					<div class="entry-content">
					<?php the_excerpt(); ?>
					</div>
		
				</article>
				
		<?php endwhile; // end of the loop. ?>
		
	<?php else : ?>
	
		<article id="post-0" class="post no-results not-found">
			<div class="entry-content">
				<p><?php _e( 'Извинения, но ничего не найдено. Попробуйте искать по другим ключевым словам.', 'magazine' ); ?></p>
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