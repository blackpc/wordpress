<?php

function options_typography_get_os_fonts() {
	// OS Font Defaults
	$os_faces = array(
		'Arial, sans-serif' => 'Arial',
		'"Avant Garde", sans-serif' => 'Avant Garde',
		'Cambria, Georgia, serif' => 'Cambria',
		'Copse, sans-serif' => 'Copse',
		'Garamond, "Hoefler Text", Times New Roman, Times, serif' => 'Garamond',
		'Georgia, serif' => 'Georgia',
		'"Helvetica Neue", Helvetica, sans-serif' => 'Helvetica Neue',
		'Tahoma, Geneva, sans-serif' => 'Tahoma'
	);
	return $os_faces;
}

/**
 * Returns a select list of Google fonts
 * Feel free to edit this, update the fallbacks, etc.
 */

function options_typography_get_google_fonts() {
	// Google Font Defaults
	$google_faces = array(
		'Arvo, serif' => 'Arvo',
		'Copse, sans-serif' => 'Copse',
		'Droid Sans, sans-serif' => 'Droid Sans',
		'Droid Serif, serif' => 'Droid Serif',
		'Lobster, cursive' => 'Lobster',
		'Nobile, sans-serif' => 'Nobile',
		'Open Sans, sans-serif' => 'Open Sans',
		'Oswald, sans-serif' => 'Oswald',
		'Pacifico, cursive' => 'Pacifico',
		'Rokkitt, serif' => 'Rokkit',
		'PT Sans, sans-serif' => 'PT Sans',
		'Quattrocento, serif' => 'Quattrocento',
		'Raleway, cursive' => 'Raleway',				'Roboto, sans-serif' => 'Roboto',
		'Ubuntu, sans-serif' => 'Ubuntu',
		'Yanone Kaffeesatz, sans-serif' => 'Yanone Kaffeesatz',
		'Noticia Text, serif' => 'Noticia Text',
		'Noto Serif, serif' => 'Noto Serif'
	);
	return $google_faces;
}

/**
 * Checks font options to see if a Google font is selected.
 * If so, options_typography_enqueue_google_font is called to enqueue the font.
 * Ensures that each Google font is only enqueued once.
 */
 
if ( !function_exists( 'options_typography_google_fonts' ) ) {
	function options_typography_google_fonts() {
		$all_google_fonts = array_keys( options_typography_get_google_fonts() );
		// Define all the options that possibly have a unique Google font
		$general_font = of_get_option('magz_general_font', array( 'size' => '12px', 'face' => 'Rokkitt, serif', 'style' => 'normal', 'color' => '#5c5c5c'));
		$h1_font = of_get_option('magz_h1_font', array( 'size' => '12px', 'face' => 'Rokkitt, serif', 'style' => 'normal', 'color' => '#5c5c5c'));
		$h2_font = of_get_option('magz_h1_font', array( 'size' => '12px', 'face' => 'Rokkitt, serif', 'style' => 'normal', 'color' => '#5c5c5c'));

		// Get the font face for each option and put it in an array
		$selected_fonts = array(


			$h1_font['face'], 
			$h2_font['face'], 
			$general_font['face']); 

		// Remove any duplicates in the list
		$selected_fonts = array_unique($selected_fonts);
		// Check each of the unique fonts against the defined Google fonts
		// If it is a Google font, go ahead and call the function to enqueue it
		foreach ( $selected_fonts as $font ) {
			if ( in_array( $font, $all_google_fonts ) ) {
				options_typography_enqueue_google_font($font);
			}
		}
	}
}

add_action( 'wp_enqueue_scripts', 'options_typography_google_fonts' );


/**
 * Enqueues the Google $font that is passed
 */
 
function options_typography_enqueue_google_font($font) {
	$font = explode(',', $font);
	$font = $font[0];
	// Certain Google fonts need slight tweaks in order to load properly
	// Like our friend "Raleway"
	if ( $font == 'Raleway' )
		$font = 'Raleway:100';
	$font = str_replace(" ", "+", $font);
	wp_enqueue_style( "options_typography_$font", "http://fonts.googleapis.com/css?family=$font", false, null, 'all' );
}

/* 
 * Outputs the selected option panel styles inline into the <head>
 */
 
