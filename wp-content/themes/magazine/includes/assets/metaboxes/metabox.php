<?php
/**
 * Include and setup custom metaboxes and fields.
 *
 * @category YourThemeOrPlugin
 * @package  Metaboxes
 * @license  http://www.opensource.org/licenses/gpl-license.php GPL v2.0 (or later)
 * @link     https://github.com/jaredatch/Custom-Metaboxes-and-Fields-for-WordPress
 */

add_filter( 'cmb_meta_boxes', 'cmb_sample_metaboxes' );
/**
 * Define the metabox and field configurations.
 *
 * @param  array $meta_boxes
 * @return array
 */
function cmb_sample_metaboxes( array $meta_boxes ) {

	// Start with an underscore to hide fields from custom fields list
	$prefix = 'magz_';
	
	$meta_boxes[] = array(
		'id'         => 'magz',
		'title'      => 'Featured post',
		'pages'      => array( 'post', 'page' ), // Post type
		'context'    => 'side',
		'priority'   => 'high',
		'show_names' => true, // Show field names on the left
		'fields'     => array(
			array(
				'name' => 'Show this post on the Headline',
				'desc' => '',
				'id'   => $prefix . 'headline',
				'type' => 'checkbox',
			),
			array(
				'name' => 'Show this post on the Slider',
				'desc' => '',
				'id'   => $prefix . 'slider',
				'type' => 'checkbox',
			),
			array(
				'name' => 'Show this post on the Right Slide Content',
				'desc' => '',
				'id'   => $prefix . 'topnews',
				'type' => 'checkbox',
			),
		),
	);
	
	$meta_boxes[] = array(
		'id'         => 'magz2',
		'title'      => 'Post Type',
		'pages'      => array( 'post', 'galleries' ), // Post type
		'context'    => 'side',
		'priority'   => 'high',
		'show_names' => true, // Show field names on the left
		'fields'     => array(
			array(
				'name'    => 'Select type of this post',
				'desc'    => '',
				'id'      => 'magz2_posttype',
				'type'    => 'select',
				'options' => array(
					array( 'name' => 'Text post', 'value' => '1', ),
					array( 'name' => 'Audio post', 'value' => '2', ),
					array( 'name' => 'Image post', 'value' => '3', ),
					array( 'name' => 'Video post', 'value' => '4', ),
				),
			),
		)
	);
		

	// Add other metaboxes as needed

	return $meta_boxes;
}

add_action( 'init', 'cmb_initialize_cmb_meta_boxes', 9999 );
/**
 * Initialize the metabox class.
 */
function cmb_initialize_cmb_meta_boxes() {

	if ( ! class_exists( 'cmb_Meta_Box' ) )
		require_once 'init.php';

}