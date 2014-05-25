<?php 



class LatestPost extends WP_Widget {



	function LatestPost() {

		// Instantiate the parent object

		$widget_ops = array( 'classname' => 'widget_latestpost', 'description' => __( 'Show the latest post from your site', 'magazine' ) );

		parent::__construct( false, 'Magazine Latest Post', $widget_ops ); 

	}

	

	private function truncate_post($amount, $echo = true, $allowed = '') {

		global $post;

		$postExcerpt = '';

		$postExcerpt = $post->post_excerpt;

		

		if ($postExcerpt != '') {

			if (strlen ( $postExcerpt ) <= $amount)

				$echo_out = '';

			else

				$echo_out = '...';

			

			$postExcerpt = strip_tags ( $postExcerpt, $allowed );

			if ($echo_out == '...')

				$postExcerpt = substr ( $postExcerpt, 0, strrpos ( substr ( $postExcerpt, 0, $amount ), ' ' ) );

			else

				$postExcerpt = substr ( $postExcerpt, 0, $amount );

			

			if ($echo)

				echo $postExcerpt . $echo_out;

			else

				return ($postExcerpt . $echo_out);

		} else {

			$truncate = $post->post_content;

			

			$truncate = preg_replace ( '@\[caption[^\]]*?\].*?\[\/caption]@si', '', $truncate );

			

			if (strlen ( $truncate ) <= $amount)

				$echo_out = '';

			else

				$echo_out = '...';

			

			$truncate = apply_filters ( 'the_content', $truncate );

			$truncate = preg_replace ( '@<script[^>]*?>.*?</script>@si', '', $truncate );

			$truncate = preg_replace ( '@<style[^>]*?>.*?</style>@si', '', $truncate );

			

			$truncate = strip_tags ( $truncate, $allowed );

			

			if ($echo_out == '...')

				$truncate = substr ( $truncate, 0, strrpos ( substr ( $truncate, 0, $amount ), ' ' ) );

			else

				$truncate = substr ( $truncate, 0, $amount );

			

			if ($echo)

				echo $truncate . $echo_out;

			else

				return ($truncate . $echo_out);

		}

	}



	function widget( $args, $instance ) {

		extract ( $args );

		$title = apply_filters ( 'title', isset ( $instance ['title'] ) ? esc_attr ( $instance ['title'] ) : '' );

		$bgcolor = apply_filters ( 'bgcolor', isset ( $instance ['bgcolor'] ) ? esc_attr ( $instance ['bgcolor'] ) : '7cc6fa' );

		$tcolor = apply_filters ( 'tcolor', isset ( $instance ['tcolor'] ) ? esc_attr ( $instance ['tcolor'] ) : 'FFFFFF' );

		$category = apply_filters ( 'category', isset ( $instance ['category'] ) ? esc_attr ( $instance ['category'] ) : '' );

		$moretext = apply_filters ( 'moretext', isset ( $instance ['moretext'] ) ? esc_attr ( $instance ['moretext'] ) : '' );

		$count = apply_filters ( 'count', isset ( $instance ['count'] ) && is_numeric ( $instance ['count'] ) ? esc_attr ( $instance ['count'] ) : '' );

		$orderby = apply_filters ( 'orderby', isset ( $instance ['orderby'] ) ? $instance ['orderby'] : '' );

		$order = apply_filters ( 'order', isset ( $instance ['order'] ) ? $instance ['order'] : '' );

		$width = apply_filters ( 'width', isset ( $instance ['width'] ) && is_numeric ( $instance ['width'] ) ? $instance ['width'] : '91' );

		$height = apply_filters ( 'height', isset ( $instance ['height'] ) && is_numeric ( $instance ['height'] ) ? $instance ['height'] : '55' );

		$tlength = isset ( $instance ['tlength'] ) && is_numeric ( $instance ['tlength'] ) ? $instance ['tlength'] : '35';

		$length = apply_filters ( 'length', isset ( $instance ['length'] ) && is_numeric ( $instance ['length'] ) ? $instance ['length'] : '100' );

		$show_post_title = apply_filters ( 'show_post_title', isset ( $instance ['show_post_title'] ) ? ( bool ) $instance ['show_post_title'] : false );

		$show_post_time = apply_filters ( 'show_post_time', isset ( $instance ['show_post_time'] ) ? ( bool ) $instance ['show_post_time'] : false );

		$show_post_thumb = apply_filters ( 'show_post_thumb', isset ( $instance ['show_post_thumb'] ) ? ( bool ) $instance ['show_post_thumb'] : ( bool ) false );

		$show_post_rating = apply_filters ( 'show_post_rating', isset ( $instance ['show_post_rating'] ) ? ( bool ) $instance ['show_post_rating'] : false );

		$show_post_excerpt = apply_filters ( 'show_post_excerpt', isset ( $instance ['show_post_excerpt'] ) ? ( bool ) $instance ['show_post_excerpt'] : false );

		

		echo $before_widget;

		if (! empty ( $title ))

			//echo $before_title;

			echo '<h3 class="title"><span style="background-color: #'. $bgcolor.';color: #'. $tcolor. ';">';

			echo $title . '</span></h3>';

			//echo $after_title;

			

?>



<div class="latest-posts widget">

<?php

$wp_query = new WP_Query( array('cat' => $category, 'posts_per_page' => $count, 'orderby' => $orderby, 'order' => $order, 'nopagging' => true));

while ($wp_query->have_posts()) : $wp_query->the_post(); ?>

	<div class="latest-post">

	<?php if ($show_post_thumb && has_post_thumbnail()) { ?>

		<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('thumbs', array('title' => '', 'class' => 'thumb fl')); ?></a>

	<?php } ?>



	<?php if ($show_post_title) { ?>

		<h4><a href="<?php the_permalink() ?>" rel="bookmark"

	title="<?php the_title_attribute() ?>"><?php the_title_limit('', '...', true, $tlength); ?></a></h4>

	<?php } ?>

	

	<?php if ($show_post_time) { ?>

		<div class="post-time">

			<?php the_time ( get_option ( 'date_format' ) ); ?>

		</div>

	<?php } ?>



	<?php if ($show_post_rating) { ?>

	<?php echo PostRatings()->getControl(); ?>

	<?php } ?>

		

	<?php if ($show_post_excerpt) { ?>

		<div class="excerpt">

			<?php echo $this->truncate_post($length) . ($moretext != '') ? ' <a href="' . get_permalink () . '" class="read-more">' . $moretext . '</a>' : ''; ?>

		</div>

	<?php } ?>

	

		<div class="clear"></div>

	</div>

<?php

endwhile;

wp_reset_query();

wp_reset_postdata();

		?>

</div>

<?php

		echo $after_widget;

	}



	



	function update( $new_instance, $old_instance ) {

		// Save widget options

		return $new_instance;

	}



