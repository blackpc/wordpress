<?php
/**
 * A unique identifier is defined to store the options in the database and reference them from the theme.
 * By default it uses the theme name, in lowercase and without spaces, but this can be changed if needed.
 * If the identifier changes, it'll appear as if the options have been reset.
 */

function optionsframework_option_name() {

	// This gets the theme name from the stylesheet
	$themename = get_option( 'stylesheet' );
	$themename = preg_replace("/\W/", "_", strtolower($themename) );

	$optionsframework_settings = get_option( 'optionsframework' );
	$optionsframework_settings['id'] = $themename;
	update_option( 'optionsframework', $optionsframework_settings );
}

/**
 * Defines an array of options that will be used to generate the settings page and be saved in the database.
 * When creating the 'id' fields, make sure to use all lowercase and no spaces.
 *
 * If you are making your theme translatable, you should replace 'magz'
 * with the actual text domain for your theme.  Read more:
 * http://codex.wordpress.org/Function_Reference/load_theme_textdomain
 */

function optionsframework_options() {

	// Test data
	$test_array = array(
		'one' => __('One', 'magz'),
		'two' => __('Two', 'magz'),
		'three' => __('Three', 'magz'),
		'four' => __('Four', 'magz'),
		'five' => __('Five', 'magz')
	);

	// Multicheck Array
	$multicheck_array = array(
		'one' => __('French Toast', 'magz'),
		'two' => __('Pancake', 'magz'),
		'three' => __('Omelette', 'magz'),
		'four' => __('Crepe', 'magz'),
		'five' => __('Waffle', 'magz')
	);

	// Multicheck Defaults
	$multicheck_defaults = array(
		'one' => '1',
		'five' => '1'
	);

	// Background Defaults
	$background_defaults = array(
		'color' => '',
		'image' => '',
		'repeat' => 'repeat',
		'position' => 'top center',
		'attachment'=>'scroll' );
		
	// Typography Defaults
	$typography_defaults = array(
		'size' => '15px',
		'face' => 'georgia',
		'style' => 'bold',
		'color' => '#bada55' );
		
	// Typography Options
	$typography_options = array(
		'sizes' => array( '6','12','14','16','20' ),
		'faces' => array( 'Helvetica Neue' => 'Helvetica Neue','Arial' => 'Arial' ),
		'styles' => array( 'normal' => 'Normal','bold' => 'Bold' ),
		'color' => false
	);
	
	$typography_mixed_fonts = array_merge( options_typography_get_os_fonts() , options_typography_get_google_fonts() );
asort($typography_mixed_fonts);

	// Pull all the categories into an array
	$options_categories = array();
	$options_categories_obj = get_categories();
	foreach ($options_categories_obj as $category) {
		$options_categories[$category->cat_ID] = $category->cat_name;
	}
	
	// Pull all tags into an array
	$options_tags = array();
	$options_tags_obj = get_tags();
	foreach ( $options_tags_obj as $tag ) {
		$options_tags[$tag->term_id] = $tag->name;
	}


	// Pull all the pages into an array
	$options_pages = array();
	$options_pages_obj = get_pages('sort_column=post_parent,menu_order');
	$options_pages[''] = 'Select a page:';
	foreach ($options_pages_obj as $page) {
		$options_pages[$page->ID] = $page->post_title;
	}

	// If using image radio buttons, define a directory path
	$imagepath =  get_template_directory_uri() . '/images/';
	
	$prefix = 'magz_';

	$options = array();

	$options[] = array(
		'name' => __('General', 'magz'),
		'type' => 'heading');	
			
		
	$options[] = array(
		'name' => __('Logo', 'magz'),
		'desc' => __('Website\'s logo.', 'magz'),
		'id' => $prefix . 'logo',
		'std'   => '',
		'type' => 'upload');		
		
		
	$options[] = array(
		'name' => __('Favicon', 'magz'),
		'desc' => __('Website\'s favicon image.', 'magz'),
		'id' => $prefix . 'favicon',
		'type' => 'upload');	

		
	$options[] = array( 
		'name'  => __('Custom CSS', 'magz'),
		'desc'  => __('Quickly add some CSS to your theme by adding it to this block.', 'magz'),
		'id'    => $prefix . 'custom_css',
		'std'   => '',
		'type'  => 'textarea'
	); 
						
	$options[] = array( 
		'name'  => __('Analytic Code', 'magz'),
		'desc'  => __('Paste your Google Analytics (or other) tracking code here. It will be inserted before the closing body tag of your theme.', 'magz'),
		'id'    => $prefix . 'analytic_code',
		'type'  => 'textarea'
	);	

	$options[] = array(
		'name' => __('Built-in SEO fields', 'magz'),
		'type' => 'info');		
		
	$options[] = array(
		//'name' => __('Meta Description', 'magz'),
		'desc' => __('Site meta description content.', 'magz'),					
		'id' => $prefix . 'seodesc',
		'std' => '',
		'type' => 'textarea');		
		
	$options[] = array(
		//'name' => __('Meta Keywords', 'magz'),
		'desc' => __('Site meta keywords content.', 'magz'),				
		'id' => $prefix . 'seokeywords',
		'std' => '',
		'type' => 'text');		


	/* ============================== End General Settings ================================= */	

	$options[] = array(
		'name' => __('Homepage', 'magz'),
		'type' => 'heading');	
		
	$options[] = array(
		'name' => __('Slider Area', 'magz'),
		'desc' => __('Check to activate the slider area.', 'magz'),
		'id' => $prefix . 'slider',
		'std' => '0',
		'type' => 'checkbox');
		
	$options[] = array(
		'name' => __('Slide Right Content', 'magz'),
		'desc' => __('Title for slide right content', 'magz'),
		'id' => $prefix . 'sl_right_title',
		'class' => 'hidden',
		'std' => 'Top News',
		'type' => 'text');
		
	$options[] = array(
		'desc' => __('Title background color.', 'magz'),
		'id' => $prefix . 'sl_right_bg',
		'class' => 'hidden',
		'std' => '',
		'type' => 'color' );

	$options[] = array(
		'desc' => __('Title color.', 'magz'),
		'id' => $prefix . 'sl_right_color',
		'class' => 'hidden',
		'std' => '',
		'type' => 'color' );
		
	$options[] = array(
		'desc' => __('Input character limit for slide right content title.', 'magz'),
		'id' => $prefix . 'sl_right_char_limit',
		'class' => 'hidden',
		'std' => '35',
		'class' => 'mini hidden',
		'type' => 'text');
		
	$options[] = array(
		'name' => __('Set post excerpt and title character limit.', 'magz'),
		'desc' => __('Post title character limit.', 'magz'),
		'id' => $prefix . 'title_char_limit',
		'std' => '35',
		'class' => 'mini',
		'type' => 'text');

	$options[] = array(		
		'desc' => __('Mini post title character limit.', 'magz'),
		'id' => $prefix . 'mini_char_limit',
		'std' => '35',
		'class' => 'mini',
		'type' => 'text');
		
	$options[] = array(		
		'desc' => __('Post excerpt character limit.', 'magz'),
		'id' => $prefix . 'post_excerpt_limit',
		'std' => '115',
		'class' => 'mini',
		'type' => 'text');
		
	$options[] = array(		
		'desc' => __('Mini post excerpt character limit.', 'magz'),
		'id' => $prefix . 'mini_excerpt_limit',
		'std' => '40',
		'class' => 'mini',
		'type' => 'text');
		
	$options[] = array(		
		'desc' => __('Carousel title character limit.', 'magz'),
		'id' => $prefix . 'carousel_char_limit',
		'std' => '35',
		'class' => 'mini',
		'type' => 'text');
	
	$options[] = array(
		'name' => __('Home Top', 'magz'),
		'desc' => __('Check to show content carousel below the slider.', 'magz'),
		'id' => $prefix . 'home_top',
		'std' => '0',
		'type' => 'checkbox');

	$options[] = array(
		'desc' => __('Carousel title', 'magz'),
		'id' => $prefix . 'home_top_title',
		'std' => 'Hot Stuff',
		'class' => 'hidden',
		'type' => 'text');

	$options[] = array(
		'desc' => __('Title background color.', 'magz'),
		'id' => $prefix . 'httitle_bg',
		'std' => '',
		'class' => 'hidden',
		'type' => 'color' );

	$options[] = array(
		'desc' => __('Title color.', 'magz'),
		'id' => $prefix . 'httitle_color',
		'std' => '',
		'class' => 'hidden',
		'type' => 'color' );

	if ( $options_categories ) {
	$options[] = array(
		'name' => __('Top Left Home Category', 'magz'),
		'desc' => __('Select a Category for top left Home Category', 'magz'),
		'id' => $prefix . 'halfleft_categories',
		'std' => '1',
		'type' => 'select',
		'options' => $options_categories);
	}
	
	$options[] = array(
		'desc' => __('Category Title background color.', 'magz'),
		'id' => $prefix . 'catleft_title_bg',
		'std' => '',
		'type' => 'color' );
		
	$options[] = array(
		'desc' => __('Category Title color.', 'magz'),
		'id' => $prefix . 'catleft_title_color',
		'std' => '',
		'type' => 'color' );

	if ( $options_categories ) {
	$options[] = array(
		'name' => __('Top Right Home Category', 'magz'),
		'desc' => __('Select a Category for top right Home Category', 'magz'),
		'id' => $prefix . 'halfright_categories',
		'std' => '1',
		'type' => 'select',
		'options' => $options_categories);
	}
	
	$options[] = array(
		'desc' => __('Category Title background color.', 'magz'),
		'id' => $prefix . 'catright_title_bg',
		'std' => '',
		'type' => 'color' );
		
	$options[] = array(
		'desc' => __('Category Title color.', 'magz'),
		'id' => $prefix . 'catright_title_color',
		'std' => '',
		'type' => 'color' );
	
	if ( $options_categories ) {
	$options[] = array(
		'name' => __('Bottom Home Category', 'magz'),
		'desc' => __('Select a Category for bottom Home Category', 'magz'),
		'id' => $prefix . 'halffull_categories',
		'std' => '1',
		'type' => 'select',
		'options' => $options_categories);
	}
	
	$options[] = array(
		'desc' => __('Category Title background color.', 'magz'),
		'id' => $prefix . 'catfull_title_bg',
		'std' => '',
		'type' => 'color' );
		
	$options[] = array(
		'desc' => __('Category Title color.', 'magz'),
		'id' => $prefix . 'catfull_title_color',
		'std' => '',
		'type' => 'color' );
	
	$options[] = array(
		'name' => __('Home Bottom', 'magz'),
		'desc' => __('Check to show content carousel on bottom of home page.', 'magz'),
		'id' => $prefix . 'home_bottom',
		'std' => '0',
		'type' => 'checkbox');

	$options[] = array(
		'desc' => __('Carousel title', 'magz'),
		'id' => $prefix . 'home_bottom_title',
		'std' => 'All News Gallery',
		'class' => 'hidden',
		'type' => 'text');
		
	$options[] = array(
		'desc' => __('Title background color.', 'magz'),
		'id' => $prefix . 'galtitle_bg',
		'std' => '',
		'class' => 'hidden',
		'type' => 'color' );

	$options[] = array(
		'desc' => __('Title color.', 'magz'),
		'id' => $prefix . 'galtitle_color',
		'std' => '',
		'class' => 'hidden',
		'type' => 'color' );
		
	
	/* ============================== End Homepage Settings ================================= */	
	
	
	$options[] = array( 
		'name' => __('Layout', 'magz'),
		'type' => 'heading'
	);	

	$options[] = array(
		'name' => __('Show Headline', 'magz'),
		'desc' => __('Check to Show Headline block.', 'magz'),
		'id' => $prefix . 'headline',
		'std' => '0',
		'type' => 'checkbox');
		
	$options[] = array(
		'name' => __('Show Breaking News', 'magz'),
		'desc' => __('Check to Show Breaking News block.', 'magz'),
		'id' => $prefix . 'brnews',
		'std' => '0',
		'type' => 'checkbox');	
	
$options[] = array(
    'name' =>  __('Background', 'magz'),
    'desc' => __('Add body background.', 'magz'),
    'id' => 'body_bg',
	'std' => array(
		'color' => '#09151f',
		'image' => '',
		'repeat' => 'repeat',
		'position' => 'top left',
		'attachment'=>'scroll' ),
    'type' => 'background' );	
	
$options[] = array(
    'desc' => __('Add header background.', 'magz'),
    'id' => 'header_bg',
	'std' => array(
		'color' => '',
		'image' => '',
		'repeat' => 'repeat',
		'position' => 'top left',
		'attachment'=>'scroll' ),
    'type' => 'background' );	
	
$options[] = array(
    'desc' => __('Add content background.', 'magz'),
    'id' => 'wrapper_bg',
	'std' => array(
		'color' => '',
		'image' => '',
		'repeat' => 'repeat',
		'position' => 'top left',
		'attachment'=>'scroll' ),
    'type' => 'background' );	
	
$options[] = array(
    'desc' => __('Add footer widgets background.', 'magz'),
    'id' => 'footwidget_bg',
	'std' => array(
		'color' => '',
		'image' => '',
		'repeat' => '',
		'position' => '',
		'attachment'=>'' ),
    'type' => 'background' );	
	
$options[] = array(
    'desc' => __('Add footer background.', 'magz'),
    'id' => 'footer_bg',
	'std' => array(
		'color' => '',
		'image' => '',
		'repeat' => 'repeat',
		'position' => 'top left',
		'attachment'=>'scroll' ),
    'type' => 'background' );
	
	$options[] = array(
		'name' => __('Show Footer Logo', 'magz'),
		'desc' => __('Check to Show footer logo block.', 'magz'),
		'id' => $prefix . 'footer_blok5',
		'std' => '0',
		'type' => 'checkbox');
		
	$options[] = array(
		'name' => __('Footer Logo', 'magz'),
		'id' => $prefix . 'footer_logo',
		'std'   => get_template_directory_uri().'/images/footer-logo.png',
		'class' => 'hidden',
		'type' => 'upload');
		
	$options[] = array( 
		'name'  => __('Footer Logo Text', 'magz'),
		'desc'  => __('Quickly add some text or content to footer logo block.', 'magz'),
		'id'    => $prefix . 'footer_logo_text',
		'std'   => '<h4>About Magazine</h4>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eius
mod tempor incididu... </p>',
		'class' => 'hidden',
		'type'  => 'textarea'
	); 
	
	$options[] = array(
		'name' => __('Footer Text', 'magz'),
		'desc' => __('Check to change footer credit text.', 'magz'),
		'id' => $prefix . 'footer_credit',
		'std' => '0',
		'type' => 'checkbox');
		
	$options[] = array( 
		'desc'  => __('Quickly add some text or content to footer credit.', 'magz'),
		'id'    => $prefix . 'footer_credit_text',
		'std'   => '<p></p>',
		'class' => 'hidden',
		'type'  => 'textarea'
	); 
	
	/* =============================== End Layout Settings =============================== */

	
	$options[] = array(
		'name' => __('Typograph', 'magz'),
		'type' => 'heading');	
	
	$options[] = array( 
		'name' => __('Font Style', 'magz'),
		'desc' => 'General font',
		'id' => $prefix . 'general_font',
		'std' => array( 'size' => '13px', 'face' => 'Roboto, serif', 'color' => '#939ead'),
		'type' => 'typography',
		'options' => array(
		'faces' => $typography_mixed_fonts,
		'styles' => array( 'normal' => 'Normal','bold' => 'Bold' ) )
	);
	
	$options[] = array( 
		'desc' => 'H1',
		'id' => $prefix . 'h1_font',
		'std' => array( 'size' => '24px', 'face' => 'Noto Serif, serif', 'color' => '#939ead', 'style' => 'bold'),
		'type' => 'typography',
		'options' => array(
		'faces' => $typography_mixed_fonts,
		'styles' => array( 'normal' => 'Normal','bold' => 'Bold' ) )
	);
	
	
	$options[] = array( 
		'desc' => 'H2',
		'id' => $prefix . 'h2_font',
		'std' => array( 'size' => '20px', 'face' => 'Noto Serif, serif', 'color' => '#939ead', 'style' => 'bold'),
		'type' => 'typography',
		'options' => array(
		'faces' => $typography_mixed_fonts,
		'styles' => array( 'normal' => 'Normal','bold' => 'Bold' ))
	);
	
	$options[] = array( 
		'desc' => 'H3',
		'id' => $prefix . 'h3_font',
		'std' => array( 'size' => '16px', 'face' => 'Noto Serif, serif', 'color' => '#939ead', 'style' => 'bold'),
		'type' => 'typography',
		'options' => array(
		'faces' => $typography_mixed_fonts,
		'styles' => array( 'normal' => 'Normal','bold' => 'Bold' ) )
	);
	
	$options[] = array( 
		'desc' => 'H4',
		'id' => $prefix . 'h4_font',
		'std' => array( 'size' => '13px', 'face' => 'Noto Serif, serif', 'color' => '#939ead', 'style' => 'bold'),
		'type' => 'typography',
		'options' => array(
		'faces' => $typography_mixed_fonts,
		'styles' => array( 'normal' => 'Normal','bold' => 'Bold' ) )
	);
	
	$options[] = array( 
		'desc' => 'H5',
		'id' => $prefix . 'h5_font',
		'std' => array( 'size' => '12px', 'face' => 'Noticia Text, serif', 'color' => '#939ead', 'style' => 'bold'),
		'type' => 'typography',
		'options' => array(
		'faces' => $typography_mixed_fonts,
		'styles' => array( 'normal' => 'Normal','bold' => 'Bold' ) )
	);
	
	$options[] = array(
		'name' => __('Page Title Style', 'magz'),
		'desc' => __('page title font color', 'magz'),
		'id' => $prefix . 'h1_color',
		'std' => '',
		'type' => 'color' );
		
	$options[] = array(
		'desc' => __('page title background color', 'magz'),
		'id' => $prefix . 'h1_bg',
		'std' => '',
		'type' => 'color' );
	
	$decor_array = array(
		'none' => __('none', 'magz'),
		'underline' => __('underline', 'magz')
	);
	
	$options[] = array(
		'name' => __('Link Style', 'magz'),
		'desc' => __('Link color', 'magz'),
		'id' => $prefix . 'link_color',
		'std' => '',
		'type' => 'color' );
		
	$options[] = array(
		'desc' => __('Link text decoration', 'magz'),
		'id' => $prefix . 'link_decor',
		'std' => '',
		'type' => 'select',
		'class' => 'mini', //mini, tiny, small
		'options' => $decor_array
	);
	
	$options[] = array(
		'desc' => __('Link hover color', 'magz'),
		'id' => $prefix . 'link_hover_color',
		'std' => '',
		'type' => 'color' );
		
	$options[] = array(
		'desc' => __('Link hover text decoration', 'magz'),
		'id' => $prefix . 'link_hover_decor',
		'std' => '',
		'type' => 'select',
		'class' => 'mini', //mini, tiny, small
		'options' => $decor_array
	);
	
	$options[] = array(
		'name' => __('Primary Navigation Link', 'magz'),
		'desc' => __('Link color', 'magz'),
		'id' => $prefix . 'nav_link_color',
		'std' => '#FFFFFF',
		'type' => 'color' );
		
	$options[] = array(
		'desc' => __('Link hover color', 'magz'),
		'id' => $prefix . 'nav_link_hover_color',
		'std' => '#7CC6FA',
		'type' => 'color' );
	
	/* ============================== End Typograph Settings ================================= */							/* ============================== Banner Ads Settings ================================= */						$options[] = array( 		'name' => __('Banner Ads', 'magz'),		'type' => 'heading'	);							$options[] = array(		'name'      => __('Google Adsense', 'magz'),			'desc'      => __('AdSense Publisher ID', 'magz'),		'id'        => $prefix . 'adsense_id',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'name'      => __('Header Ads', 'magz')	);			$options[] = array(		'desc'      => __('Header Ads Slot 728 x 90', 'magz'),		'id'        => $prefix . 'head_ad_slot_728',		'std'		=> '',		'type'      => 'text'	);			$options[] = array(		'desc'      => __('Header Ads Slot 468 x 60', 'magz'),		'id'        => $prefix . 'head_ad_slot_468',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'desc'      => __('Header Ads Slot 336 x 280', 'magz'),		'id'        => $prefix . 'head_ad_slot_336',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'desc'      => __('Header Ads Slot 300 x 250', 'magz'),		'id'        => $prefix . 'head_ad_slot_300',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'desc'      => __('Header Ads Slot 250 x 250', 'magz'),		'id'        => $prefix . 'head_ad_slot_250',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'desc'      => __('Header Ads Slot 200 x 200', 'magz'),		'id'        => $prefix . 'head_ad_slot_200',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'desc'      => __('Header Ads Slot 180 x 150', 'magz'),		'id'        => $prefix . 'head_ad_slot_180',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'desc'      => __('Header Ads Slot 125 x 125', 'magz'),		'id'        => $prefix . 'head_ad_slot_125',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'name'      => __('Header Ads (Use Responsive Google Ads Code)', 'magz'),		'desc'      => __('To use this, leave blank Header Ads Slot fields above.', 'magz'),		'id'        => $prefix . 'ad_head_responsive',		'std'		=> '',		'type'      => 'textarea'	);					$options[] = array(		'name'      => __('Header Image Banner Ads', 'magz')	);					$options[] = array(		'desc'      => __('Image 728 x 90 pixel', 'magz'),		'id'        => $prefix . 'header_img_banner_1',		'std'		=> '',		'type'      => 'upload'	);		$options[] = array(		'desc'      => __('URL', 'magz'),		'id'        => $prefix . 'header_img_banner_1_url',		'std'		=> '',		'type'      => 'text'	);						$options[] = array(		'name'      => __('Sidebar Ads', 'magz')	);			$options[] = array(		'desc'      => __('Sidebar Ads Slot 336 x 280', 'magz'),		'id'        => $prefix . 'side_ad_slot_336',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'desc'      => __('Sidebar Ads Slot 300 x 250', 'magz'),		'id'        => $prefix . 'side_ad_slot_300',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'desc'      => __('Sidebar Ads Slot 250 x 250', 'magz'),		'id'        => $prefix . 'side_ad_slot_250',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'desc'      => __('Sidebar Ads Slot 200 x 200', 'magz'),		'id'        => $prefix . 'side_ad_slot_200',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'desc'      => __('Sidebar Ads Slot 180 x 150', 'magz'),		'id'        => $prefix . 'side_ad_slot_180',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'desc'      => __('Sidebar Ads Slot 125 x 125', 'magz'),		'id'        => $prefix . 'side_ad_slot_125',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'name'      => __('Sidebar Ads (Use Responsive Google Ads Code)', 'magz'),		'desc'      => __('To use this, leave blank Sidebar Ads Slot fields above.', 'magz'),		'id'        => $prefix . 'ad_side_responsive',		'std'		=> '',		'type'      => 'textarea'	);				$options[] = array(		'name'      => __('Sidebar Image Banner Ads', 'magz')	);					$options[] = array(		'desc'      => __('Image', 'magz'),		'id'        => $prefix . 'sidebar_img_banner_1',		'std'		=> '',		'type'      => 'upload'	);		$options[] = array(		'desc'      => __('URL', 'magz'),		'id'        => $prefix . 'sidebar_img_banner_1_url',		'std'		=> '',		'type'      => 'text'	);							$options[] = array(		'name'      => __('Post Ads (Displayed after content of single post and page)', 'magz')	);			$options[] = array(		'desc'      => __('Post Ads Slot 468 x 60', 'magz'),		'id'        => $prefix . 'post_ad_slot_468',		'std'		=> '',		'type'      => 'text'	);			$options[] = array(		'desc'      => __('Post Ads Slot 336 x 280', 'magz'),		'id'        => $prefix . 'post_ad_slot_336',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'desc'      => __('Post Ads Slot 300 x 250', 'magz'),		'id'        => $prefix . 'post_ad_slot_300',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'desc'      => __('Post Ads Slot 250 x 250', 'magz'),		'id'        => $prefix . 'post_ad_slot_250',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'desc'      => __('Post Ads Slot 200 x 200', 'magz'),		'id'        => $prefix . 'post_ad_slot_200',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'desc'      => __('Post Ads Slot 180 x 150', 'magz'),		'id'        => $prefix . 'post_ad_slot_180',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'desc'      => __('Post Ads Slot 125 x 125', 'magz'),		'id'        => $prefix . 'post_ad_slot_125',		'std'		=> '',		'type'      => 'text'	);		$options[] = array(		'name'      => __('Post Ads (Use Responsive Google Ads Code)', 'magz'),		'desc'      => __('To use this, leave blank Post Ads Slot fields above.', 'magz'),		'id'        => $prefix . 'ad_post_responsive',		'std'		=> '',		'type'      => 'textarea'	);			$options[] = array(		'desc'      => __('Image 468 x 60 pixel', 'magz'),		'id'        => $prefix . 'post_img_banner_1',		'std'		=> '',		'type'      => 'upload'	);		$options[] = array(		'desc'      => __('URL', 'magz'),		'id'        => $prefix . 'post_img_banner_1_url',		'std'		=> '',		'type'      => 'text'	);									/* ============================== End Banner Ads Settings ============================= */		
	
	$options[] = array( 
		'name' => __('Miscellaneous', 'magz'),
		'type' => 'heading'
	);

	$options[] = array(
		'name'      => __('Facebook', 'magz'),
		'desc'      => __('Put your facebook link here.', 'magz'),
		'id'        => $prefix . 'facebook',
		'std'		=> 'https://www.facebook.com/pages/DM-Art-Studio/290026024368172',
		'type'      => 'text'
	);
	
	$options[] = array(
		'desc'      => __('Put your facebook fanpage id.', 'magz'),
		'id'        => $prefix . 'facebook-fan',
		'std'		=> '290026024368172',
		'type'      => 'text'
	);

	$options[] = array(
		'name'      => __('Twitter', 'magz'),
		'desc'      => __('Put your twitter link here.', 'magz'),
		'id'        => $prefix . 'twitter',
		'std'		=> 'http://www.twitter.com/PuriWP',
		'type'      => 'text'
	);
	
	$options[] = array(
		'desc'      => __('Put your twitter oauth consumer key.', 'magz'),
		'id'        => $prefix . 'twitter_oack',
		'std'		=> 'nFpv0FEDo4C1GCL2ohy7w',
		'type'      => 'text'
	);
	
	$options[] = array(
		'desc'      => __('Put your twitter oauth consumer secret.', 'magz'),
		'id'        => $prefix . 'twitter_oacs',
		'std'		=> 'sGX6VEShtlf6MEPr8ptn83bCJMc14AGAeoHGa95rY',
		'type'      => 'text'
	);
	
	$options[] = array(
		'desc'      => __('Put your twitter access token.', 'magz'),
		'id'        => $prefix . 'twitter_access_token',
		'std'		=> '49443945-lmLAS7XXWcUyGj2FSMTASE7oxiOiY511Nvx2nTeBc',
		'type'      => 'text'
	);
	
	$options[] = array(
		'desc'      => __('Put your twitter access token secret.', 'magz'),
		'id'        => $prefix . 'twitter_access_token_secret',
		'std'		=> 'AsidbDHJAL2h77kThKY2i2BuLbGeEzLejpchraEttk',
		'type'      => 'text'
	);
	
	$options[] = array(
		'desc'      => __('Put your twitter user name.', 'magz'),
		'id'        => $prefix . 'twitter_un',
		'std'		=> 'PuriWP',
		'type'      => 'text'
	);

	$options[] = array(
		'name'      => __('RSS/Feed', 'magz'),
		'desc'      => __('Put your rss/feed link here.', 'magz'),
		'id'        => $prefix . 'feed',
		'std'		=> esc_url( home_url()).'/feed/',
		'type'      => 'text'
	);
	
	$options[] = array(
		'name'      => __('Contact Info', 'magz'),
		'desc'      => __('Address', 'magz'),
		'id'        => $prefix . 'gmap',
		'std'		=> 'Jalan Riung Bandung, Bandung Indonesia',
		'type'      => 'text'
	);
	
	$options[] = array(
		'desc'      => __('Address Description', 'magz'),
		'id'        => $prefix . 'address_desc',
		'std'		=> 'Fusce aliquet non ipsum vitae scelerisque. Nullam ultricies adipiscing erat, quis bibendum ...',
		'type'      => 'textarea'
	);
	
	$options[] = array(
		'desc'      => __('Email', 'magz'),
		'id'        => $prefix . 'email',
		'std'		=> 'ega@puriwp.com',
		'type'      => 'text'
	);
	
	$options[] = array(
		'desc'      => __('Phone Number', 'magz'),
		'id'        => $prefix . 'phone',
		'std'		=> '+6285810810004',
		'type'      => 'text'
	);
	
	$options[] = array(
		'desc'      => __('Website', 'magz'),
		'id'        => $prefix . 'website',
		'std'		=> 'http://www.puriwp.com',
		'type'      => 'text'
	);				

	/* ============================== End Miscellaneous Settings ================================= */	
	
	return $options;
	
	
	
	
}