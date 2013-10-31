<?php
get_header();
?>

<!-- Начало врапер -->
<section id="wrapper">
<div id="middle">
<div id="content">
<div id="colLeft">

<!-- Begin #colLeft -->
		
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
		<!-- Begin .postBox -->

<article id="singlecont" class="slideRight">

<div class="breadcrumb"><?php the_breadcrumb();?></div>

<h1><?php the_title(); ?></h1>

<div class="infocont"><span> Разместил  <?php the_author_posts_link(); ?>, <?php the_time('j') ?> <?php the_time('M') ?>.<?php the_time('Y') ?> / <?php comments_popup_link('Нет комментариев', '1 комментарий ', 'Комментариев: %'); ?></span></a></div>

<div class="cont">
<?php the_content(); ?>
</div>

<?php if(get_option('alltuts_show') == 'yes'){?>
<div class="nextpostlink"><?php next_post_link('%link',''); ?></div>
<div class="prepostlink"><?php previous_post_link('%link',''); ?></div>
<?php }?>

<div class="postTags"><?php the_tags($before, '', $sep, $after); ?></div>

<!-- Похожие посты-->
<div class="relatedPosts">
                                                       
							
                                                        <?php 
							$backup = $post;
							$tags = wp_get_post_tags($post->ID);
							if ($tags) {
								$tag_ids = array();
								foreach($tags as $individual_tag) $tag_ids[] = $individual_tag->term_id;
							
								$args=array(
									'tag__in' => $tag_ids,
									'post__not_in' => array($post->ID),
									'showposts'=>3, // Number of related posts that will be shown.
									'caller_get_posts'=>1
								);
								$my_query = new wp_query($args);
								if( $my_query->have_posts() ) {
									echo '<ul><h2>Посты по теме</h2>';
									while ($my_query->have_posts()) {
										$my_query->the_post();
									?>
										<li><?php the_post_thumbnail('relatedThumb'); ?><a href="<?php the_permalink() ?>" rel="bookmark" title="Перейти к записи <?php the_title_attribute(); ?>"><?php the_title(); ?></a></li>
									<?php
									}
									echo '</ul>';
								}
							}
							$post = $backup;
							wp_reset_query();
							 ?>
				</div>			
                             <!--Конец Похожие посты-->

<?php comments_template(); ?>		
	
</div>

<?php endwhile; else: ?>

		<p>Извините, но Вы ищете то чего здесь нет.</p>

	<?php endif; ?>

</article><!-- Конец .синглконтент -->
		
			
		<!-- Конец #colLeft -->

<?php get_sidebar(); ?>	
<?php get_footer(); ?>
