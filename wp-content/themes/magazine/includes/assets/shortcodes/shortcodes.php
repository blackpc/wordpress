<?php

/*-----------------------------------------------------------------------------------*/
/*	Column Shortcodes
/*-----------------------------------------------------------------------------------*/

if (!function_exists('magz_one_third')) {
	function magz_one_third( $atts, $content = null ) {
	   return '<div class="magz-one-third">' . do_shortcode($content) . '</div>';
	}
	add_shortcode('magz_one_third', 'magz_one_third');
}

if (!function_exists('magz_one_third_last')) {
	function magz_one_third_last( $atts, $content = null ) {
	   return '<div class="magz-one-third magz-column-last">' . do_shortcode($content) . '</div><div class="clear"></div>';
	}
	add_shortcode('magz_one_third_last', 'magz_one_third_last');
}

if (!function_exists('magz_two_third')) {
	function magz_two_third( $atts, $content = null ) {
	   return '<div class="magz-two-third">' . do_shortcode($content) . '</div>';
	}
	add_shortcode('magz_two_third', 'magz_two_third');
}

if (!function_exists('magz_two_third_last')) {
	function magz_two_third_last( $atts, $content = null ) {
	   return '<div class="magz-two-third magz-column-last">' . do_shortcode($content) . '</div><div class="clear"></div>';
	}
	add_shortcode('magz_two_third_last', 'magz_two_third_last');
}

if (!function_exists('magz_one_half')) {
	function magz_one_half( $atts, $content = null ) {
	   return '<div class="magz-one-half">' . do_shortcode($content) . '</div>';
	}
	add_shortcode('magz_one_half', 'magz_one_half');
}

if (!function_exists('magz_one_half_last')) {
	function magz_one_half_last( $atts, $content = null ) {
	   return '<div class="magz-one-half magz-column-last">' . do_shortcode($content) . '</div><div class="clear"></div>';
	}
	add_shortcode('magz_one_half_last', 'magz_one_half_last');
}

if (!function_exists('magz_one_fourth')) {
	function magz_one_fourth( $atts, $content = null ) {
	   return '<div class="magz-one-fourth">' . do_shortcode($content) . '</div>';
	}
	add_shortcode('magz_one_fourth', 'magz_one_fourth');
}

if (!function_exists('magz_one_fourth_last')) {
	function magz_one_fourth_last( $atts, $content = null ) {
	   return '<div class="magz-one-fourth magz-column-last">' . do_shortcode($content) . '</div><div class="clear"></div>';
	}
	add_shortcode('magz_one_fourth_last', 'magz_one_fourth_last');
}

if (!function_exists('magz_three_fourth')) {
	function magz_three_fourth( $atts, $content = null ) {
	   return '<div class="magz-three-fourth">' . do_shortcode($content) . '</div>';
	}
	add_shortcode('magz_three_fourth', 'magz_three_fourth');
}

if (!function_exists('magz_three_fourth_last')) {
	function magz_three_fourth_last( $atts, $content = null ) {
	   return '<div class="magz-three-fourth magz-column-last">' . do_shortcode($content) . '</div><div class="clear"></div>';
	}
	add_shortcode('magz_three_fourth_last', 'magz_three_fourth_last');
}

if (!function_exists('magz_one_fifth')) {
	function magz_one_fifth( $atts, $content = null ) {
	   return '<div class="magz-one-fifth">' . do_shortcode($content) . '</div>';
	}
	add_shortcode('magz_one_fifth', 'magz_one_fifth');
}

if (!function_exists('magz_one_fifth_last')) {
	function magz_one_fifth_last( $atts, $content = null ) {
	   return '<div class="magz-one-fifth magz-column-last">' . do_shortcode($content) . '</div><div class="clear"></div>';
	}
	add_shortcode('magz_one_fifth_last', 'magz_one_fifth_last');
}

if (!function_exists('magz_two_fifth')) {
	function magz_two_fifth( $atts, $content = null ) {
	   return '<div class="magz-two-fifth">' . do_shortcode($content) . '</div>';
	}
	add_shortcode('magz_two_fifth', 'magz_two_fifth');
}

if (!function_exists('magz_two_fifth_last')) {
	function magz_two_fifth_last( $atts, $content = null ) {
	   return '<div class="magz-two-fifth magz-column-last">' . do_shortcode($content) . '</div><div class="clear"></div>';
	}
	add_shortcode('magz_two_fifth_last', 'magz_two_fifth_last');
}

if (!function_exists('magz_three_fifth')) {
	function magz_three_fifth( $atts, $content = null ) {
	   return '<div class="magz-three-fifth">' . do_shortcode($content) . '</div>';
	}
	add_shortcode('magz_three_fifth', 'magz_three_fifth');
}