	function form( $instance ) {

		// Output admin widget options form

		$title = isset ( $instance ['title'] ) ? esc_attr ( $instance ['title'] ) : '';

		$bgcolor = apply_filters ( 'bgcolor', isset ( $instance ['bgcolor'] ) ? esc_attr ( $instance ['bgcolor'] ) : '7cc6fa' );

		$tcolor = apply_filters ( 'tcolor', isset ( $instance ['tcolor'] ) ? esc_attr ( $instance ['tcolor'] ) : 'FFFFFF' );

		$category = isset ( $instance ['category'] ) ? esc_attr ( $instance ['category'] ) : '';

		$moretext = isset ( $instance ['moretext'] ) ? esc_attr ( $instance ['moretext'] ) : 'more&raquo;';

		$count = isset ( $instance ['count'] ) && is_numeric ( $instance ['count'] ) ? esc_attr ( $instance ['count'] ) : '4';

		$orderby = isset ( $instance ['orderby'] ) ? $instance ['orderby'] : '';

		$order = isset ( $instance ['order'] ) ? $instance ['order'] : '';

		$width = isset ( $instance ['width'] ) && is_numeric ( $instance ['width'] ) ? $instance ['width'] : '91';

		$height = isset ( $instance ['height'] ) && is_numeric ( $instance ['height'] ) ? $instance ['height'] : '55';

		$tlength = isset ( $instance ['tlength'] ) && is_numeric ( $instance ['tlength'] ) ? $instance ['tlength'] : '35';

		$length = isset ( $instance ['length'] ) && is_numeric ( $instance ['length'] ) ? $instance ['length'] : '100';

		$show_post_title = isset ( $instance ['show_post_title'] ) ? ( bool ) $instance ['show_post_title'] : false;

		$show_post_time = isset ( $instance ['show_post_time'] ) ? ( bool ) $instance ['show_post_time'] : false;

		$show_post_thumb = isset ( $instance ['show_post_thumb'] ) ? ( bool ) $instance ['show_post_thumb'] : false;

		$show_post_rating = apply_filters ( 'show_post_rating', isset ( $instance ['show_post_rating'] ) ? ( bool ) $instance ['show_post_rating'] : false );

		$show_post_excerpt = isset ( $instance ['show_post_excerpt'] ) ? ( bool ) $instance ['show_post_excerpt'] : false;

?>



<p><label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Title:', 'magazine'); ?> <input

	class="widefat" id="<?php echo $this->get_field_id('title'); ?>"

	name="<?php echo $this->get_field_name('title'); ?>" type="text"

	value="<?php echo $title; ?>" /></label>

<small><?php _e('Title background color (hex color)', 'magazine'); ?></small>

<input id="<?php echo $this->get_field_id('bgcolor'); ?>"

	name="<?php echo $this->get_field_name('bgcolor'); ?>" type="text"

	size="3" value="<?php echo $bgcolor; ?>" /><br />

<small><?php _e('Title color (hex color)', 'magazine'); ?></small>

<input id="<?php echo $this->get_field_id('tcolor'); ?>"

	name="<?php echo $this->get_field_name('tcolor'); ?>" type="text"

	size="3" value="<?php echo $tcolor; ?>" /><br />

</p>



<p><label for="<?php echo $this->get_field_id('category'); ?>"><?php _e('Category:', 'magazine'); ?></label><select

	id="<?php echo $this->get_field_id('category'); ?>"

	name="<?php echo $this->get_field_name('category'); ?>">

	<?php 

	echo '<option value="0" ' .( '0' == $category ? 'selected="selected"' : '' ). '>'. __('All categories', 'magazine').'</option>';

	$cats = get_categories(array('hide_empty' => 0, 'name' => 'category', 'hierarchical' => true));

	foreach ($cats as $cat) {

		echo '<option value="' . $cat->term_id . '" ' .( $cat->term_id == $category ? 'selected="selected"' : '' ). '>' . $cat->name . '</option>';

	} ?>

	</select></p>



<p><label for="<?php echo $this->get_field_id('orderby'); ?>"><?php _e('Order by:', 'magazine'); ?></label><select

	id="<?php echo $this->get_field_id('orderby'); ?>"

	name="<?php echo $this->get_field_name('orderby'); ?>">

	<option value="date"

		<?php echo 'date' == $orderby ? 'selected="selected"' : '' ?>><?php _e('Date', 'magazine'); ?></option>

	<option value="ID"

		<?php echo 'ID' == $orderby ? 'selected="selected"' : '' ?>><?php _e('ID', 'magazine'); ?></option>

	<option value="title"

		<?php echo 'title' == $orderby ? 'selected="selected"' : '' ?>><?php _e('Title', 'magazine'); ?></option>

	<option value="author"

		<?php echo 'author' == $orderby ? 'selected="selected"' : '' ?>><?php _e('Author', 'magazine'); ?></option>

	<option value="comment_count"

		<?php echo 'comment_count' == $orderby ? 'selected="selected"' : '' ?>><?php _e('Comment count', 'magazine'); ?></option>

	<option value="rand"

		<?php echo 'rand' == $orderby ? 'selected="selected"' : '' ?>><?php _e('Random', 'magazine'); ?></option>

</select></p>



<p><label for="<?php echo $this->get_field_id('order'); ?>"><?php _e('Order:', 'magazine'); ?></label><select

	id="<?php echo $this->get_field_id('order'); ?>"

	name="<?php echo $this->get_field_name('order'); ?>">

	<option value="DESC"

		<?php echo 'DESC' == $order ? 'selected="selected"' : '' ?>><?php _e('DESC:', 'magazine'); ?></option>

	<option value="ASC"

		<?php echo 'ASC' == $order ? 'selected="selected"' : '' ?>><?php _e('ASC:', 'magazine'); ?></option>

</select></p>



<p><label for="<?php echo $this->get_field_id('count'); ?>"><?php _e('Number of posts to show:', 'magazine'); ?> <input

	id="<?php echo $this->get_field_id('count'); ?>"

	name="<?php echo $this->get_field_name('count'); ?>" type="text"

	size="3" value="<?php echo $count; ?>" /></label></p>



<p><input id="<?php echo $this->get_field_id('show_post_title'); ?>"

	name="<?php echo $this->get_field_name('show_post_title'); ?>"

	type="checkbox" <?php checked($show_post_title); ?> /> <label

	for="<?php echo $this->get_field_id('show_post_title'); ?>"><?php _e('Show post title', 'magazine'); ?></label><br />

<small><?php _e('Title length (characters)', 'magazine'); ?></small>

<input id="<?php echo $this->get_field_id('tlength'); ?>"

	name="<?php echo $this->get_field_name('tlength'); ?>" type="text"

	size="3" value="<?php echo $tlength; ?>" /><br />

</p>



<p><input id="<?php echo $this->get_field_id('show_post_time'); ?>"

	name="<?php echo $this->get_field_name('show_post_time'); ?>"

	type="checkbox" <?php checked($show_post_time); ?> /> <label

	for="<?php echo $this->get_field_id('show_post_time'); ?>"><?php _e('Show post time', 'magazine'); ?></label>

</p>



<p><input id="<?php echo $this->get_field_id('show_post_thumb'); ?>"

	name="<?php echo $this->get_field_name('show_post_thumb'); ?>"

	type="checkbox" <?php checked($show_post_thumb); ?> /> <label

	for="<?php echo $this->get_field_id('show_post_thumb'); ?>"><?php _e('Show post thumb', 'magazine'); ?></label><br />

</p>

	

<p><input id="<?php echo $this->get_field_id('show_post_rating'); ?>"

	name="<?php echo $this->get_field_name('show_post_rating'); ?>"

	type="checkbox" <?php checked($show_post_rating); ?> /> <label

	for="<?php echo $this->get_field_id('show_post_rating'); ?>"><?php _e('Show post rating', 'magazine'); ?></label>

</p>

	

<p><input id="<?php echo $this->get_field_id('show_post_excerpt'); ?>"

	name="<?php echo $this->get_field_name('show_post_excerpt'); ?>"

	type="checkbox" <?php checked($show_post_excerpt); ?> /> <label

	for="<?php echo $this->get_field_id('show_post_excerpt'); ?>"><?php _e('Show post excerpt', 'magazine'); ?></label><br />

<small><?php _e('Post excerpt length (characters)', 'magazine'); ?></small>

<input id="<?php echo $this->get_field_id('length'); ?>"

	name="<?php echo $this->get_field_name('length'); ?>" type="text"

	size="3" value="<?php echo $length; ?>" /><br />

<small><?php _e('Read more text', 'magazine'); ?></small>

<input name="<?php echo $this->get_field_name('moretext'); ?>"

	type="text" size="12" value="<?php echo $moretext; ?>" /></p>



<?php 

	}

}



