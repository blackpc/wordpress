<?php

/**

 * Helper function to return the theme option value

 * 

 * @package 	magz

 * @since 	1.0

 *

 */





/**

 * Custom CSS output

 *

 * @since 1.0

 */



add_action( 'wp_head', 'magz_custom_css', 10 );



function magz_custom_css() {



	$custom_css = of_get_option('magz_custom_css');



	



	if ($custom_css != '') {



		echo "<!-- Custom Styling -->\n<style type=\"text/css\">\n" . esc_attr( $custom_css ) . "\n</style>\n";



	}



}







/**

 * Custom favicon output

 *

 * @since 1.0

 */



add_action( 'wp_head', 'magz_custom_favicon', 5 );



function magz_custom_favicon() {



	if (of_get_option('magz_custom_favicon'))



		echo '<link rel="shortcut icon" href="'. esc_url( of_get_option('magz_custom_favicon') ) .'">'."\n";



}







/**

 * Analytic code output

 *

 * @since 1.0

 */



add_action( 'wp_footer','magz_analytics' );



function magz_analytics(){



	$output = of_get_option('magz_analytic_code');



	if ( $output ) 



		echo "\n" . stripslashes( $output ) . "\n";



}







/*

 * for 'textarea' sanitization and $allowedposttags + embed and script.

 */



add_action('admin_init', 'magz_change_santiziation', 100);



function magz_change_santiziation() {



    remove_filter( 'of_sanitize_textarea', 'of_sanitize_textarea' );



    add_filter( 'of_sanitize_textarea', 'magz_sanitize_textarea' );



}







function magz_sanitize_textarea($input) {



    global $allowedposttags;



    $custom_allowedtags["embed"] = array(



		"src" => array(),



		"type" => array(),



		"allowfullscreen" => array(),



		"allowscriptaccess" => array(),



		"height" => array(),



		"width" => array()



		);



	$custom_allowedtags["script"] = array(



		"src" => array(), 



		"type" => array()



		);



	$custom_allowedtags = array_merge($custom_allowedtags, $allowedposttags);



	$output = wp_kses( $input, $custom_allowedtags);



    return $output;



}















        // This theme uses wp_nav_menu() in one location.



        register_nav_menus( array(



                'primary'   => __( 'Primary Navigation', 'magz' ),



                'footer'   => __( 'Footer Navigation', 'magz' )



        ) );



	







		register_sidebar(



		array( 



		'name' => __( 'Home Sidebar', 'magz' ),



		'id' => 'sidebar-home', 'before_widget' => '<div id="%1$s" class="widget %2$s">','after_widget' => '</div>','before_title' => '<h3 class="title"><span>','after_title' => '</span></h3>'));	    







		register_sidebar(



		array( 



		'name' => __( 'Default Sidebar', 'magz' ),



		'id' => 'sidebar', 'before_widget' => '<div id="%1$s" class="widget %2$s">','after_widget' => '</div>','before_title' => '<h3 class="title"><span>','after_title' => '</span></h3>'));	    







		register_sidebar(



		array( 



		'name' => __( 'Footer 1', 'magz' ),



		'id' => 'footer1', 'before_widget' => '<div id="%1$s" class="widget %2$s">','after_widget' => '</div>','before_title' => '<h3 class="title"><span>','after_title' => '</span></h3>'));	    







		register_sidebar(



		array( 



		'name' => __( 'Footer 2', 'magz' ),



		'id' => 'footer2', 'before_widget' => '<div id="%1$s" class="widget %2$s">','after_widget' => '</div>','before_title' => '<h3 class="title"><span>','after_title' => '</span></h3>'));	    







		register_sidebar(



		array( 



		'name' => __( 'Footer 3', 'magz' ),



		'id' => 'footer3', 'before_widget' => '<div id="%1$s" class="widget %2$s">','after_widget' => '</div>','before_title' => '<h3 class="title"><span>','after_title' => '</span></h3>'));	    







		register_sidebar(



		array( 



		'name' => __( 'Footer 4', 'magz' ),



		'id' => 'footer4', 'before_widget' => '<div id="%1$s" class="widget %2$s">','after_widget' => '</div>','before_title' => '<h3 class="title"><span>','after_title' => '</span></h3>'));	    







	



        // This theme uses post thumbnails



if ( function_exists( 'add_theme_support' ) ) { 



		add_theme_support( 'automatic-feed-links' );
		
		

        add_theme_support( 'post-thumbnails' );



        set_post_thumbnail_size(    225,    136,    true ); // Normal post thumbnails



        add_image_size( 'slide',    546,    291,    true ); // Slide thumbnails



        add_image_size( 'post-first',    371,    177,    true ); // Medium thumbnails



        add_image_size( 'thumbs',    225,    136,    true ); // post thumbnails



	add_image_size( 'single',    774,    320,    true ); // Hot Stuff thumbnails



}



		





