<?php

$options = array( 
	array( 
		'id'	=>	'magz',
		'name'	=>	'Featured post',
		'post'	=>	array('post', 'page'), // for both posts and pages
		'pos'	=>	'side',
		'pri'	=>	'high',
		'cap'	=>	'edit_posts',
		'args'	=>	array(
			array(
				'id'			=>	'headline',
				'title'			=>	'Show this post on the Headline',
				'desc'			=>	'',
				'type'			=>	'checkbox',
				'cap'			=>	'edit_posts'
			),
			array(
				'id'			=>	'slider',
				'title'			=>	'Show this post on the Slider',
				'desc'			=>	'',
				'type'			=>	'checkbox',
				'cap'			=>	'edit_posts'
			),
			array(
				'id'			=>	'topnews',
				'title'			=>	'Show this post on the Right Slide Content',
				'desc'			=>	'',
				'type'			=>	'checkbox',
				'cap'			=>	'edit_posts'
			)
		)
	),
	
	array( // first metabox

		'id'	=>	'magz2', // metabox ID, this is also used as custom field prefix
		'name'	=>	'Post Type', // title
		'post'	=>	array('post', 'galleries'), // post types
		'pos'	=>	'side', // position
		'pri'	=>	'high', // priority
		'cap'	=>	'edit_posts', // capabilities the user should have to edit this metabox
		'args'	=>	array(
			array(
				'id'			=>	'posttype',
				'title'			=>	'Select type of this post',
				'type'			=>	'select',
				'desc'			=>	'',
				'cap'			=>	'edit_posts',
				'args'			=>	array('1' => 'Text post', '2' => 'Audio post', '3' => 'Image post', '4' => 'Video post' ) // value => label

			)
		)
	)
); 


 
if( class_exists( 'trueMetaBox' ) ) {
	foreach ($options as $option) {
		$truemetabox = new trueMetaBox($option);
	}
}	


class trueMetaBox {
	function __construct($options) {
		$this->options = $options;
		$this->prefix = $this->options['id'] .'_';
		add_action( 'add_meta_boxes', array( &$this, 'create' ) );
		add_action( 'save_post', array( &$this, 'save' ), 1, 2 );
	}
	function create() {
		foreach ($this->options['post'] as $post_type) {
			if (current_user_can( $this->options['cap'])) {
				add_meta_box($this->options['id'], $this->options['name'], array(&$this, 'fill'), $post_type, $this->options['pos'], $this->options['pri']);
			}
		}
	}
	function fill(){
		global $post; $p_i_d = $post->ID;
		wp_nonce_field( $this->options['id'], $this->options['id'].'_wpnonce', false, true );
		?>
		<table class="form-table"><tbody><?php
		foreach ( $this->options['args'] as $param ) {
			if (current_user_can( $param['cap'])) {
			?><tr><?php
				if(!$value = get_post_meta($post->ID, $this->prefix .$param['id'] , true)) 									$value = isset($param['std']);
				switch ( $param['type'] ) {
					case 'text':{ ?>
						<th scope="row"><label for="<?php echo $this->prefix .$param['id'] ?>"><?php echo $param['title'] ?></label></th>
						<td>
							<input name="<?php echo $this->prefix .$param['id'] ?>" type="<?php echo $param['type'] ?>" id="<?php echo $this->prefix .$param['id'] ?>" value="<?php echo $value ?>" placeholder="<?php echo $param['placeholder'] ?>" class="regular-text" /><br />
							<span class="description"><?php echo $param['desc'] ?></span>
						</td>
						<?php
						break;							
					}
					case 'textarea':{ ?>
						<th scope="row"><label for="<?php echo $this->prefix .$param['id'] ?>"><?php echo $param['title'] ?></label></th>
						<td>
							<textarea name="<?php echo $this->prefix .$param['id'] ?>" type="<?php echo $param['type'] ?>" id="<?php echo $this->prefix .$param['id'] ?>" value="<?php echo $value ?>" placeholder="<?php echo $param['placeholder'] ?>" class="large-text" /><?php echo $value ?></textarea><br />
							<span class="description"><?php echo $param['desc'] ?></span>
						</td>
						<?php
						break;							
					}
					case 'checkbox':{ ?>
						<td>
							<label for="<?php echo $this->prefix .$param['id'] ?>"><input name="<?php echo $this->prefix .$param['id'] ?>" type="<?php echo $param['type'] ?>" id="<?php echo $this->prefix .$param['id'] ?>"<?php echo ($value=='on') ? ' checked="checked"' : '' ?> />
							<?php echo $param['desc'] ?></label>
						</td>
						<th scope="row"><label for="<?php echo $this->prefix .$param['id'] ?>"><?php echo $param['title'] ?></label></th>

						<?php
						break;							
					}
					case 'select':{ ?>
						<th scope="row"><label for="<?php echo $this->prefix .$param['id'] ?>"><?php echo $param['title'] ?></label></th>
						<td>
							<label for="<?php echo $this->prefix .$param['id'] ?>">
							<select name="<?php echo $this->prefix .$param['id'] ?>" id="<?php echo $this->prefix .$param['id'] ?>"><?php
								foreach($param['args'] as $val=>$name){
									?><option value="<?php echo $val ?>"<?php echo ( $value == $val ) ? ' selected="selected"' : '' ?>><?php echo $name ?></option><?php
								}
							?></select></label><br />
							<span class="description"><?php echo $param['desc'] ?></span>
						</td>
						<?php
						break;							
					}
				} 
			?></tr><?php
			}
		}
		?></tbody></table><?php
	}
	function save($post_id){		global $post_id, $post;			
			if ( !wp_verify_nonce( $_POST[ $this->options['id'].'_wpnonce' ], $this->options['id'] ) ) {				return $post_id ;			}						// check autosave		if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {			return $post_id;		}				
		if ( !current_user_can( 'edit_post', $post_id ) ) { 			return $post_id;		}	
		if ( !in_array($post->post_type, $this->options['post'])) { 			return $post_id;		}	
		foreach ( $this->options['args'] as $param ) {
			if ( current_user_can( $param['cap'] ) ) {
				if ( isset( $_POST[ $this->prefix . $param['id'] ] ) && trim( $_POST[ $this->prefix . $param['id'] ] ) ) {
					update_post_meta( $post_id, $this->prefix . $param['id'], trim($_POST[ $this->prefix . $param['id'] ]) );
				} else {
					delete_post_meta( $post_id, $this->prefix . $param['id'] );
				}
			}
		}
	}
}