function magz_latestpost_widgets() {

	register_widget( 'LatestPost' );

}



add_action( 'widgets_init', 'magz_latestpost_widgets' );





/* Widget tabbed */

add_action( 'widgets_init', 'magz_tabbed_widget' );





function magz_tabbed_widget() {

	register_widget( 'Magazine_Tabbed_Widget' );

}





class Magazine_Tabbed_Widget extends WP_Widget {















	function Magazine_Tabbed_Widget() {

		$widget_ops = array( 'classname' => 'cs', 'description' => __('Display tabbed contents in the sidebar.', 'magazine') );

		

		$control_ops = array( 'width' => 250, 'height' => 350, 'id_base' => 'tabbed-widget' );

		

		$this->WP_Widget( 'tabbed-widget', __('Magazine - Tabbed Contents', 'magazine'), $widget_ops, $control_ops );

	}



	

	

	

	/* Output */

	function widget( $args, $instance ) {

		extract( $args );		

		

		//Our variables from the widget settings.



		$popular_tab = $instance['popular_tab'];

		$recent_tab = $instance['recent_tab'];

		$comments_tab = $instance['comments_tab'];

		$tags_tab = $instance['tags_tab'];
		
		$max_item_popular = $instance['max_item_popular'];



?>				

			

				

			

				

	

<div id="tabwidget" class="widget tab-container"> 

  <ul id="tabnav"> 

  

	<?php if($popular_tab !='') { ?> 

    <li><h3><a href="#tab1" class="selected"><img src="<?php echo get_template_directory_uri(); ?>/images/view-white-bg.png"><?php _e('Популярное', 'magazine'); ?></a></h3></li>

	<?php } ?>

	<?php if($recent_tab !='') { ?> 

    <li><h3><a href="#tab2"><img src="<?php echo get_template_directory_uri(); ?>/images/time-white.png"><?php _e('Новое', 'magazine'); ?></a></h3></li>

	<?php } ?>	

	<?php if($comments_tab !='') { ?> 

    <li><h3><a href="#tab3"><img src="<?php echo get_template_directory_uri(); ?>/images/komen-putih.png"><?php _e('Коммент.', 'magazine'); ?></a></h3></li>

	<?php } ?>

	<?php if($tags_tab !='') { ?> 

    <li><h3><a href="#tab4"><?php _e('Теги', 'magazine'); ?></a></h3></li> 

	<?php } ?>

	<div class="clearfix"></div>

	

  </ul> 

  

	<div id="tab-content">

	

	<?php if($popular_tab !='') { ?> 

		  <div id="tab1" style="display: block; ">

			<ul id="itemContainer" class="recent-tab">

				<?php 

				global $wp_query;

				$limit = $popular_tab;

				

				$temp_query = $wp_query;

				

				$args = array( 

					'posts_per_page' => $max_item_popular, 

					'meta_key' => 'wpb_post_views_count', 

					'orderby' => 'meta_value_num', 

					'order' => 'DESC' 

				);

				

				$wp_query = new WP_Query($args);

				

				while ( $wp_query->have_posts() ) : $wp_query->the_post(); ?>

				

					<li>

						<?php if ( has_post_thumbnail() ) { ?>

						<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('thumbs', array('class' => 'thumb')); ?></a>



						<?php } ?>			

						<h4 class="post-title"><a href="<?php the_permalink(); ?>"><?php the_title_limit('', '...', true, '31'); ?></a></h4>

						<p><?php echo get_excerpt(70); ?></p><div class="clearfix"></div>				

					</li>

						

				<?php endwhile; ?>

				<?php if (isset($wp_query)) {$wp_query = $temp_query;} ?>
				
				
				
				<script type="text/javascript">


					jQuery(document).ready(function($){



						/* initiate the plugin */

						$("div.holder").jPages({

						  containerID  : "itemContainer",

						  perPage      : <?php echo $limit; ?>,

						  startPage    : 1,

						  startRange   : 1,

						  links		   : "blank"

						});
						


					  });		


				
				</script>
				
				
				

			</ul>
			
			<div class="holder clearfix"></div><div class="clear"></div>

			<!-- End most viewed post -->		  

		  

		  </div><!-- /#tab1 -->

	<?php } ?>	  
	
	
	<?php if($recent_tab !='') { ?> 

		  <div id="tab2" style="display: visible;">	

		  	  		  

			<ul id="itemContainer2" class="recent-tab">

			

			<?php 

			global $paged;	

			$limit = $recent_tab;

			$temp_query = $wp_query;

			

			$args = array( 

				'paged' => $paged,

				'posts_per_page' => $limit

			);

			

			$wp_query = new WP_Query($args);

			

			?>

			

			<?php while ($wp_query->have_posts()) : $wp_query->the_post(); ?>									

						

			<li>

				<?php if ( has_post_thumbnail() ) { ?>

				<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('thumbs', array('class' => 'thumb')); ?></a>



				<?php } ?>			

				<h4 class="post-title"><a href="<?php the_permalink(); ?>"><?php the_title_limit('', '...', true, '31'); ?></a></h4>

				<p><?php echo get_excerpt(70); ?></p><div class="clearfix"></div>	

					

			</li>

			<?php endwhile; ?>

			<?php if (isset($wp_query)) {$wp_query = $temp_query;} // restore loop?>	

		

		  </ul> 	 

		 </div><!-- /#tab2 --> 

	<?php } ?>	  
	  	
	<?php if($comments_tab !='') { ?>  

		  <div id="tab3" style="display: none; ">

		  

				<?php

				global $wpdb;

				$limit = $comments_tab;

				$pre_HTML = null;

				$sql = "SELECT DISTINCT ID, post_title, post_password, comment_ID,

				comment_post_ID, comment_author, comment_date_gmt, comment_approved,

				comment_type,comment_author_url,

				SUBSTRING(comment_content,1,30) AS com_excerpt

				FROM $wpdb->comments

				LEFT OUTER JOIN $wpdb->posts ON ($wpdb->comments.comment_post_ID =

				$wpdb->posts.ID)

				WHERE comment_approved = '1' AND comment_type = '' AND

				post_password = ''

				ORDER BY comment_date_gmt DESC

				LIMIT $limit";

				$comments = $wpdb->get_results($sql);

				$output = $pre_HTML;

				$output .= "\n<ul>";
				foreach ($comments as $comment) {

				$output .= "\n<li><span class=\"author\">".strip_tags($comment->comment_author)

				."</span> on " . "<a href=\"" . get_permalink($comment->ID) .

				"#comment-" . $comment->comment_ID . "\" title=\" View comment \">" . strip_tags($comment->com_excerpt)

				."</a></li>";

				}

				$post_HTML = null;

				$output .= "\n</ul>";

				$output .= $post_HTML;

				echo $output;?>

		  </div><!-- /#tab2 --> 

	<?php } ?>		

		  

		  

	<?php if($tags_tab !='') { ?>  

		  <div id="tab4" style="display: none; ">		  

			

		<?php if ( function_exists('wp_tag_cloud') ) : ?>		  

			<div class="tag-clouds-tab">

			<?php 

			  $limit = $tags_tab;

			  $args = array(

				'taxonomy'  => array('post_tag'), 

				'smallest'  => 10,

				'largest'  => 10,

				'format' => 'flat',		

				'number' => $limit

			   ); 

			   

			  wp_tag_cloud($args);

			?>

			</div>

		<?php endif; ?>			

		  

		  </div><!-- /#tab3 -->   

	<?php } ?>	  

		  

		  

	</div><!-- /#tab-content -->

 

</div><!-- /#usual1 --> 

	

				

				

				

				

				

				

				

				

				

			

<?php

		

		

		

	}	

	

	

	