function options_typography_styles() {
     $output = '';
     $input = '';
	 
     if ( of_get_option( 'magz_general_font' ) ) {
          $input = of_get_option( 'magz_general_font' );
	  $output .= options_typography_general_font_styles( of_get_option( 'magz_general_font' ) , '.magz_general_font');
     }
	 
     if ( of_get_option( 'magz_h1_font' ) ) {
          $input = of_get_option( 'magz_h1_font' );
	  $output .= options_typography_h1_styles( of_get_option( 'magz_h1_font' ) , '.magz_h1_font');
     }
	 
     if ( of_get_option( 'magz_h2_font' ) != '' ) {
          $input = of_get_option( 'magz_h2_font' );
	  $output .= options_typography_h2_styles( of_get_option( 'magz_h2_font' ) , '.magz_h2_font');
     }
	 
     if ( of_get_option( 'magz_h3_font' ) != '' ) {
          $input = of_get_option( 'magz_h3_font' );
	  $output .= options_typography_h3_styles( of_get_option( 'magz_h3_font' ) , '.magz_h3_font');
     }
	 
     if ( of_get_option( 'magz_h4_font' ) != '' ) {
          $input = of_get_option( 'magz_h4_font' );
	  $output .= options_typography_h4_styles( of_get_option( 'magz_h4_font' ) , '.magz_h4_font');
     }
	 
     if ( of_get_option( 'magz_h5_font' ) != '' ) {
          $input = of_get_option( 'magz_h5_font' );
	  $output .= options_typography_h5_styles( of_get_option( 'magz_h5_font' ) , '.magz_h5_font');
     }

     if ( of_get_option( 'site_title_font' ) ) {
          $input = of_get_option( 'site_title_font' );
	  $output .= options_typography_site_title_styles( of_get_option( 'site_title_font' ) , '.site_title_font');
     }

     if ( of_get_option( 'site_desc_font' ) ) {
          $input = of_get_option( 'site_desc_font' );
	  $output .= options_typography_site_desc_styles( of_get_option( 'site_desc_font' ) , '.site_desc_font');
     }
	  
     if ( $output != '' ) {
	$output = "\n<style>\n" . $output . "</style>\n";
	echo $output;
     }
}
add_action('wp_head', 'options_typography_styles');


/* 
 * Returns a typography option in a format that can be outputted as inline CSS
 */


 function options_typography_general_font_styles($option, $selectors) {
		$selectors = 'body';
		$output = $selectors . ' {';
		$output .= ' color:' . $option['color'] .'; ';
		$output .= 'font-family:' . $option['face'] . '; ';
		$output .= 'font-weight:' . $option['style'] . '; ';
		$output .= 'font-size:' . $option['size'] . '; ';
		$output .= '}';
		$output .= "\n";
		return $output;
}

function options_typography_h1_styles($option, $selectors) {
		$selectors = 'h1';
		$output = $selectors . ' {';
		$output .= ' color:' . $option['color'] .'; ';
		$output .= 'font-family:' . $option['face'] . '; ';
		$output .= 'font-weight:' . $option['style'] . '; ';
		$output .= 'font-size:' . $option['size'] . '; ';
		$output .= '}';
		$output .= "\n";
		return $output;
}

function options_typography_h2_styles($option, $selectors) {
		$selectors = 'h2';
		$output = $selectors . ' {';
		$output .= ' color:' . $option['color'] .'; ';
		$output .= 'font-family:' . $option['face'] . '; ';
		$output .= 'font-weight:' . $option['style'] . '; ';
		$output .= 'font-size:' . $option['size'] . '; ';
		$output .= '}';
		$output .= "\n";
		return $output;
}

function options_typography_h3_styles($option, $selectors) {
		$selectors = 'h3';
		$output = $selectors . ' {';
		$output .= ' color:' . $option['color'] .'; ';
		$output .= 'font-family:' . $option['face'] . '; ';
		$output .= 'font-weight:' . $option['style'] . '; ';
		$output .= 'font-size:' . $option['size'] . '; ';
		$output .= '}';
		$output .= "\n";
		return $output;
}

function options_typography_h4_styles($option, $selectors) {
		$selectors = 'h4';
		$output = $selectors . ' {';
		$output .= ' color:' . $option['color'] .'; ';
		$output .= 'font-family:' . $option['face'] . '; ';
		$output .= 'font-weight:' . $option['style'] . '; ';
		$output .= 'font-size:' . $option['size'] . '; ';
		$output .= '}';
		$output .= "\n";
		return $output;
}