if (!function_exists('magz_three_fifth_last')) {
	function magz_three_fifth_last( $atts, $content = null ) {
	   return '<div class="magz-three-fifth magz-column-last">' . do_shortcode($content) . '</div><div class="clear"></div>';
	}
	add_shortcode('magz_three_fifth_last', 'magz_three_fifth_last');
}

if (!function_exists('magz_four_fifth')) {
	function magz_four_fifth( $atts, $content = null ) {
	   return '<div class="magz-four-fifth">' . do_shortcode($content) . '</div>';
	}
	add_shortcode('magz_four_fifth', 'magz_four_fifth');
}

if (!function_exists('magz_four_fifth_last')) {
	function magz_four_fifth_last( $atts, $content = null ) {
	   return '<div class="magz-four-fifth magz-column-last">' . do_shortcode($content) . '</div><div class="clear"></div>';
	}
	add_shortcode('magz_four_fifth_last', 'magz_four_fifth_last');
}

if (!function_exists('magz_one_sixth')) {
	function magz_one_sixth( $atts, $content = null ) {
	   return '<div class="magz-one-sixth">' . do_shortcode($content) . '</div>';
	}
	add_shortcode('magz_one_sixth', 'magz_one_sixth');
}

if (!function_exists('magz_one_sixth_last')) {
	function magz_one_sixth_last( $atts, $content = null ) {
	   return '<div class="magz-one-sixth magz-column-last">' . do_shortcode($content) . '</div><div class="clear"></div>';
	}
	add_shortcode('magz_one_sixth_last', 'magz_one_sixth_last');
}

if (!function_exists('magz_five_sixth')) {
	function magz_five_sixth( $atts, $content = null ) {
	   return '<div class="magz-five-sixth">' . do_shortcode($content) . '</div>';
	}
	add_shortcode('magz_five_sixth', 'magz_five_sixth');
}

if (!function_exists('magz_five_sixth_last')) {
	function magz_five_sixth_last( $atts, $content = null ) {
	   return '<div class="magz-five-sixth magz-column-last">' . do_shortcode($content) . '</div><div class="clear"></div>';
	}
	add_shortcode('magz_five_sixth_last', 'magz_five_sixth_last');
}


/*-----------------------------------------------------------------------------------*/
/*	Buttons
/*-----------------------------------------------------------------------------------*/

if (!function_exists('magz_button')) {
	function magz_button( $atts, $content = null ) {
		extract(shortcode_atts(array(
			'url' => '#',
			'target' => '_self',
			'style' => 'grey',
			'size' => 'small',
			'type' => 'round'
	    ), $atts));
		
	   return '<a target="'.$target.'" class="magz-button '.$size.' '.$style.' '. $type .'" href="'.$url.'">' . do_shortcode($content) . '</a>';
	}
	add_shortcode('magz_button', 'magz_button');
}


/*-----------------------------------------------------------------------------------*/
/*	Alerts
/*-----------------------------------------------------------------------------------*/

if (!function_exists('magz_alert')) {
	function magz_alert( $atts, $content = null ) {
		extract(shortcode_atts(array(
			'style'   => 'white'
	    ), $atts));
		
	   return '<div class="magz-alert '.$style.'">' . do_shortcode($content) . '</div>';
	}
	add_shortcode('magz_alert', 'magz_alert');
}


/*-----------------------------------------------------------------------------------*/
/*	Titles
/*-----------------------------------------------------------------------------------*/


if (!function_exists('magz_title')) {
	function magz_title( $atts, $content = null ) {
		extract(shortcode_atts(array(
			'style'   => 'white'
	    ), $atts));
		
	   return '<h3 class="title"><span class="magz-title '.$style.'">' . do_shortcode($content) . '</span></h3>';
	}
	add_shortcode('magz_title', 'magz_title');
}


/*-----------------------------------------------------------------------------------*/
/*	Toggle Shortcodes
/*-----------------------------------------------------------------------------------*/

if (!function_exists('magz_toggle')) {
	function magz_toggle( $atts, $content = null ) {
	    extract(shortcode_atts(array(
			'title'    	 => 'Title goes here',
			'state'		 => 'open'
	    ), $atts));
	
		return "<div data-id='".$state."' class=\"magz-toggle\"><span class=\"magz-toggle-title\">". $title ."</span><div class=\"magz-toggle-inner\">". do_shortcode($content) ."</div></div>";
	}
	add_shortcode('magz_toggle', 'magz_toggle');
}


/*-----------------------------------------------------------------------------------*/
/*	Tabs Shortcodes
/*-----------------------------------------------------------------------------------*/