	//Update the widget 

	 

	function update( $new_instance, $old_instance ) {

		$instance = $old_instance;



		//Strip tags from title and text to remove HTML 

		

		$instance['popular_tab'] = strip_tags($new_instance['popular_tab']);

		$instance['recent_tab'] = strip_tags($new_instance['recent_tab']);

		$instance['comments_tab'] = strip_tags($new_instance['comments_tab']);

		$instance['tags_tab'] = strip_tags($new_instance['tags_tab']);
		
		$instance['max_item_popular'] = strip_tags($new_instance['max_item_popular']);

		

		return $instance;

	}

	

	

	

	

	

	// Form

	

	

	

	function form( $instance ) {

	

	

		//Set up some default widget settings.

		$defaults = array( 

			'popular_tab' => __(5, null),

			'recent_tab' => __(5, null),

			'comments_tab' => __(5, null),

			'tags_tab' => __(5, null),
			
			'max_item_popular' => __(5, null)

		);

		$instance = wp_parse_args( (array) $instance, $defaults ); ?>	

		

		<p class="description">Specify number of items to display or leave blank to hide.</p>

		
		<h3>Popular Posts:</h3>
		
		<p>
		
			<label for="<?php echo $this->get_field_id( 'max_item_popular' ); ?>"><?php _e('Maksimum items:', 'magazine'); ?></label>

			<input id="<?php echo $this->get_field_id( 'max_item_popular' ); ?>" name="<?php echo $this->get_field_name( 'max_item_popular' ); ?>" value="<?php echo $instance['max_item_popular']; ?>" size="3" type="text" />

		</p>	



		<p>

			<label for="<?php echo $this->get_field_id( 'popular_tab' ); ?>"><?php _e('Visible items:', 'magazine'); ?></label>

			<input id="<?php echo $this->get_field_id( 'popular_tab' ); ?>" name="<?php echo $this->get_field_name( 'popular_tab' ); ?>" value="<?php echo $instance['popular_tab']; ?>" size="3" type="text" />

		</p>	

		
		<hr />


		

		<p>

			<label for="<?php echo $this->get_field_id( 'recent_tab' ); ?>"><?php _e('Новые записи:', 'magazine'); ?></label>

			<input id="<?php echo $this->get_field_id( 'recent_tab' ); ?>" name="<?php echo $this->get_field_name( 'recent_tab' ); ?>" value="<?php echo $instance['recent_tab']; ?>" size="3" type="text" />

		</p>	



		

		<p>

			<label for="<?php echo $this->get_field_id( 'comments_tab' ); ?>"><?php _e('Комментарии:', 'magazine'); ?></label>

			<input id="<?php echo $this->get_field_id( 'comments_tab' ); ?>" name="<?php echo $this->get_field_name( 'comments_tab' ); ?>" value="<?php echo $instance['comments_tab']; ?>" size="3" type="text">			

		</p>	



		

		

		

		

	

	

	<?php }

	

}







// Recent Post by Category

class RecentPostbyCategory extends WP_Widget {



	function RecentPostbyCategory() {

		// Instantiate the parent object

		$widget_ops = array( 'classname' => 'widget_latestpost', 'description' => __( "Show the recent post by category from your site", "magazine" ) );

		//$control_ops = array('width' => 300,'height' => 350,'id_base' => 'rpwe_widget');

		parent::__construct( false, 'Magazine - Recent Post by Category', $widget_ops ); //, $control_ops );

	}

	

