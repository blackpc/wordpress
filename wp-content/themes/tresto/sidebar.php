<aside id="colRight" class="slideLeft">

<form  method="get" action="<?php bloginfo('url'); ?>" target="_blank">
<input name="s" id="form-query" value="" placeholder="Поиск по сайту"> 
<input id="form-querysub" type=submit value="">
</form>

<?php if(get_option('alltuts_popposts') == 'yes'){?>
<div class="rightBoxtumb">
<h2>Популярные записи</h2>
<div class="rightBoxtumbline"></div>
<ul>
<?php
$pc = new WP_Query('orderby=comment_count&posts_per_page=5'); ?>
<?php while ($pc->have_posts()) : $pc->the_post(); ?>
<li>
<div class="rightBoxshadowleft"></div>
<div class="rightBoxshadowright"></div>
<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_post_thumbnail('loopThumb'); ?></a>
<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a>
<p><?php the_time('j') ?> <?php the_time('M') ?> <?php the_time('Y') ?> / <a href="<?php the_permalink() ?>" title="<?php the_title(); ?>">Посмотреть</a></p>
</li>
<?php endwhile; ?>
</ul>
</div>
<?php }?>

<?php /* Виджеты сайтбара */
	if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar() ) : ?><?php endif; ?>

		</aside><!-- конец колрайт -->