if (!function_exists('magz_tabs')) {
	function magz_tabs( $atts, $content = null ) {
		$defaults = array();
		extract( shortcode_atts( $defaults, $atts ) );
		
		STATIC $i = 0;
		$i++;

		// Extract the tab titles for use in the tab widget.
		preg_match_all( '/tab title="([^\"]+)"/i', $content, $matches, PREG_OFFSET_CAPTURE );
		
		$tab_titles = array();
		if( isset($matches[1]) ){ $tab_titles = $matches[1]; }
		
		$output = '';
		
		if( count($tab_titles) ){
		    $output .= '<div id="magz-tabs-'. $i .'" class="magz-tabs"><div class="magz-tab-inner">';
			$output .= '<ul class="magz-nav magz-clearfix">';
			
			foreach( $tab_titles as $tab ){
				$output .= '<li><a href="#magz-tab-'. sanitize_title( $tab[0] ) .'">' . $tab[0] . '</a></li>';
			}
		    
		    $output .= '</ul>';
		    $output .= do_shortcode( $content );
		    $output .= '</div></div>';
		} else {
			$output .= do_shortcode( $content );
		}
		
		return $output;
	}
	add_shortcode( 'magz_tabs', 'magz_tabs' );
}

if (!function_exists('magz_tab')) {
	function magz_tab( $atts, $content = null ) {
		$defaults = array( 'title' => 'Tab' );
		extract( shortcode_atts( $defaults, $atts ) );
		
		return '<div id="magz-tab-'. sanitize_title( $title ) .'" class="magz-tab">'. do_shortcode( $content ) .'</div>';
	}
	add_shortcode( 'magz_tab', 'magz_tab' );
}


/*-----------------------------------------------------------------------------------*/
/*	Contact Form Shortcodes
/*-----------------------------------------------------------------------------------*/

function wptuts_get_the_ip() {
	if (isset($_SERVER["HTTP_X_FORWARDED_FOR"])) {
		return $_SERVER["HTTP_X_FORWARDED_FOR"];
	}
	elseif (isset($_SERVER["HTTP_CLIENT_IP"])) {
		return $_SERVER["HTTP_CLIENT_IP"];
	}
	else {
		return $_SERVER["REMOTE_ADDR"];
	}
}

// the shortcode
function wptuts_contact_form_sc($atts) {
	extract(shortcode_atts(array(
		"email" => get_bloginfo('admin_email'),
		"subject" => '',
		"label_name" => 'Your Name',
		"label_email" => 'Your E-mail Address',
		"label_subject" => 'Website',
		"label_message" => 'Your Message',
		"label_submit" => 'Submit',
		"error_empty" => 'Please fill in all the required fields.',
		"error_noemail" => 'Please enter a valid e-mail address.',
		"success" => 'Thanks for your e-mail! We\'ll get back to you as soon as we can.'
	), $atts));

	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
		$error = false;
		$required_fields = array("your_name", "email", "message", "subject");

		foreach ($_POST as $field => $value) {
			if (get_magic_quotes_gpc()) {
				$value = stripslashes($value);
			}
			$form_data[$field] = strip_tags($value);
		}

		foreach ($required_fields as $required_field) {
			$value = trim($form_data[$required_field]);
			if(empty($value)) {
				$error = true;
				$result = $error_empty;
			}
		}

		if(!is_email($form_data['email'])) {
			$error = true;
			$result = $error_noemail;
		}

		if ($error == false) {
			$email_subject = "[" . get_bloginfo('name') . "] " . $form_data['subject'];
			$email_message = $form_data['message'] . "\n\nIP: " . wptuts_get_the_ip();
			$headers  = "From: ".$form_data['your_name']." <".$form_data['email'].">\n";
			$headers .= "Content-Type: text/plain; charset=UTF-8\n";
			$headers .= "Content-Transfer-Encoding: 8bit\n";
			wp_mail($email, $email_subject, $email_message, $headers);
			$result = $success;
			$sent = true;
		}
	}

	if($result != "") {
		$info = '<div class="info">'.$result.'</div>';
	}
	$email_form = '<form class="contact-form" method="post" action="'.get_permalink().'">
    <div class="cform name">
        <input type="text" name="your_name" id="cf_name" size="50" maxlength="50" value="' .$form_data['your_name']. '" placeholder="' . $label_name . '" />
    </div>
    <div class="cform email">
        <input type="text" name="email" id="cf_email" size="50" maxlength="50" value="' .$form_data['email']. '" placeholder="' . $label_email . '" />
    </div>
    <div class="cform website">
        <input type="text" name="subject" id="cf_subject" size="50" maxlength="50" value="' .$subject.$form_data['subject']. '" placeholder="' . $label_subject . '" />
    </div>

	<div class="clearfix"></div>

	<div>
        <textarea name="message" id="cf_message" cols="50" rows="3" placeholder="' . $label_message . '">' .$form_data['message']. '</textarea>
    </div>
    <div>
        <input type="submit" value="' . $label_submit . '" name="send" id="cf_send" />
    </div>
	</form>';
	
	if($sent == true) {
		return $info;
	} else {
		return $info.$email_form;
	}
} 

add_shortcode('magz_cform', 'wptuts_contact_form_sc');

?>