	private function truncate_post($amount, $echo = true, $allowed = '') {

		global $post;

		$postExcerpt = '';

		$postExcerpt = $post->post_excerpt;

		

		if ($postExcerpt != '') {

			if (strlen ( $postExcerpt ) <= $amount)

				$echo_out = '';

			else

				$echo_out = '...';

			

			$postExcerpt = strip_tags ( $postExcerpt, $allowed );

			if ($echo_out == '...')

				$postExcerpt = substr ( $postExcerpt, 0, strrpos ( substr ( $postExcerpt, 0, $amount ), ' ' ) );

			else

				$postExcerpt = substr ( $postExcerpt, 0, $amount );

			

			if ($echo)

				echo $postExcerpt . $echo_out;

			else

				return ($postExcerpt . $echo_out);

		} else {

			$truncate = $post->post_content;

			

			$truncate = preg_replace ( '@\[caption[^\]]*?\].*?\[\/caption]@si', '', $truncate );

			

			if (strlen ( $truncate ) <= $amount)

				$echo_out = '';

			else

				$echo_out = '...';

			

			$truncate = apply_filters ( 'the_content', $truncate );

			$truncate = preg_replace ( '@<script[^>]*?>.*?</script>@si', '', $truncate );

			$truncate = preg_replace ( '@<style[^>]*?>.*?</style>@si', '', $truncate );

			

			$truncate = strip_tags ( $truncate, $allowed );

			

			if ($echo_out == '...')

				$truncate = substr ( $truncate, 0, strrpos ( substr ( $truncate, 0, $amount ), ' ' ) );

			else

				$truncate = substr ( $truncate, 0, $amount );

			

			if ($echo)

				echo $truncate . $echo_out;

			else

				return ($truncate . $echo_out);

		}

	}

	

	function widget( $args, $instance ) {

		extract ( $args );

		$title = apply_filters ( 'title', isset ( $instance ['title'] ) ? esc_attr ( $instance ['title'] ) : '' );

		$bgcolor = apply_filters ( 'bgcolor', isset ( $instance ['bgcolor'] ) ? esc_attr ( $instance ['bgcolor'] ) : 'b8d09e' );

		$tcolor = apply_filters ( 'tcolor', isset ( $instance ['tcolor'] ) ? esc_attr ( $instance ['tcolor'] ) : 'FFFFFF' );

		$category = apply_filters ( 'category', isset ( $instance ['category'] ) ? esc_attr ( $instance ['category'] ) : '' );

		$count = apply_filters ( 'count', isset ( $instance ['count'] ) && is_numeric ( $instance ['count'] ) ? esc_attr ( $instance ['count'] ) : '' );

		$orderby = apply_filters ( 'orderby', isset ( $instance ['orderby'] ) ? $instance ['orderby'] : '' );

		$order = apply_filters ( 'order', isset ( $instance ['order'] ) ? $instance ['order'] : '' );

		$tlength = isset ( $instance ['tlength'] ) && is_numeric ( $instance ['tlength'] ) ? $instance ['tlength'] : '35';



		echo $before_widget;

		if (! empty ( $title ))

			//echo $before_title;

			echo '<h3 class="title"><span style="background-color: #'. $bgcolor.';color: #'. $tcolor. ';">';

			echo $title . '</span></h3>';

			//echo $after_title;

			

?>



<div class="latest-posts">		

<?php

$first=0;

?>

<?php

$wp_query = new WP_Query( array('cat' => $category, 'posts_per_page' => $count, 'orderby' => $orderby, 'order' => $order) ); 



	while ( $wp_query->have_posts() ) {

		$wp_query->the_post();$first++; ?>



<?php if ( 1 == $first ) { ?>

		<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

		<a class="image_thumb_zoom" href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark">

		<?php if ( has_post_thumbnail() ) { ?>

		<?php the_post_thumbnail('post-first'); ?>

		<?php } ?>
		
		</a>

		<h4 class="post-title"><a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark"><?php the_title_limit('', '...', true, '35'); ?></a>

		<span class="date"><?php the_time( get_option ( 'date_format' ) ); ?></span>

		</h4>

		<p><?php echo get_excerpt(115); ?></p>

		</article>

<?php } else { ?>

		<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

		<div class="entry clearfix">

		<a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark">

		<?php if ( has_post_thumbnail() ) { ?>

		<?php the_post_thumbnail('thumbs', array('class' => 'thumb')); ?>

		<?php } else { ?>

		<img src="<?php echo get_template_directory_uri(); ?>/images/thumb_546x281.png">

		<?php } ?>

		<h4 class="post-title"><?php the_title_limit('', '...', true, $tlength); ?></h4></a>

		<p><?php echo get_excerpt(40); ?></p>

		<div class="meta">

		<span class="date"><?php the_time( get_option ( 'date_format' ) ); ?></span>

		</div>

		</div>

		</article>



<?php } ?>

<?php } ?>



</div>



<?php

		echo $after_widget;

	}



	



	function update( $new_instance, $old_instance ) {

		// Save widget options

		return $new_instance;

	}