function magz_common_scripts() {		
		

	if ( comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}		
		
		
	if (!is_admin()) {

		// HTML 5
		
		wp_register_script('html5', get_template_directory_uri().'/js/html5.js', null, '3.6', false );

		wp_enqueue_script('html5');		

		// flexslider JS

		wp_register_script('jquery.flexslider', get_template_directory_uri().'/js/jquery.flexslider.js', array('jquery'), '2.1', true );
		wp_register_script('jquery.flexslider.init', get_template_directory_uri().'/js/jquery.flexslider.init.js', array('jquery'), '2.1', true );

		if( is_page_template('magazine.php') ){		
			wp_enqueue_script('jquery.flexslider');
			wp_enqueue_script('jquery.flexslider.init');
		}	
		
		// bxslider JS

		wp_register_script('jquery.bxslider', get_template_directory_uri().'/js/jquery.bxslider.js', array('jquery'), '4.1.1', true );
		wp_register_script('jquery.bxslider.init', get_template_directory_uri().'/js/jquery.bxslider.init.js', array('jquery'), '4.1.1', true );		

		if( is_page_template('magazine.php') ){				
			wp_enqueue_script('jquery.bxslider');
			wp_enqueue_script('jquery.bxslider.init');			
		}

		// idTabs JS

		wp_register_script('jquery.idTabs', get_template_directory_uri() .'/js/jquery.idTabs.min.js', array('jquery'), '2.2', true);

		wp_enqueue_script('jquery.idTabs');

		// simplyscroll JS

		wp_register_script('jquery.simplyscroll', get_template_directory_uri() .'/js/jquery.simplyscroll.js', array('jquery'), '2.0.5', true);

		wp_enqueue_script('jquery.simplyscroll');
		
		// Fluid Divs
		
		wp_register_script('jquery.fluiddivs', get_template_directory_uri() .'/js/fluidvids.min.js', array('jquery'), '1.0.0', true);

		wp_enqueue_script('jquery.fluiddivs');		
		
		// JPage JS
		wp_register_script('jquery.jpage', get_template_directory_uri() .'/js/jPages.js', array('jquery'), '0.7', true);
		wp_enqueue_script('jquery.jpage');
		
		// Custom JS

		wp_register_script('jquery.custom', get_template_directory_uri() .'/js/custom.js', array('jquery'), null, true);

		wp_enqueue_script('jquery.custom');		

	}


}

add_action( 'wp_enqueue_scripts', 'magz_common_scripts' );





if( !defined( 'WP_THEME_URL' ) )



  define( 'WP_THEME_URL', get_stylesheet_directory_uri() );











