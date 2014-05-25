<?php
/**
 * The Template for displaying all single posts.
 *
 * @package WordPress
 * @subpackage Magazine
 */

get_header(); ?>

		<div id="main" class="row-fluid">

			<div id="main-left" class="span8">

			<?php 				global $post;								$postID = $post->ID;			
				$categories = get_the_category($postID);
				$catname = get_the_category($postID);
				while ( have_posts() ) : the_post(); ?>

					<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
						<h2 class="entry-title">
							<span class="the_title"><?php the_title(); ?></span>
							<span class="entry-cat"><?php the_category(','); ?></span>
						</h2>

						<?php 
							do_action('after_post_title');
							the_post_thumbnail('single'); 
						?>
					
						<div class="entry-content">

							<?php the_content( __( 'Продолжить чтение <span class="meta-nav">&rarr;</span>', 'magazine' ) ); ?>																											<?php magazine_post_ads(); ?>
							
<?php
wp_link_pages(array('before' => '<div class="page-link">', 'after' => '','next_or_number' => 'next', 'nextpagelink' => '', 'previouspagelink' => '<span class="prev">&laquo; Предыдущие</span>'));
wp_link_pages(array('before' => '','after'=>'','next_or_number' => 'number'));
wp_link_pages(array('before' => '', 'after' => '</div>','next_or_number' => 'next', 'nextpagelink' => '<span class="next">Следующие &raquo;</span>', 'previouspagelink' => '')); 
?>
						</div>
						<?php wpb_set_post_views(get_the_ID()); ?>
	
					</article>


	        <div class="post-entries">
	            <div class="nav-prev fl"><?php previous_post_link_plus( array('max_length' => 25, 'format' => '%link', 'link' => '<span>&laquo;</span> %title') ); ?></div>
	            <div class="nav-next fr"><?php next_post_link_plus( array('max_length' => 25, 'format' => '%link', 'link' => '%title <span>&raquo;</span>') ); ?></div>
	            <div class="clearfix"></div>
	        </div>

					<?php comments_template(); ?>

				<?php endwhile; // end of the loop. ?>

			</div>
			
			<?php get_sidebar(); ?>
			<div class="clear"></div>

		</div><!-- #main -->

<?php get_footer(); ?>