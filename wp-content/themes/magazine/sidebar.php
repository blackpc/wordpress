<?php
/**
 * The sidebar containing the main widget area.
 *
 * If no active widgets in sidebar, let's hide it completely.
 *
 * @package WordPress
 * @subpackage Magazine
 * 
 */
?>


		<div id="sidebar" class="span4">
		
		
			<?php magazine_sidebar_ads(); ?>
			
		
			<?php if ( is_home() || is_front_page() ) { 
			
				if ( is_active_sidebar( 'sidebar-home' ) ) {

						dynamic_sidebar( 'sidebar-home' ); 
						
				}
				
			} else {
			
				if ( is_active_sidebar( 'sidebar' ) ) {

						dynamic_sidebar( 'sidebar' ); 
				
				}
				
			} ?>
				
		</div>