	function form( $instance ) {

		// Output admin widget options form

		$title = apply_filters ( 'title', isset ( $instance ['title'] ) ? esc_attr ( $instance ['title'] ) : '' );

		$bgcolor = apply_filters ( 'bgcolor', isset ( $instance ['bgcolor'] ) ? esc_attr ( $instance ['bgcolor'] ) : 'b8d09e' );

		$tcolor = apply_filters ( 'tcolor', isset ( $instance ['tcolor'] ) ? esc_attr ( $instance ['tcolor'] ) : 'FFFFFF' );

		$category = apply_filters ( 'category', isset ( $instance ['category'] ) ? esc_attr ( $instance ['category'] ) : '' );

		$count = apply_filters ( 'count', isset ( $instance ['count'] ) && is_numeric ( $instance ['count'] ) ? esc_attr ( $instance ['count'] ) : '' );

		$orderby = apply_filters ( 'orderby', isset ( $instance ['orderby'] ) ? $instance ['orderby'] : '' );

		$order = apply_filters ( 'order', isset ( $instance ['order'] ) ? $instance ['order'] : '' );

		$tlength = isset ( $instance ['tlength'] ) && is_numeric ( $instance ['tlength'] ) ? $instance ['tlength'] : '35';

		

?>



<p><label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Title:', 'magazine'); ?> <input

	class="widefat" id="<?php echo $this->get_field_id('title'); ?>"

	name="<?php echo $this->get_field_name('title'); ?>" type="text"

	value="<?php echo $title; ?>" /></label>

<small><?php _e('Title background color (hex color)', 'magazine'); ?></small>

<input id="<?php echo $this->get_field_id('bgcolor'); ?>"

	name="<?php echo $this->get_field_name('bgcolor'); ?>" type="text"

	size="3" value="<?php echo $bgcolor; ?>" /><br />

<small><?php _e('Title color (hex color)', 'magazine'); ?></small>

<input id="<?php echo $this->get_field_id('tcolor'); ?>"

	name="<?php echo $this->get_field_name('tcolor'); ?>" type="text"

	size="3" value="<?php echo $tcolor; ?>" /><br />

</p>



<p><label for="<?php echo $this->get_field_id('category'); ?>"><?php _e('Category:', 'magazine'); ?></label><select

	id="<?php echo $this->get_field_id('category'); ?>"

	name="<?php echo $this->get_field_name('category'); ?>">

	<?php 

	echo '<option value="0" ' .( '0' == $category ? 'selected="selected"' : '' ). '>'. __('All categories', 'magazine').'</option>';

	$cats = get_categories(array('hide_empty' => 0, 'name' => 'category', 'hierarchical' => true));

	foreach ($cats as $cat) {

		echo '<option value="' . $cat->term_id . '" ' .( $cat->term_id == $category ? 'selected="selected"' : '' ). '>' . $cat->name . '</option>';

	} ?>

	</select></p>



<p><label for="<?php echo $this->get_field_id('orderby'); ?>"><?php _e('Order by:', 'magazine'); ?></label><select

	id="<?php echo $this->get_field_id('orderby'); ?>"

	name="<?php echo $this->get_field_name('orderby'); ?>">

	<option value="date"

		<?php echo 'date' == $orderby ? 'selected="selected"' : '' ?>><?php _e('Date', 'magazine'); ?></option>

	<option value="ID"

		<?php echo 'ID' == $orderby ? 'selected="selected"' : '' ?>><?php _e('ID', 'magazine'); ?></option>

	<option value="title"

		<?php echo 'title' == $orderby ? 'selected="selected"' : '' ?>><?php _e('Title', 'magazine'); ?></option>

	<option value="author"

		<?php echo 'author' == $orderby ? 'selected="selected"' : '' ?>><?php _e('Author', 'magazine'); ?></option>

	<option value="comment_count"

		<?php echo 'comment_count' == $orderby ? 'selected="selected"' : '' ?>><?php _e('Comment count', 'magazine'); ?></option>

	<option value="rand"

		<?php echo 'rand' == $orderby ? 'selected="selected"' : '' ?>><?php _e('Random', 'magazine'); ?></option>

</select></p>



<p><label for="<?php echo $this->get_field_id('order'); ?>"><?php _e('Order:', 'magazine'); ?></label><select

	id="<?php echo $this->get_field_id('order'); ?>"

	name="<?php echo $this->get_field_name('order'); ?>">

	<option value="DESC"

		<?php echo 'DESC' == $order ? 'selected="selected"' : '' ?>><?php _e('DESC:', 'magazine'); ?></option>

	<option value="ASC"

		<?php echo 'ASC' == $order ? 'selected="selected"' : '' ?>><?php _e('ASC:', 'magazine'); ?></option>

</select></p>



<p><label for="<?php echo $this->get_field_id('count'); ?>"><?php _e('Number of posts to show:', 'magazine'); ?> <input

	id="<?php echo $this->get_field_id('count'); ?>"

	name="<?php echo $this->get_field_name('count'); ?>" type="text"

	size="3" value="<?php echo $count; ?>" /></label></p>

	

<p><?php _e('Post title length (characters)', 'magazine'); ?>

<input id="<?php echo $this->get_field_id('tlength'); ?>"

	name="<?php echo $this->get_field_name('tlength'); ?>" type="text"

	size="3" value="<?php echo $tlength; ?>" /><br />

</p>





	

<?php 

	}

}



function magz_recentpostbycategory_widgets() {

	register_widget( 'RecentPostbyCategory' );

}



add_action( 'widgets_init', 'magz_RecentPostbyCategory_widgets' );

















class SocialMedia extends WP_Widget {



	function SocialMedia() {

		// Instantiate the parent object

		$widget_ops = array( 'classname' => 'widget_social', 'description' => __( 'Show the social media widget.', 'magazine' ) );

		//$control_ops = array('width' => 300,'height' => 350,'id_base' => 'rpwe_widget');

		parent::__construct( false, 'Magazine - Social Media', $widget_ops ); //, $control_ops );

	}

	



	

	function widget( $args, $instance ) {

		extract ( $args );

		$title = apply_filters ( 'title', isset ( $instance ['title'] ) ? esc_attr ( $instance ['title'] ) : '' );

		$bgcolor = apply_filters ( 'bgcolor', isset ( $instance ['bgcolor'] ) ? esc_attr ( $instance ['bgcolor'] ) : 'FF8C8C' );

		$tcolor = apply_filters ( 'tcolor', isset ( $instance ['tcolor'] ) ? esc_attr ( $instance ['tcolor'] ) : 'FFFFFF' );



		echo $before_widget;

		if (! empty ( $title ))

			//echo $before_title;

			echo '<h3 class="title"><span style="background-color: #'. $bgcolor.';color: #'. $tcolor. ';">';

			echo $title . '</span></h3>';

			//echo $after_title;

			

?>



<div class="socmed textwidget clearfix">		



<ul>

<li>

<a href="<?php echo of_get_option('magz_feed'); ?>"><img src="<?php echo get_template_directory_uri(); ?>/images/rss-icon.png"></a>

<h4>RSS</h4>

<p>Подписчики</p>

</li>



<li>

<a href="<?php echo of_get_option('magz_twitter'); ?>"><img src="<?php echo get_template_directory_uri(); ?>/images/twitter-icon.png"></a>

<h4>

<?php 

$twun = of_get_option('magz_twitter_un');

echo getTwitterFollowers($twun); 

?></h4>

<p>Следуют</p>

</li>



<li>

<a href="<?php echo of_get_option('magz_facebook'); ?>"><img src="<?php echo get_template_directory_uri(); ?>/images/fb-icon.png"></a>

<h4>

<?php

    $page_id = of_get_option('magz_facebook-fan');

    $xml = @simplexml_load_file("http://api.facebook.com/restserver.php?method=facebook.fql.query&query=SELECT%20fan_count%20FROM%20page%20WHERE%20page_id=".$page_id."") or die ("a lot");

    $fans = $xml->page->fan_count;

    echo $fans;

?>

</h4>

<p>Фанаты</p>

</li>



</ul>

</div>



<?php

		echo $after_widget;

	}



	



	function update( $new_instance, $old_instance ) {

		// Save widget options

		return $new_instance;

	}



	function form( $instance ) {

		// Output admin widget options form

		$title = apply_filters ( 'title', isset ( $instance ['title'] ) ? esc_attr ( $instance ['title'] ) : '' );

		$bgcolor = apply_filters ( 'bgcolor', isset ( $instance ['bgcolor'] ) ? esc_attr ( $instance ['bgcolor'] ) : 'FF8C8C' );

		$tcolor = apply_filters ( 'tcolor', isset ( $instance ['tcolor'] ) ? esc_attr ( $instance ['tcolor'] ) : 'FFFFFF' );

		

?>



<p><label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Title:', 'magazine'); ?> <input

	class="widefat" id="<?php echo $this->get_field_id('title'); ?>"

	name="<?php echo $this->get_field_name('title'); ?>" type="text"

	value="<?php echo $title; ?>" /></label>

<small><?php _e('Title background color (hex color)', 'magazine'); ?></small>

<input id="<?php echo $this->get_field_id('bgcolor'); ?>"

	name="<?php echo $this->get_field_name('bgcolor'); ?>" type="text"

	size="3" value="<?php echo $bgcolor; ?>" /><br />

<small><?php _e('Title color (hex color)', 'magazine'); ?></small>

<input id="<?php echo $this->get_field_id('tcolor'); ?>"

	name="<?php echo $this->get_field_name('tcolor'); ?>" type="text"

	size="3" value="<?php echo $tcolor; ?>" /><br />

</p>



	

<?php 

	}

}



