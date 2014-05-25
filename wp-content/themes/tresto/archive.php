<?php get_header(); ?>

<!-- Начало врапер -->
<section id="wrapper">
<div id="middle">
<div id="content">
<div id="colLeft">

<!-- Архивы -->				
						<?php if(is_month()) { ?>
						<div id="archive-title">
						<h2>Просмотр статей за "<strong><?php the_time('F, Y') ?></strong>"</h2>
						</div>
						<?php } ?>
						<?php if(is_category()) { ?>
						<div id="archive-title">
						<h2>Категория "<strong><?php $current_category = single_cat_title("", true); ?></strong>"</h2>
						</div>
						<?php } ?>
						<?php if(is_tag()) { ?>
						<div id="archive-title">
						<h2><span> Метка "<strong><?php wp_title('',true,''); ?></strong>"</h2>
						</div>
						<?php } ?>
						<?php if(is_author()) { ?>
						<div id="archive-title">
						<h2>Статьи "<strong><?php wp_title('',true,''); ?></strong>"</h2>
						</div>
						<?php } ?>
<!-- /Архивы -->

<!--########## Начало последних постов  ############-->

<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

<!-- Начало .postBox -->

<article id="postBox" class="slideRight">

<div class="postThumb"><a href="<?php the_permalink() ?>"><?php the_post_thumbnail(); ?></a></div>

<h2><a href="<?php the_permalink() ?>"><?php the_title(); ?></a></h2>

<div class="info"> 
Автор: <?php the_author(); ?> / Опубликовано: <?php the_time('j') ?> <?php the_time('M') ?> <?php the_time('Y') ?> / <?php comments_popup_link('Нет комментариев', '1 комментарий ', 'Комментариев: %'); ?>
</div>

<div class="textPreview">

<?php the_excerpt(); ?>

</div>

<div class="more-link"><a href="<?php the_permalink() ?>" title="<?php the_title(); ?>" >Далее...</a></div>

</article><!-- Конец .postBox -->

<!--########## Конец последних постов  ############-->

<?php endwhile; ?>
<?php else : ?>

<h1>А здесь нет ничего :( 404 </h1>
                
<?php endif; ?>

<!--<div class="navigation">
						<div class="alignleft"><?php next_posts_link() ?></div>
						<div class="alignright"><?php previous_posts_link() ?></div>
			</div>-->
			<?php if (function_exists("emm_paginate")) {
				emm_paginate();
			} ?>
</div>
		<!-- Конец #colLeft -->
		
<?php get_sidebar(); ?>	
<?php get_footer(); ?>
