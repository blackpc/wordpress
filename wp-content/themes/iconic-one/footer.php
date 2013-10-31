<?php
/**
 * Footer section template.
 * @package WordPress
 * @subpackage Iconic_One
 * @since Iconic One 1.0
 */
?>
	</div><!-- #main .wrapper -->
	<footer id="colophon" role="contentinfo">
		<div class="site-info">
		<div class="footercopy"><?php echo get_theme_mod( 'textarea_copy', 'custom footer text left' ); ?></div>
		<div class="footercredit"><?php echo get_theme_mod( 'custom_text_right', 'custom footer text right' ); ?></div>
		</div><!-- .site-info -->
		</footer><!-- #colophon -->
		<div class="site-wordpress">
				<a href="http://wp-templates.ru/">шаблоны сайтов</a>, <a href="http://searchtimes.ru/">настройка wordpress</a>
				</div><!-- .site-info -->
				<div class="clear"></div>
</div><!-- #page -->

<?php wp_footer(); ?>
</body>
</html>