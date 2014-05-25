<?php
/**
 * The template for displaying the footer.
 *
 * @package WordPress
 * @subpackage Magazine
 */
?>
	</div><!-- #content -->

	<footer id="footer" class="row-fluid">

	<?php if ( is_active_sidebar( 'footer1' ) || is_active_sidebar( 'footer2' ) || is_active_sidebar( 'footer3' ) || is_active_sidebar( 'footer4' ) ) : ?>

		<div id="footer-widgets" class="container">
		
			<div class="footer-widget span3 block1">
				<?php dynamic_sidebar( 'footer1' ); ?>
			</div>
			
			<div class="footer-widget span3 block2">
				<?php dynamic_sidebar( 'footer2' ); ?>
			</div>
			
			<div class="footer-widget span3 block3">
				<?php dynamic_sidebar( 'footer3' ); ?>
			</div>
			
			<div class="footer-widget span3 block4">
				<?php dynamic_sidebar( 'footer4' ); ?>
			</div>
			
			<div class="footer-widget span6 block5">
				<?php if ( 1 == of_get_option('magz_footer_blok5') ) { ?>
					<img class="footer-logo" src="<?php echo of_get_option('magz_footer_logo'); ?>" alt="<?php bloginfo('name'); ?>">
					<div class="footer-text">
						<?php echo of_get_option('magz_footer_logo_text'); ?>
					</div><div class="clearfix"></div>
				<?php } ?>
			</div>

		</div>

	<?php endif; ?>

		<div id="site-info" class="container">
		
			<div id="footer-nav" class="fr">
				<?php
					if ( function_exists( 'has_nav_menu' ) && has_nav_menu( 'footer' ) ) {
						wp_nav_menu( array( 'depth' => 6, 'sort_column' => 'menu_order', 'theme_location' => 'footer' ) );
					} else {
						wp_list_pages( 'sort_column=menu_order&depth=6&title_li=' ); ?>
				<?php } ?>
			</div>

			<div id="credit" class="fl">
				<?php 
					if ( 1 == of_get_option('magz_footer_credit') ) { 
						echo of_get_option('magz_footer_credit_text');
					} else { ?>
						<p>© 2013 Работает на  <a target="_blank" href="http://morestyle.ru">WordPress</a>. Все права защищены.</p>
				<?php } ?>
			</div>

		</div><!-- .site-info -->
		
	</footer>

</div><!-- #wrapper -->

<?php wp_footer(); ?>

</body>
</html>