$obj = new SocialMedia;



function magz_socialmedia_widgets() {

	register_widget( 'SocialMedia' );

}



add_action( 'widgets_init', 'magz_socialmedia_widgets' );





class NmediaGalleryBox extends WP_Widget

{

    function NmediaGalleryBox()

    {

        $widget_ops = array('classname' => 'NmediaGalleryBox', 'description' => 'Paste Embed code from Youtube, Dailymotion, Vimeo, Vevo, Veoh and Metacafe' );

        $this->WP_Widget('NmediaGalleryBox', 'Magazine - Gallery Box', $widget_ops);

    }



    function form($instance)

    {

        $instance = wp_parse_args( (array) $instance, array( 'video_title' => '', 'video_text' => '', 'video_more' => '', 'video_link' => '', 'vbgcolor' => '', 'vtcolor' => '' ) );

        $video_title = $instance['video_title'];

        $video_text = $instance['video_text'];

        $video_more = $instance['video_more'];

        $video_link = $instance['video_link'];

		$vbgcolor = $instance['vbgcolor'];

		$vtcolor = $instance ['vtcolor'];

?>

  <p><label for="<?php echo $this->get_field_id('video_title'); ?>">Title: <input class="widefat" id="<?php echo $this->get_field_id('video_title'); ?>" name="<?php echo $this->get_field_name('video_title'); ?>" type="text" value="<?php echo esc_attr($video_title); ?>" /></label></p>

  <small><?php _e('Title background color (hex color)', 'magazine'); ?></small>

<input id="<?php echo $this->get_field_id('vbgcolor'); ?>"

	name="<?php echo $this->get_field_name('vbgcolor'); ?>" type="text"

	size="3" value="<?php echo $vbgcolor; ?>" /><br />

<small><?php _e('Title color (hex color)', 'magazine'); ?></small>

<input id="<?php echo $this->get_field_id('vtcolor'); ?>"

	name="<?php echo $this->get_field_name('vtcolor'); ?>" type="text"

	size="3" value="<?php echo $vtcolor; ?>" /><br /><br />

<p><label for="<?php echo $this->get_field_id('video_text'); ?>">Embed Code: <textarea class="widefat" id="<?php echo $this->get_field_id('video_text'); ?>" name="<?php echo $this->get_field_name('video_text'); ?>"><?php echo esc_attr($video_text); ?></textarea></label></p>

<?php

    }



    function update($new_instance, $old_instance)

    {

        $instance = $old_instance;

        $instance['video_title'] = $new_instance['video_title'];

        $instance['video_text'] = $new_instance['video_text'];

        $instance['video_more'] = $new_instance['video_more'];

        $instance['video_link'] = $new_instance['video_link'];

		$instance['vbgcolor'] = $new_instance['vbgcolor'];

		$instance['vtcolor'] = $new_instance['vtcolor'];

        return $instance;

    }



    function widget($args, $instance)

    {

        $video_title = $instance['video_title'];

        $video_text = $instance['video_text'];

        $video_more = $instance['video_more'];

        $video_link = $instance['video_link'];

		$vbgcolor = $instance['vbgcolor'];

		$vtcolor = $instance ['vtcolor'];

        /*

        if (  get_option('videojs_options') ) {

            preg_match('/ *video[^>]*mp4 *= *["\']?([^"\']*)/i', $video_text, $matches);

            $params['mp4'] = $matches[1];

            $video_text = buildVideoJs($params);

        }

        */

        

        ?>

        <div class="video-box widget row-fluid">



        	<?php if ( strlen($video_title)>0) { echo '<h3 class="title"><span style="background-color: #'. $vbgcolor.';color: #'. $vtcolor. ';">'.$video_title.'</span></h3>'; } ?>		

		<?php echo $video_text; ?>



			<ul>

			<?php

			$args = array(

				'posts_per_page' => 4,

				'post_type' => array( 'galleries' )

			);

			// The Query

			$query = new WP_Query( $args );



			// The Loop

			if ( $query->have_posts() ) {

				while ( $query->have_posts() ) {

					$query->the_post(); ?>

			<li><a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'magazine' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark">

					<?php if ( has_post_thumbnail() ) { ?>

					<?php the_post_thumbnail(); ?>

					<?php } else { ?>

					<img src="<?php echo get_template_directory_uri(); ?>/images/thumb_225x136.png">

					<?php } ?></a>

			</li>

			<?php	} ?>

			<?php } else {

				// no posts found

			}

			/* Restore original Post Data */

			wp_reset_postdata();

			?>

			</ul>

        	<?php //if ( strlen($video_more)>0) { echo '<br/><a href="'.$video_link.'">'.$video_more.'</a>'; } ?>

		</div>

        <?php

    }



}

add_action( 'widgets_init', create_function('', 'return register_widget("NmediaGalleryBox");') );





class contactwidget extends WP_Widget {



	function contactwidget() {

		// Instantiate the parent object

		$widget_ops = array( 'classname' => 'widget_contact', 'description' => __( "Show your contact information", "magazine" ) );

		parent::__construct( false, 'Contact Widget', $widget_ops ); 

	}

	

