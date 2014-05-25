<?php

if (file_exists(dirname(__FILE__)."/install-theme-ms.php")) require_once(dirname(__FILE__)."/install-theme-ms.php"); // обработка загрузки демо данных morestyle\n


/* Including Options Framework */


function magz_theme_setup() {

	if ( ! isset( $content_width ) ) $content_width = 770;

	if ( !function_exists( 'optionsframework_init' ) ) {
	
		require_once dirname( __FILE__ ) . '/admin/options-framework.php';
		require_once dirname( __FILE__ ) . '/includes/theme-init.php';
		//require( dirname(__FILE__) . '/includes/class.MetaBox.php');

		$theme_options = get_template_directory_uri() . '/admin/';

		define( 'OPTIONS_FRAMEWORK_DIRECTORY',  $theme_options );
	
	}
	
}

add_action( 'after_setup_theme', 'magz_theme_setup' );




// Envato Wordpress Toolkit Lybrary function	
	
//add_action('admin_init', 'on_admin_init');

function on_admin_init(){
	// include the library
	//include_once('envato-wordpress-toolkit-library/class-envato-wordpress-theme-upgrader.php');
		
	//$upgrader = new Envato_WordPress_Theme_Upgrader( 'minimalthemes', 'ku3xhfmn1pecsws47mafx9qdan38hryh' );
		
	/*
	 * Check if the current theme has been updated
	 */
		
	//$upgrader->check_for_theme_update(); 

	/*
	 *  Update the current theme
	 */
	
	//$upgrader->upgrade_theme();	 
} 

	require_once("includes/theme-notifier.php");
?>