function options_typography_h5_styles($option, $selectors) {
		$selectors = 'h5';
		$output = $selectors . ' {';
		$output .= ' color:' . $option['color'] .'; ';
		$output .= 'font-family:' . $option['face'] . '; ';
		$output .= 'font-weight:' . $option['style'] . '; ';
		$output .= 'font-size:' . $option['size'] . '; ';
		$output .= '}';
		$output .= "\n";
		return $output;
}

 
function options_typography_site_title_styles($option, $selectors) {
		$selectors = '#header h1.site-title a';
		$output = $selectors . ' {';
		$output .= ' color:' . $option['color'] .'; ';
		$output .= 'font-family:' . $option['face'] . '; ';
		$output .= 'font-weight:' . $option['style'] . '; ';
		$output .= 'font-size:' . $option['size'] . '; ';
		$output .= '}';
		$output .= "\n";
		return $output;
}

function options_typography_site_desc_styles($option, $selectors) {
		$selectors = 'h2.site-description';
		$output = $selectors . ' {';
		$output .= ' color:' . $option['color'] .'; ';
		$output .= 'font-family:' . $option['face'] . '; ';
		$output .= 'font-weight:' . $option['style'] . '; ';
		$output .= 'font-size:' . $option['size'] . '; ';
		$output .= '}';
		$output .= "\n";
		return $output;
}