function astro_add_dropdown_class($classes, $item) {



    global $wpdb;



    $has_children = $wpdb->get_var("



            SELECT COUNT(meta_id)



            FROM wp_postmeta



            WHERE meta_key='_menu_item_menu_item_parent'



            AND meta_value='".$item->ID."'



        ");



    // add the class dropdown to the current list



    if ($has_children > 0) array_push($classes,'dropdown');



    return $classes;



}



 



add_filter( 'nav_menu_css_class', 'astro_add_dropdown_class', 10, 2);











function get_excerpt($count){



  global $post;	



  $permalink = get_permalink($post->ID);



  $excerpt = get_the_content();



  $excerpt = strip_tags($excerpt);



  $excerpt = mb_substr($excerpt, 0, $count, "UTF-8");



  $excerpt = $excerpt.'...';



  return $excerpt;



}







function the_title_limit($before = '', $after = '', $echo = true, $length = false) { $title = get_the_title();







	if ( $length && is_numeric($length) ) {



		$title = mb_substr( $title, 0, $length, "UTF-8" );



	}







	if ( strlen($title)> 0 ) {



		$title = apply_filters('the_titlesmall', $before . $title . $after, $before, $after);



		if ( $echo )



			echo $title;



		else



			return $title;



	}



}







function getTwitterFollowers($screenName = 'upids')



{



    // some variables







    $consumerKey = of_get_option('magz_twitter_oack');



    $consumerSecret = of_get_option('magz_twitter_oacs');



    $token = get_option('cfTwitterToken');



 



    // get follower count from cache



    $numberOfFollowers = get_transient('cfTwitterFollowers');



 



    // cache version does not exist or expired



    if (false === $numberOfFollowers) {



        // getting new auth bearer only if we don't have one



        if(!$token) {



            // preparing credentials



            $credentials = $consumerKey . ':' . $consumerSecret;



            $toSend = base64_encode($credentials);



 



            // http post arguments



            $args = array(



                'method' => 'POST',



                'httpversion' => '1.1',



                'blocking' => true,



                'headers' => array(



                    'Authorization' => 'Basic ' . $toSend,



                    'Content-Type' => 'application/x-www-form-urlencoded;charset=UTF-8'



                ),



                'body' => array( 'grant_type' => 'client_credentials' )



            );



 



            add_filter('https_ssl_verify', '__return_false');



            $response = wp_remote_post('https://api.twitter.com/oauth2/token', $args);



 



            $keys = json_decode(wp_remote_retrieve_body($response));



 



            if($keys) {



                // saving token to wp_options table



                update_option('cfTwitterToken', $keys->access_token);



                $token = $keys->access_token;



            }



        }



        // we have bearer token wether we obtained it from API or from options



        $args = array(



            'httpversion' => '1.1',



            'blocking' => true,



            'headers' => array(



                'Authorization' => "Bearer $token"



            )



        );



 



        add_filter('https_ssl_verify', '__return_false');



        $api_url = "https://api.twitter.com/1.1/users/show.json?screen_name=$screenName";



        $response = wp_remote_get($api_url, $args);



 



        if (!is_wp_error($response)) {



            $followers = json_decode(wp_remote_retrieve_body($response));



            $numberOfFollowers = $followers->followers_count;



        } else {



            // get old value and break



            $numberOfFollowers = get_option('cfNumberOfFollowers');



            // uncomment below to debug



            //die($response->get_error_message());



        }



 



        // cache for an hour



        set_transient('cfTwitterFollowers', $numberOfFollowers, 1*60);



        update_option('cfNumberOfFollowers', $numberOfFollowers);



    }



 



    return $numberOfFollowers;



}



function magz_scripts_styles() {

	global $wp_styles;



	/*

	 * Loads our main stylesheet.

	 */

	wp_enqueue_style( 'magz-style', get_stylesheet_uri() );

	

	/*

	 * Loads script stylesheet.

	 */
	
	if( is_page_template('magazine.php') ){
	
		wp_enqueue_style( 'flexslider', get_template_directory_uri() . '/css/flexslider.css' );

	}
	
	wp_enqueue_style( 'bootstrap', get_template_directory_uri() . '/css/bootstrap.min.css' );

	wp_enqueue_style( 'bootstrap-responsive', get_template_directory_uri() . '/css/bootstrap-responsive.css' );

	wp_enqueue_style( 'simplyscroll', get_template_directory_uri() . '/css/jquery.simplyscroll.css' );
	
	wp_enqueue_style( 'jPages', get_template_directory_uri() . '/css/jPages.css' );
	
	wp_enqueue_style( 'ie-styles', get_template_directory_uri() . '/css/ie.css' );

	


	/*

	 * Loads the Internet Explorer specific stylesheet.

	 */

	//wp_enqueue_style( 'magz-ie', get_template_directory_uri() . '/css/ie.css', array( 'magz-style' ), '20121010' );

	//$wp_styles->add_data( 'magz-ie', 'conditional', 'lt IE 9' );

}

add_action( 'wp_enqueue_scripts', 'magz_scripts_styles' );




function nmedia_glr_cpt() {
  $labels = array(
    'name' => 'Galleries',
    'singular_name' => 'Gallery',
    'add_new' => 'Add New',
    'add_new_item' => 'Add New Gallery',
    'edit_item' => 'Edit Gallery',
    'new_item' => 'New Gallery',
    'all_items' => 'All Galleries',
    'view_item' => 'View Gallery',
    'search_items' => 'Search Galleries',
    'not_found' =>  'No galleries found',
    'not_found_in_trash' => 'No galleries found in Trash', 
    'parent_item_colon' => '',
    'menu_name' => 'Galleries'
  );
  
  $args = array(
    'labels' => $labels,
    'public' => true,
    'publicly_queryable' => true,
    'show_ui' => true, 
    'show_in_menu' => true, 
    'query_var' => true,
    'rewrite' => array( 'slug' => 'gallery' ),
    'capability_type' => 'post',
    'has_archive' => true, 
    'hierarchical' => false,
    'menu_position' => null,
    'supports' => array( 'title', 'editor', 'author', 'thumbnail', 'custom-fields', 'excerpt', 'comments' )
  ); 

  register_post_type( 'galleries', $args );
  
  register_taxonomy('gallery-category',array (
    0 => 'galleries',
  ),array( 'hierarchical' => true,'label' => 'Категории', 'add_new_item' => 'Add New Category', 'show_ui' => true,'query_var' => true,'rewrite' => array('slug' => 'gallery-category'),'singular_label' => 'Category') );
  
  flush_rewrite_rules();  

}

add_action( 'init', 'nmedia_glr_cpt' );




if ( ! function_exists( 'magazine_comment' ) ) :



/**



 * Template for comments and pingbacks.



 *



 * To override this walker in a child theme without modifying the comments template



 * simply create your own magazine_comment(), and that function will be used instead.



 *



 * Used as a callback by wp_list_comments() for displaying the comments.



 *



 * @since Twenty Twelve 1.0



 */



function magazine_comment( $comment, $args, $depth ) {



	$GLOBALS['comment'] = $comment;



	switch ( $comment->comment_type ) :



		case 'pingback' :



		case 'trackback' :



		// Display trackbacks differently than normal comments.



	?>



	<li <?php comment_class(); ?> id="comment-<?php comment_ID(); ?>">



		<p><?php _e( 'Pingback:', 'magazine' ); ?> <?php comment_author_link(); ?> <?php edit_comment_link( __( '(Edit)', 'magazine' ), '<span class="edit-link">', '</span>' ); ?></p>



	<?php



			break;



		default :



		// Proceed with normal comments.



		global $post;



	?>



	<li <?php comment_class(); ?> id="li-comment-<?php comment_ID(); ?>">



		<article id="comment-<?php comment_ID(); ?>" class="comment">



			<header class="comment-meta comment-author vcard clearfix">



				<?php



					echo get_avatar( $comment, 81 );



				?>



				







				<?php



					printf( '<cite class="fn">%1$s %2$s</cite>',



						get_comment_author_link(),



						// If current post author is also comment author, make it known visually.



						( $comment->user_id === $post->post_author ) ? '<span> ' . __( 'Автор записи', 'magazine' ) . '</span>' : ''



					);



					printf( '<a href="%1$s"><time datetime="%2$s">%3$s</time></a>',



						esc_url( get_comment_link( $comment->comment_ID ) ),



						get_comment_time( 'c' ),



						/* translators: 1: date, 2: time */



						sprintf( __( '%1$s в %2$s', 'magazine' ), get_comment_date(), get_comment_time() )



					);



				?>







			<?php if ( '0' == $comment->comment_approved ) : ?>



				<p class="comment-awaiting-moderation"><?php _e( 'Ваш комментарии ожидает модерации.', 'magazine' ); ?></p>



			<?php endif; ?>



			



			<div class="comment-content comment">



				<?php comment_text(); ?>



				<?php edit_comment_link( __( 'Ред.', 'magazine' ), '<p class="edit-link">', '</p>' ); ?>



			</div><!-- .comment-content -->



			



			</header><!-- .comment-meta -->







			<div class="reply">



				<?php comment_reply_link( array_merge( $args, array( 'reply_text' => __( 'Ответить', 'magazine' ), 'after' => ' ', 'depth' => $depth, 'max_depth' => $args['max_depth'] ) ) ); ?>



			</div><!-- .reply -->



		</article><!-- #comment-## -->



	<?php



		break;



	endswitch; // end comment_type check



}



endif;











add_action( 'after_post_title', 'add_entry_meta' );



function add_entry_meta() {

 	echo '<div class="entry-meta row-fluid"><ul><li>';

	global $current_user;

 	get_currentuserinfo();

 	echo get_avatar( get_the_author_meta( 'user_email' ), apply_filters( 'magazine_author_bio_avatar_size', 15 ) );

 	// echo '' . $current_user->display_name . "\n"; 
	
 	echo '' . get_the_author_meta('display_name') . "\n"; 

 	echo '</li><li>';

 	echo '<img src="' .get_template_directory_uri(). '/images/time.png">';

	// the_time('j F Y');

    the_time ( get_option ( 'date_format' ) );

 	echo '</li><li><img src="' .get_template_directory_uri().'/images/view-bg.png">';

 	echo wpb_get_post_views(get_the_ID());

 	echo '</li><li><img src="' .get_template_directory_uri().'/images/komen.png">';

 	comments_popup_link( __( '0 Комментариев', 'magazine' ), __( '1 Комментарии', 'magazine' ), __( '% Комментариев', 'magazine' ) );

	echo '</li>';

	if( get_the_tags() ) {

	echo '<li class="tagz"><img src="' .get_template_directory_uri().'/images/tags-icon.png">';

	the_tags('', ', ', '<br />');

	echo '</li>';

	}

	echo '<div class="clear"></div></ul></div>';

}







// Replaces the excerpt "more" text by a link



function new_excerpt_more($more) {



       global $post;



	return '<a class="moretag" href="'. get_permalink($post->ID) . '"> Read more</a>';



}



add_filter('excerpt_more', 'new_excerpt_more');











function custom_tag_cloud_widget($args) {



	$args['number'] = 0; //adding a 0 will display all tags



	//$args['before'] = 0;



	$args['after'] = '<div class="clear"></div>';



	return $args;



}



add_filter( 'widget_tag_cloud_args', 'custom_tag_cloud_widget' );











add_action( 'wp_head', 'include_bootstrap', 0 );

function include_bootstrap() {

    // Bootstrap JS

    wp_register_script('bootstrap', get_template_directory_uri() .'/js/bootstrap.min.js', null, '2.3.2', true);

    wp_enqueue_script('bootstrap');

}







add_action('optionsframework_custom_scripts', 'optionsframework_custom_scripts');







function optionsframework_custom_scripts() { ?>







<script type="text/javascript">



jQuery(document).ready(function() {







	jQuery('#magz_footer_blok5').click(function() {



  		jQuery('#section-example_text_hidden').fadeToggle(400);



		jQuery('#section-magz_footer_logo').fadeToggle(400);



		jQuery('#section-magz_footer_logo_text').fadeToggle(400);



	});



	



	if (jQuery('#magz_footer_blok5:checked').val() !== undefined) {



		jQuery('#section-example_text_hidden').show();



		jQuery('#section-magz_footer_logo').show();



		jQuery('#section-magz_footer_logo_text').show();



	}



	



	jQuery('#magz_slider').click(function() {



  		jQuery('#section-magz_sl_right_title').fadeToggle(400);



		jQuery('#section-magz_sl_right_bg').fadeToggle(400);



		jQuery('#section-magz_sl_right_color').fadeToggle(400);



		jQuery('#section-magz_sl_right_char_limit').fadeToggle(400);



	});



	



	if (jQuery('#magz_slider:checked').val() !== undefined) {



		jQuery('#section-magz_sl_right_title').show();



		jQuery('#section-magz_sl_right_bg').show();



		jQuery('#section-magz_sl_right_color').show();



		jQuery('#section-magz_sl_right_char_limit').show();



	}



	



	jQuery('#magz_home_top').click(function() {



		jQuery('#section-magz_home_top_title').fadeToggle(400);



		jQuery('#section-magz_httitle_bg').fadeToggle(400);



		jQuery('#section-magz_httitle_color').fadeToggle(400);



	});



	



	if (jQuery('#magz_home_top:checked').val() !== undefined) {



		jQuery('#section-magz_home_top_title').show();



		jQuery('#section-magz_httitle_bg').show();



		jQuery('#section-magz_httitle_color').show();



	}



	



	jQuery('#magz_home_bottom').click(function() {



		jQuery('#section-magz_home_bottom_title').fadeToggle(400);



		jQuery('#section-magz_galtitle_bg').fadeToggle(400);



		jQuery('#section-magz_galtitle_color').fadeToggle(400);



	});



	



	if (jQuery('#magz_home_bottom:checked').val() !== undefined) {



		jQuery('#section-magz_home_bottom_title').show();



		jQuery('#section-magz_galtitle_bg').show();



		jQuery('#section-magz_galtitle_color').show();



	}



	



	jQuery('#magz_footer_credit').click(function() {



		jQuery('#section-magz_footer_credit_text').fadeToggle(400);



	});



	



	if (jQuery('#magz_footer_credit:checked').val() !== undefined) {



		jQuery('#section-magz_footer_credit_text').show();



	}



	



});



</script>



 



<?php



}











/*-----------------------------------------------------------------------------------*/



/* magz_pagination() - Custom loop pagination function  */



/*-----------------------------------------------------------------------------------*/

/*

/* Additional documentation: http://codex.wordpress.org/Function_Reference/paginate_links

/*

/* Params:

/*

/* Arguments Array:

/*

/* 'base' (optional) 				- The query argument on which to determine the pagination (for advanced users)

/* 'format' (optional) 				- The format in which the query argument is formatted in it's raw format (for advanced users)

/* 'total' (optional) 				- The total amount of pages

/* 'current' (optional) 			- The current page number

/* 'prev_next' (optional) 			- Whether to include the previous and next links in the list or not.

/* 'prev_text' (optional) 			- The previous page text. Works only if 'prev_next' argument is set to true.

/* 'next_text' (optional) 			- The next page text. Works only if 'prev_next' argument is set to true.

/* 'show_all' (optional) 			- If set to True, then it will show all of the pages instead of a short list of the pages near the current page. By default, the 'show_all' is set to false and controlled by the 'end_size' and 'mid_size' arguments.

/* 'end_size' (optional) 			- How many numbers on either the start and the end list edges.

/* 'mid_size' (optional) 			- How many numbers to either side of current page, but not including current page.

/* 'add_fragment' (optional)                    - An array of query args to add using add_query_arg().

/* 'type' (optional) 				- Controls format of the returned value. Possible values are:



                                                  'plain' - A string with the links separated by a newline character.



                                                  'array' - An array of the paginated link list to offer full control of display.



                                                  'list' - Unordered HTML list.



/* 'before' (optional) 				- The HTML to display before the paginated links.



/* 'after' (optional) 				- The HTML to display after the paginated links.



/* 'echo' (optional) 				- Whether or not to display the paginated links (alternative is to "return").



/* 'use_search_permastruct' (optiona;) - Whether or not to use the "pretty" URL permastruct for search URLs.



/*



/* Query Parameter (optional) 		- Specify a custom query which you'd like to paginate.



/*



/*-----------------------------------------------------------------------------------*/



/**



 * magz_pagination() is used for paginating the various archive pages created by WordPress. This is not



 * to be used on single.php or other single view pages.



 *



 * @since 1.0.1



 * @uses paginate_links() Creates a string of paginated links based on the arguments given.



 * @param array $args Arguments to customize how the page links are output.



 * @param object $query An optional custom query to paginate.



 */







if ( !function_exists( 'magz_pagination' ) ) {







	function magz_pagination( $args = array(), $query = '' ) {



		global $wp_rewrite, $wp_query;







		do_action( 'magz_pagination_start' );







		if ( $query ) {







			$wp_query = $query;







		} // End IF Statement







		/* If there's not more than one page, return nothing. */



		if ( 1 >= $wp_query->max_num_pages ) {



			return;

			

		}	







		/* Get the current page. */



		$current = ( get_query_var( 'paged' ) ? absint( get_query_var( 'paged' ) ) : 1 );







		/* Get the max number of pages. */



		$max_num_pages = intval( $wp_query->max_num_pages );







		/* Set up some default arguments for the paginate_links() function. */



		$defaults = array(



			'base' => add_query_arg( 'paged', '%#%' ),

			'format' => '',

			'total' => $max_num_pages,

			'current' => $current,

			'prev_next' => true,

			'prev_text' => __( 'Предыдущие', 'magz' ), // Translate in WordPress. This is the default.

			'next_text' => __( 'Следующие', 'magz' ), // Translate in WordPress. This is the default.

			'show_all' => false,

			'end_size' => 2,

			'mid_size' => 2,

			'add_fragment' => '',

			'type' => 'plain',

			'before' => '<div class="pagination magz-pagination">', // Begin magz_pagination() arguments.

			'after' => '</div>',

			'echo' => true, 

			'use_search_permastruct' => true,

            'index' => false



		);







		/* Allow themes/plugins to filter the default arguments. */



		$defaults = apply_filters( 'magz_pagination_args_defaults', $defaults );







		/* Add the $base argument to the array if the user is using permalinks. */



		if( $wp_rewrite->using_permalinks() )



			$defaults['base'] = user_trailingslashit( trailingslashit( get_pagenum_link() ) . 'page/%#%' );







		/* If we're on a search results page, we need to change this up a bit. */



		if ( is_search() ) {



		/* If we're in BuddyPress, or the user has selected to do so, use the default "unpretty" URL structure. */



			if ( class_exists( 'BP_Core_User' ) || $defaults['use_search_permastruct'] ) {







				$search_query = get_query_var( 's' );



				$paged = get_query_var( 'paged' );







				$base = user_trailingslashit( home_url() ) . '?s=' . urlencode( $search_query ) . '&paged=%#%';







				$defaults['base'] = $base;



			} else {



				$search_permastruct = $wp_rewrite->get_search_permastruct();



				if ( !empty( $search_permastruct ) )



					$defaults['base'] = user_trailingslashit( trailingslashit( urldecode( get_search_link() ) ) . 'page/%#%' );



			}



		}







		/* Merge the arguments input with the defaults. */



		$args = wp_parse_args( $args, $defaults );







		/* Allow developers to overwrite the arguments with a filter. */



		$args = apply_filters( 'magz_pagination_args', $args );







		/* Don't allow the user to set this to an array. */



		if ( 'array' == $args['type'] )



			$args['type'] = 'plain';







		/* Make sure raw querystrings are displayed at the end of the URL, if using pretty permalinks. */



		$pattern = '/\?(.*?)\//i';







		preg_match( $pattern, $args['base'], $raw_querystring );



		

		if( $wp_rewrite->using_permalinks() && $raw_querystring ) {



			$raw_querystring[0] = str_replace( '', '', $raw_querystring[0] );



			$args['base'] = str_replace( $raw_querystring[0], '', $args['base'] );



			$args['base'] .= mb_substr( $raw_querystring[0], 0, -1, "UTF-8" );

			

		}	



		



		/* Get the paginated links. */



		$page_links = paginate_links( $args );







		/* Remove 'page/1' from the entire output since it's not needed. */



		$page_links = str_replace( array( '&#038;paged=1\'', '/page/1\'' ), '\'', $page_links );



                

				



                if($args['index']) {



                    $args['before'] = $args['before'] . '<span class="pages">Page '.$args['current'].' of '.$args['total'].'</span>';

					

				}	

				

				







		/* Wrap the paginated links with the $before and $after elements. */



		$page_links = $args['before'] . $page_links . $args['after'];







		/* Allow devs to completely overwrite the output. */



		$page_links = apply_filters( 'magz_pagination', $page_links );







		do_action( 'magz_pagination_end' );







		/* Return the paginated links for use in themes. */



	

		

		if ( $args['echo'] ) {



			echo $page_links;

		

		}

			

		else {



			return $page_links;



		}

		

		



	} // End magz_pagination()







} // End IF Statement









/**

 * Retrieve adjacent post link.

 *

 * Can either be next or previous post link.

 *

 * Based on get_adjacent_post() from wp-includes/link-template.php

 *

 * @param array $r Arguments.

 * @param bool $previous Optional. Whether to retrieve previous post.

 * @return array of post objects.

 */

function get_adjacent_post_plus($r, $previous = true ) {

	global $post, $wpdb;



	extract( $r, EXTR_SKIP );



	if ( empty( $post ) )

		return null;



//	Sanitize $order_by, since we are going to use it in the SQL query. Default to 'post_date'.

	if ( in_array($order_by, array('post_date', 'post_title', 'post_excerpt', 'post_name', 'post_modified')) ) {

		$order_format = '%s';

	} elseif ( in_array($order_by, array('ID', 'post_author', 'post_parent', 'menu_order', 'comment_count')) ) {

		$order_format = '%d';

	} elseif ( $order_by == 'custom' && !empty($meta_key) ) { // Don't allow a custom sort if meta_key is empty.

		$order_format = '%s';

	} elseif ( $order_by == 'numeric' && !empty($meta_key) ) {

		$order_format = '%d';

	} else {

		$order_by = 'post_date';

		$order_format = '%s';

	}

	

//	Sanitize $order_2nd. Only columns containing unique values are allowed here. Default to 'post_date'.

	if ( in_array($order_2nd, array('post_date', 'post_title', 'post_modified')) ) {

		$order_format2 = '%s';

	} elseif ( in_array($order_2nd, array('ID')) ) {

		$order_format2 = '%d';

	} else {

		$order_2nd = 'post_date';

		$order_format2 = '%s';

	}

	

//	Sanitize num_results (non-integer or negative values trigger SQL errors)

	$num_results = intval($num_results) < 2 ? 1 : intval($num_results);



//	Queries involving custom fields require an extra table join

	if ( $order_by == 'custom' || $order_by == 'numeric' ) {

		$current_post = get_post_meta($post->ID, $meta_key, TRUE);

		$order_by = ($order_by === 'numeric') ? 'm.meta_value+0' : 'm.meta_value';

		$meta_join = $wpdb->prepare(" INNER JOIN $wpdb->postmeta AS m ON p.ID = m.post_id AND m.meta_key = %s", $meta_key );

	} elseif ( $in_same_meta ) {

		$current_post = $post->$order_by;

		$order_by = 'p.' . $order_by;

		$meta_join = $wpdb->prepare(" INNER JOIN $wpdb->postmeta AS m ON p.ID = m.post_id AND m.meta_key = %s", $in_same_meta );

	} else {

		$current_post = $post->$order_by;

		$order_by = 'p.' . $order_by;

		$meta_join = '';

	}



//	Get the current post value for the second sort column

	$current_post2 = $post->$order_2nd;

	$order_2nd = 'p.' . $order_2nd;

	

//	Get the list of post types. Default to current post type

	if ( empty($post_type) )

		$post_type = "'$post->post_type'";



//	Put this section in a do-while loop to enable the loop-to-first-post option

	do {

		$join = $meta_join;

		$excluded_categories = $ex_cats;

		$included_categories = $in_cats;

		$excluded_posts = $ex_posts;

		$included_posts = $in_posts;

		$in_same_term_sql = $in_same_author_sql = $in_same_meta_sql = $ex_cats_sql = $in_cats_sql = $ex_posts_sql = $in_posts_sql = '';



//		Get the list of hierarchical taxonomies, including customs (don't assume taxonomy = 'category')

		$taxonomies = array_filter( get_post_taxonomies($post->ID), "is_taxonomy_hierarchical" );



		if ( ($in_same_cat || $in_same_tax || $in_same_format || !empty($excluded_categories) || !empty($included_categories)) && !empty($taxonomies) ) {

			$cat_array = $tax_array = $format_array = array();



			if ( $in_same_cat ) {

				$cat_array = wp_get_object_terms($post->ID, $taxonomies, array('fields' => 'ids'));

			}

			if ( $in_same_tax && !$in_same_cat ) {

				if ( $in_same_tax === true ) {

					if ( $taxonomies != array('category') )

						$taxonomies = array_diff($taxonomies, array('category'));

				} else

					$taxonomies = (array) $in_same_tax;

				$tax_array = wp_get_object_terms($post->ID, $taxonomies, array('fields' => 'ids'));

			}

			if ( $in_same_format ) {

				$taxonomies[] = 'post_format';

				$format_array = wp_get_object_terms($post->ID, 'post_format', array('fields' => 'ids'));

			}



			$join .= " INNER JOIN $wpdb->term_relationships AS tr ON p.ID = tr.object_id INNER JOIN $wpdb->term_taxonomy tt ON tr.term_taxonomy_id = tt.term_taxonomy_id AND tt.taxonomy IN (\"" . implode('", "', $taxonomies) . "\")";



			$term_array = array_unique( array_merge( $cat_array, $tax_array, $format_array ) );

			if ( !empty($term_array) )

				$in_same_term_sql = "AND tt.term_id IN (" . implode(',', $term_array) . ")";



			if ( !empty($excluded_categories) ) {

//				Support for both (1 and 5 and 15) and (1, 5, 15) delimiter styles

				$delimiter = ( strpos($excluded_categories, ',') !== false ) ? ',' : 'and';

				$excluded_categories = array_map( 'intval', explode($delimiter, $excluded_categories) );

//				Three category exclusion methods are supported: 'strong', 'diff', and 'weak'.

//				Default is 'weak'. See the plugin documentation for more information.

				if ( $ex_cats_method === 'strong' ) {

					$taxonomies = array_filter( get_post_taxonomies($post->ID), "is_taxonomy_hierarchical" );

					if ( function_exists('get_post_format') )

						$taxonomies[] = 'post_format';

					$ex_cats_posts = get_objects_in_term( $excluded_categories, $taxonomies );

					if ( !empty($ex_cats_posts) )

						$ex_cats_sql = "AND p.ID NOT IN (" . implode($ex_cats_posts, ',') . ")";

				} else {

					if ( !empty($term_array) && !in_array($ex_cats_method, array('diff', 'differential')) )

						$excluded_categories = array_diff($excluded_categories, $term_array);

					if ( !empty($excluded_categories) )

						$ex_cats_sql = "AND tt.term_id NOT IN (" . implode($excluded_categories, ',') . ')';

				}

			}



			if ( !empty($included_categories) ) {

				$in_same_term_sql = ''; // in_cats overrides in_same_cat

				$delimiter = ( strpos($included_categories, ',') !== false ) ? ',' : 'and';

				$included_categories = array_map( 'intval', explode($delimiter, $included_categories) );

				$in_cats_sql = "AND tt.term_id IN (" . implode(',', $included_categories) . ")";

			}

		}



//		Optionally restrict next/previous links to same author		

		if ( $in_same_author )

			$in_same_author_sql = $wpdb->prepare("AND p.post_author = %d", $post->post_author );



//		Optionally restrict next/previous links to same meta value

		if ( $in_same_meta && $r['order_by'] != 'custom' && $r['order_by'] != 'numeric' )

			$in_same_meta_sql = $wpdb->prepare("AND m.meta_value = %s", get_post_meta($post->ID, $in_same_meta, TRUE) );



//		Optionally exclude individual post IDs

		if ( !empty($excluded_posts) ) {

			$excluded_posts = array_map( 'intval', explode(',', $excluded_posts) );

			$ex_posts_sql = " AND p.ID NOT IN (" . implode(',', $excluded_posts) . ")";

		}

		

//		Optionally include individual post IDs

		if ( !empty($included_posts) ) {

			$included_posts = array_map( 'intval', explode(',', $included_posts) );

			$in_posts_sql = " AND p.ID IN (" . implode(',', $included_posts) . ")";

		}



		$adjacent = $previous ? 'previous' : 'next';

		$order = $previous ? 'DESC' : 'ASC';

		$op = $previous ? '<' : '>';



//		Optionally get the first/last post. Disable looping and return only one result.

		if ( $end_post ) {

			$order = $previous ? 'ASC' : 'DESC';

			$num_results = 1;

			$loop = false;

			if ( $end_post === 'fixed' ) // display the end post link even when it is the current post

				$op = $previous ? '<=' : '>=';

		}



//		If there is no next/previous post, loop back around to the first/last post.		

		if ( $loop && isset($result) ) {

			$op = $previous ? '>=' : '<=';

			$loop = false; // prevent an infinite loop if no first/last post is found

		}

		

		$join  = apply_filters( "get_{$adjacent}_post_plus_join", $join, $r );



//		In case the value in the $order_by column is not unique, select posts based on the $order_2nd column as well.

//		This prevents posts from being skipped when they have, for example, the same menu_order.

		$where = apply_filters( "get_{$adjacent}_post_plus_where", $wpdb->prepare("WHERE ( $order_by $op $order_format OR $order_2nd $op $order_format2 AND $order_by = $order_format ) AND p.post_type IN ($post_type) AND p.post_status = 'publish' $in_same_term_sql $in_same_author_sql $in_same_meta_sql $ex_cats_sql $in_cats_sql $ex_posts_sql $in_posts_sql", $current_post, $current_post2, $current_post), $r );



		$sort  = apply_filters( "get_{$adjacent}_post_plus_sort", "ORDER BY $order_by $order, $order_2nd $order LIMIT $num_results", $r );



		$query = "SELECT DISTINCT p.* FROM $wpdb->posts AS p $join $where $sort";

		$query_key = 'adjacent_post_' . md5($query);

		$result = wp_cache_get($query_key);

		if ( false !== $result )

			return $result;



//		echo $query . '<br />';



//		Use get_results instead of get_row, in order to retrieve multiple adjacent posts (when $num_results > 1)

//		Add DISTINCT keyword to prevent posts in multiple categories from appearing more than once

		$result = $wpdb->get_results("SELECT DISTINCT p.* FROM $wpdb->posts AS p $join $where $sort");

		if ( null === $result )

			$result = '';



	} while ( !$result && $loop );



	wp_cache_set($query_key, $result);

	return $result;

}



/**

 * Display previous post link that is adjacent to the current post.

 *

 * Based on previous_post_link() from wp-includes/link-template.php

 *

 * @param array|string $args Optional. Override default arguments.

 * @return bool True if previous post link is found, otherwise false.

 */

function previous_post_link_plus($args = '') {

	return adjacent_post_link_plus($args, '&laquo; %link', true);

}



/**

 * Display next post link that is adjacent to the current post.

 *

 * Based on next_post_link() from wp-includes/link-template.php

 *

 * @param array|string $args Optional. Override default arguments.

 * @return bool True if next post link is found, otherwise false.

 */

function next_post_link_plus($args = '') {

	return adjacent_post_link_plus($args, '%link &raquo;', false);

}



/**

 * Display adjacent post link.

 *

 * Can be either next post link or previous.

 *

 * Based on adjacent_post_link() from wp-includes/link-template.php

 *

 * @param array|string $args Optional. Override default arguments.

 * @param bool $previous Optional, default is true. Whether display link to previous post.

 * @return bool True if next/previous post is found, otherwise false.

 */

function adjacent_post_link_plus($args = '', $format = '%link &raquo;', $previous = true) {

	$defaults = array(

		'order_by' => 'post_date', 'order_2nd' => 'post_date', 'meta_key' => '', 'post_type' => '',

		'loop' => false, 'end_post' => false, 'thumb' => false, 'max_length' => 0,

		'format' => '', 'link' => '%title', 'date_format' => '', 'tooltip' => '%title',

		'in_same_cat' => false, 'in_same_tax' => false, 'in_same_format' => false,

		'in_same_author' => false, 'in_same_meta' => false,

		'ex_cats' => '', 'ex_cats_method' => 'weak', 'in_cats' => '', 'ex_posts' => '', 'in_posts' => '',

		'before' => '', 'after' => '', 'num_results' => 1, 'return' => false, 'echo' => true

	);



//	If Post Types Order plugin is installed, default to sorting on menu_order

	if ( function_exists('CPTOrderPosts') )

		$defaults['order_by'] = 'menu_order';

	

	$r = wp_parse_args( $args, $defaults );

	if ( empty($r['format']) )

		$r['format'] = $format;

	if ( empty($r['date_format']) )

		$r['date_format'] = get_option('date_format');

	if ( !function_exists('get_post_format') )

		$r['in_same_format'] = false;



	if ( $previous && is_attachment() ) {

		$posts = array();

		$posts[] = & get_post($GLOBALS['post']->post_parent);

	} else

		$posts = get_adjacent_post_plus($r, $previous);



//	If there is no next/previous post, return false so themes may conditionally display inactive link text.

	if ( !$posts )

		return false;



//	If sorting by date, display posts in reverse chronological order. Otherwise display in alpha/numeric order.

	if ( ($previous && $r['order_by'] != 'post_date') || (!$previous && $r['order_by'] == 'post_date') )

		$posts = array_reverse( $posts, true );

		

//	Option to return something other than the formatted link		

	if ( $r['return'] ) {

		if ( $r['num_results'] == 1 ) {

			reset($posts);

			$post = current($posts);

			if ( $r['return'] === 'id')

				return $post->ID;

			if ( $r['return'] === 'href')

				return get_permalink($post);

			if ( $r['return'] === 'object')

				return $post;

			if ( $r['return'] === 'title')

				return $post->post_title;

			if ( $r['return'] === 'date')

				return mysql2date($r['date_format'], $post->post_date);

		} elseif ( $r['return'] === 'object')

			return $posts;

	}



	$output = $r['before'];



//	When num_results > 1, multiple adjacent posts may be returned. Use foreach to display each adjacent post.

	foreach ( $posts as $post ) {

		$title = $post->post_title;

		if ( empty($post->post_title) )

			$title = $previous ? __('Previous Post', 'magazine') : __('Next Post', 'magazine');



		$title = apply_filters('the_title', $title, $post->ID);

		$date = mysql2date($r['date_format'], $post->post_date);

		$author = get_the_author_meta('display_name', $post->post_author);

	

//		Set anchor title attribute to long post title or custom tooltip text. Supports variable replacement in custom tooltip.

		if ( $r['tooltip'] ) {

			$tooltip = str_replace('%title', $title, $r['tooltip']);

			$tooltip = str_replace('%date', $date, $tooltip);

			$tooltip = str_replace('%author', $author, $tooltip);

			$tooltip = ' title="' . esc_attr($tooltip) . '"';

		} else

			$tooltip = '';



//		Truncate the link title to nearest whole word under the length specified.

		$max_length = intval($r['max_length']) < 1 ? 9999 : intval($r['max_length']);

		if ( strlen($title) > $max_length )

			$title = mb_substr( $title, 0, strrpos(substr($title, 0, $max_length ), ' ' ), "UTF-8" ) . '...';

	

		$rel = $previous ? 'prev' : 'next';



		$anchor = '<a href="'.get_permalink($post).'" rel="'.$rel.'"'.$tooltip.'>';

		$link = str_replace('%title', $title, $r['link']);

		$link = str_replace('%date', $date, $link);

		$link = $anchor . $link . '</a>';

	

		$format = str_replace('%link', $link, $r['format']);

		$format = str_replace('%title', $title, $format);

		$format = str_replace('%date', $date, $format);

		$format = str_replace('%author', $author, $format);

		if ( ($r['order_by'] == 'custom' || $r['order_by'] == 'numeric') && !empty($r['meta_key']) ) {

			$meta = get_post_meta($post->ID, $r['meta_key'], true);

			$format = str_replace('%meta', $meta, $format);

		} elseif ( $r['in_same_meta'] ) {

			$meta = get_post_meta($post->ID, $r['in_same_meta'], true);

			$format = str_replace('%meta', $meta, $format);

		}



//		Get the category list, including custom taxonomies (only if the %category variable has been used).

		if ( (strpos($format, '%category') !== false) && version_compare(PHP_VERSION, '5.0.0', '>=') ) {

			$term_list = '';

			$taxonomies = array_filter( get_post_taxonomies($post->ID), "is_taxonomy_hierarchical" );

			if ( $r['in_same_format'] && get_post_format($post->ID) )

				$taxonomies[] = 'post_format';

			foreach ( $taxonomies as &$taxonomy ) {

//				No, this is not a mistake. Yes, we are testing the result of the assignment ( = ).

//				We are doing it this way to stop it from appending a comma when there is no next term.

				if ( $next_term = get_the_term_list($post->ID, $taxonomy, '', ', ', '') ) {

					$term_list .= $next_term;

					if ( current($taxonomies) ) $term_list .= ', ';

				}

			}

			$format = str_replace('%category', $term_list, $format);

		}



//		Optionally add the post thumbnail to the link. Wrap the link in a span to aid CSS styling.

		if ( $r['thumb'] && has_post_thumbnail($post->ID) ) {

			if ( $r['thumb'] === true ) // use 'post-thumbnail' as the default size

				$r['thumb'] = 'post-thumbnail';

			$thumbnail = '<a class="post-thumbnail" href="'.get_permalink($post).'" rel="'.$rel.'"'.$tooltip.'>' . get_the_post_thumbnail( $post->ID, $r['thumb'] ) . '</a>';

			$format = $thumbnail . '<span class="post-link">' . $format . '</span>';

		}



//		If more than one link is returned, wrap them in <li> tags		

		if ( intval($r['num_results']) > 1 )

			$format = '<li>' . $format . '</li>';

		

		$output .= $format;

	}



	$output .= $r['after'];



	//	If echo is false, don't display anything. Return the link as a PHP string.

	if ( !$r['echo'] || $r['return'] === 'output' )

		return $output;



	$adjacent = $previous ? 'previous' : 'next';

	echo apply_filters( "{$adjacent}_post_link_plus", $output, $r );



	return true;

}











function wpb_set_post_views($postID) {



    $count_key = 'wpb_post_views_count';



    $count = get_post_meta($postID, $count_key, true);



    if($count==''){



        $count = 0;



        delete_post_meta($postID, $count_key);



        add_post_meta($postID, $count_key, '0');



    }else{



        $count++;



        update_post_meta($postID, $count_key, $count);



    }



}



//To keep the count accurate, lets get rid of prefetching



remove_action( 'wp_head', 'adjacent_posts_rel_link_wp_head', 10, 0);







function wpb_get_post_views($postID){



    $count_key = 'wpb_post_views_count';



    $count = get_post_meta($postID, $count_key, true);



    if($count==''){



        delete_post_meta($postID, $count_key);



        add_post_meta($postID, $count_key, '0');



        return "0 ";



    }



    return $count.' ';



}	



















?>