		function widget( $args, $instance ) {

		extract ( $args );

		$title = apply_filters ( 'title', isset ( $instance ['title'] ) ? esc_attr ( $instance ['title'] ) : '' );

		$kbgcolor = apply_filters ( 'kbgcolor', isset ( $instance ['kbgcolor'] ) ? esc_attr ( $instance ['kbgcolor'] ) : '56bfd2' );

		$ktcolor = apply_filters ( 'ktcolor', isset ( $instance ['ktcolor'] ) ? esc_attr ( $instance ['ktcolor'] ) : 'FFFFFF' );

		$address = apply_filters ( 'address', isset ( $instance ['address'] ) ? esc_attr ( $instance ['address'] ) : '' );

		$email = apply_filters ( 'email', isset ( $instance ['email'] ) ? esc_attr ( $instance ['email'] ) : '' );

		$phone = apply_filters ( 'phone', isset ( $instance ['phone'] ) ? esc_attr ( $instance ['phone'] ) : '' );

		$website = apply_filters ( 'website', isset ( $instance ['website'] ) ? esc_attr ( $instance ['website'] ) : '' );

		$show_address = apply_filters ( 'show_address', isset ( $instance ['show_address'] ) ? ( bool ) $instance ['show_address'] : false );

		$show_desc = apply_filters ( 'show_desc', isset ( $instance ['show_desc'] ) ? ( bool ) $instance ['show_desc'] : false );

		$show_email = apply_filters ( 'show_email', isset ( $instance ['show_email'] ) ? ( bool ) $instance ['show_email'] : false );

		$show_phone = apply_filters ( 'show_phone', isset ( $instance ['show_phone'] ) ? ( bool ) $instance ['show_phone'] : ( bool ) false );

		$show_website = apply_filters ( 'show_website', isset ( $instance ['show_website'] ) ? ( bool ) $instance ['show_website'] : false );



		echo $before_widget;

		if (! empty ( $title ))

			//echo $before_title;

			echo '<h3 class="kontak" style="background-color: #'. $kbgcolor.';"><span style="color: #'. $ktcolor. ';">';

			echo $title . '</span></h3>';

			//echo $after_title;

			

?>



<div class="kontak textwidget clearfix">		



<ul>

<?php if ($show_address) { ?>

<li class="address">

	<h4><a href="https://maps.google.com/maps?q=<?php echo of_get_option('magz_gmap'); ?>"><?php echo of_get_option('magz_gmap'); ?></a></h4>

	<?php if ($show_desc) { 

			echo '<p>';

			echo of_get_option('magz_address_desc'); 

			echo '</p>';

		}

	?>

</li>

<?php } ?>



<?php if ($show_email) { ?>

<li class="email">

<a href="mailto:<?php echo of_get_option('magz_email'); ?>"><?php echo of_get_option('magz_email'); ?></a>

</li>

<?php } ?>



<?php if ($show_phone) { ?>

<li class="phone">

<a href="tel:<?php echo of_get_option('magz_phone'); ?>"><?php echo of_get_option('magz_phone'); ?></a>

</li>

<?php } ?>



<?php if ($show_website) { ?>

<li class="website">

<a href="<?php echo of_get_option('magz_website'); ?>"><?php echo of_get_option('magz_website'); ?></a>

</li>

<?php } ?>



</ul>

</div>



<?php

		echo $after_widget;

	}

	

	function update( $new_instance, $old_instance ) {

		// Save widget options

		return $new_instance;

	}



	function form( $instance ) {

		// Output admin widget options form

		$title = apply_filters ( 'title', isset ( $instance ['title'] ) ? esc_attr ( $instance ['title'] ) : '' );

		$kbgcolor = apply_filters ( 'kbgcolor', isset ( $instance ['kbgcolor'] ) ? esc_attr ( $instance ['kbgcolor'] ) : '56bfd2' );

		$ktcolor = apply_filters ( 'ktcolor', isset ( $instance ['ktcolor'] ) ? esc_attr ( $instance ['ktcolor'] ) : 'FFFFFF' );

		$address = apply_filters ( 'address', isset ( $instance ['address'] ) ? esc_attr ( $instance ['address'] ) : '' );

		$email = apply_filters ( 'email', isset ( $instance ['email'] ) ? esc_attr ( $instance ['email'] ) : '' );

		$phone = apply_filters ( 'phone', isset ( $instance ['phone'] ) ? esc_attr ( $instance ['phone'] ) : '' );

		$website = apply_filters ( 'website', isset ( $instance ['website'] ) ? esc_attr ( $instance ['website'] ) : '' );

		$show_address = apply_filters ( 'show_address', isset ( $instance ['show_address'] ) ? ( bool ) $instance ['show_address'] : false );

		$show_desc = apply_filters ( 'show_desc', isset ( $instance ['show_desc'] ) ? ( bool ) $instance ['show_desc'] : false );

		$show_email = apply_filters ( 'show_email', isset ( $instance ['show_email'] ) ? ( bool ) $instance ['show_email'] : false );

		$show_phone = apply_filters ( 'show_phone', isset ( $instance ['show_phone'] ) ? ( bool ) $instance ['show_phone'] : ( bool ) false );

		$show_website = apply_filters ( 'show_website', isset ( $instance ['show_website'] ) ? ( bool ) $instance ['show_website'] : false );



?>



<p><label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Title:', 'magazine'); ?> <input

	class="widefat" id="<?php echo $this->get_field_id('title'); ?>"

	name="<?php echo $this->get_field_name('title'); ?>" type="text"

	value="<?php echo $title; ?>" /></label>

<small><?php _e('Title background color (hex color)', 'magazine'); ?></small>

<input id="<?php echo $this->get_field_id('kbgcolor'); ?>"

	name="<?php echo $this->get_field_name('kbgcolor'); ?>" type="text"

	size="3" value="<?php echo $kbgcolor; ?>" /><br />

<small><?php _e('Title color (hex color)', 'magazine'); ?></small>

<input id="<?php echo $this->get_field_id('ktcolor'); ?>"

	name="<?php echo $this->get_field_name('ktcolor'); ?>" type="text"

	size="3" value="<?php echo $ktcolor; ?>" /><br />

</p>



<p><input id="<?php echo $this->get_field_id('show_address'); ?>"

	name="<?php echo $this->get_field_name('show_address'); ?>"

	type="checkbox" <?php checked($show_address); ?> /> <label

	for="<?php echo $this->get_field_id('show_address'); ?>"><?php _e('Show Address', 'magazine'); ?></label>

</p>



<p><input id="<?php echo $this->get_field_id('show_desc'); ?>"

	name="<?php echo $this->get_field_name('show_desc'); ?>"

	type="checkbox" <?php checked($show_desc); ?> /> <label

	for="<?php echo $this->get_field_id('show_desc'); ?>"><?php _e('Show Address Description', 'magazine'); ?></label>

</p>



<p><input id="<?php echo $this->get_field_id('show_email'); ?>"

	name="<?php echo $this->get_field_name('show_email'); ?>"

	type="checkbox" <?php checked($show_email); ?> /> <label

	for="<?php echo $this->get_field_id('show_email'); ?>"><?php _e('Show Email', 'magazine'); ?></label>

</p>



<p><input id="<?php echo $this->get_field_id('show_phone'); ?>"

	name="<?php echo $this->get_field_name('show_phone'); ?>"

	type="checkbox" <?php checked($show_phone); ?> /> <label

	for="<?php echo $this->get_field_id('show_phone'); ?>"><?php _e('Show Phone Number', 'magazine'); ?></label>

</p>



<p><input id="<?php echo $this->get_field_id('show_website'); ?>"

	name="<?php echo $this->get_field_name('show_website'); ?>"

	type="checkbox" <?php checked($show_website); ?> /> <label

	for="<?php echo $this->get_field_id('show_website'); ?>"><?php _e('Show Website', 'magazine'); ?></label>

</p>



<?php 

	}

}



function magz_contact_widgets() {

	register_widget( 'contactwidget' );

}



add_action( 'widgets_init', 'magz_contact_widgets' );







	



?>