add_action( 'wp_head', 'magz_custom_css_hook' );
function magz_custom_css_hook( ) {
		echo '<style type="text/css" >';
	
	$background = of_get_option('body_bg');
	if ( $background['color'] !='' || $background['image'] !='' ) {
		echo 'body {';
			if ($background['color']) {   
			echo '
			background-color: ' .$background['color']. ';';
			}

			if ($background['image']) {
			echo '
			background: url('.$background['image']. ') ';
				echo ''.$background['repeat']. ' ';
				echo ''.$background['position']. ' ';
				echo ''.$background['attachment']. ';';
			} 
		echo '
		}';
	} 

	
	$header = of_get_option('header_bg');
	if ( $header['color'] !='' || $header['image'] !='' ) {
		echo '#header {';
			if ($header['color']) {   
			echo '
			background-color: ' .$header['color']. ';';
			}

			if ($header['image']) {
			echo '
			background: url('.$header['image']. ') ';
				echo ''.$header['repeat']. ' ';
				echo ''.$header['position']. ' ';
				echo ''.$header['attachment']. ';';
			} 
		echo '}';
	}

	$wrapper = of_get_option('wrapper_bg');
	if ( $wrapper['color'] !='' || $wrapper['image'] !='' ) {
		echo '#content {';
			if ($wrapper['color']) {   
			echo '
			background-color: ' .$wrapper['color']. ';';
			}

			if ($wrapper['image']) {
			echo '
			background: url('.$wrapper['image']. ') ';
				echo ''.$wrapper['repeat']. ' ';
				echo ''.$wrapper['position']. ' ';
				echo ''.$wrapper['attachment']. ';';
			} 
		echo '}';
	}

	$footwidget = of_get_option('footwidget_bg');
	if ( $footwidget['color'] !='' || $footwidget['image'] !='' ) {
		echo '#footer-widgets {';
			if ($footwidget['color']) {   
			echo '
			background-color: ' .$footwidget['color']. ';';
			}

			if ($footwidget['image']) {
			echo '
			background: url('.$footwidget['image']. ') ';
				echo ''.$footwidget['repeat']. ' ';
				echo ''.$footwidget['position']. ' ';
				echo ''.$footwidget['attachment']. ';';
			} 
		echo '}';
	}

	$footer = of_get_option('footer_bg');
	if ( $footer['color'] !='' || $footer['image'] !='' ) {
		echo '#site-info {';
			if ($footer['color']) {   
			echo '
			background-color: ' .$footer['color']. ';';
			}

			if ($footer['image']) {
			echo '
			background: url('.$footer['image']. ') ';
				echo ''.$footer['repeat']. ' ';
				echo ''.$footer['position']. ' ';
				echo ''.$footer['attachment']. ';';
			} 
		echo '}';
	}

	if ( of_get_option('magz_h1_bg') || of_get_option('magz_h1_color') ) {
		$h1bg = of_get_option('magz_h1_bg');
		$h1color = of_get_option('magz_h1_color');
			echo 'h1.entry-title span {';
				if ( of_get_option('magz_h1_bg') ) {	
					echo 'background: ' .$h1bg. ';';
				}
				if ( of_get_option('magz_h1_color') ) {
					echo 'color: ' .$h1color. ';';
				}
			echo '}';
	}


	if ( of_get_option('magz_httitle_bg') || of_get_option('magz_httitle_color') ) {
		$hometopbg = of_get_option('magz_httitle_bg');
		$hometopcolor = of_get_option('magz_httitle_color');
		if ( of_get_option('magz_httitle_bg') ) {	
			echo '#home-top .title span {';
			echo 'background: ' .$hometopbg. ';';
		}
		if ( of_get_option('magz_httitle_color') ) { 
			echo 'color: ' .$hometopcolor. ';';
		}
    echo '}';
	}


	if ( of_get_option('magz_catleft_title_bg') || of_get_option('magz_catleft_title_color') ) {
		$catleftbg = of_get_option('magz_catleft_title_bg');
		$catleftcolor = of_get_option('magz_catleft_title_color');
		echo '#home-middle .left .title span {';
		echo 'background: ' .$catleftbg. ';';
		echo 'color: ' .$catleftcolor. ';';
		echo '}';
	}

	if ( of_get_option('magz_catright_title_bg') || of_get_option('magz_catright_title_color') ) {	
		$catrightbg = of_get_option('magz_catright_title_bg');
		$catrightcolor = of_get_option('magz_catright_title_color');
		echo '#home-middle .right .title span {';
		echo 'background: ' .$catrightbg. ';';
		echo 'color: ' .$catrightcolor. ';';
		echo '}';
	}

	if ( of_get_option('magz_catfull_title_bg') || of_get_option('magz_catfull_title_color') ) {
		$catfullbg = of_get_option('magz_catfull_title_bg');
		$catfullcolor = of_get_option('magz_catfull_title_color');
		echo '#home-bottom .title span {';
		echo 'background: ' .$catfullbg. ';';
		echo 'color: ' .$catfullcolor. ';';
		echo '}';
	}
	
	if ( of_get_option('magz_galtitle_bg') || of_get_option('magz_galtitle_color') ) {
		$galtitlebg = of_get_option('magz_galtitle_bg');
		$galtitlecolor = of_get_option('magz_galtitle_color');
		echo '#gallery .title span {';
		echo 'background: ' .$galtitlebg. ';';
		echo 'color: ' .$galtitlecolor. ';';
		echo '}';
	}
	
	if ( of_get_option('magz_sl_right_bg') || of_get_option('magz_sl_right_color') ) {
		$sl_rightbg = of_get_option('magz_sl_right_bg');
		$sl_rightcolor = of_get_option('magz_sl_right_color');
		echo '#slide-right h3 {';
		echo 'background: ' .$sl_rightbg. ';';
		echo 'color: ' .$sl_rightcolor. ';';
		echo '}';
	}

	if ( of_get_option('magz_link_color') || of_get_option('magz_link_decor') ) {	
		$link_color = of_get_option('magz_link_color');
		$link_decor = of_get_option('magz_link_decor');
		echo 'a {';
		echo 'color: ' .$link_color. ';';
		echo 'text-decoration: ' .$link_decor. ';';
		echo '}';
	}

	if ( of_get_option('magz_link_hover_color') || of_get_option('magz_link_hover_decor') ) {
		$lhover_color = of_get_option('magz_link_hover_color');
		$lhover_decor = of_get_option('magz_link_hover_decor');
		echo 'a:hover, a:focus {';
		echo 'color: ' .$lhover_color. ';';
		echo 'text-decoration: ' .$lhover_decor. ';';
		echo '}';
	}

	if ( of_get_option('magz_nav_link_color') || of_get_option('magz_link_decor') ) {	
		$navlink_color = of_get_option('magz_nav_link_color');
		echo '.navbar .nav > li > a {';
		echo 'color: ' .$navlink_color. ' !important;';
		echo '}';
	}
	/*
	if ( of_get_option('magz_nav_link_hover_color') && 	of_get_option('magz_link_hover_decor') ) {
		$navlhover_color = of_get_option('magz_nav_link_hover_color');
		echo '.navbar .nav > li > a:hover, .navbar .nav > li > a:focus {';
		echo 'color: ' .$navlhover_color. ' !important;';
		echo '}';
	}	*/

		echo '</style>';
}


?>