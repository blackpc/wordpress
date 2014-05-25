<?php
/**
 * The template for displaying Comments.
 *
 * @package WordPress
 * @subpackage Magazine
 */

/*
 * If the current post is protected by a password and
 * the visitor has not yet entered the password we will
 * return early without loading the comments.
 */
if ( post_password_required() )
	return;
?>

<div id="comments" class="comments-area">

	<?php // You can start editing here -- including this comment! ?>

	<?php if ( have_comments() ) : ?>
		<h3 class="comment-title">
			<?php
				printf( _n( '<span>Новый комментарии</span>', '<span>Новые комментарии</span>', get_comments_number(), 'magazine' ), number_format_i18n( get_comments_number() ) ); 
			?>
		</h3>

		<ol class="commentlist">
			<?php wp_list_comments( array( 'callback' => 'magazine_comment', 'style' => 'ol' ) ); ?>
		</ol><!-- .commentlist -->

		<?php if ( get_comment_pages_count() > 1 && get_option( 'page_comments' ) ) : // are there comments to navigate through ?>
		<nav id="comment-nav-below" class="navigation" role="navigation">
			<h1 class="assistive-text section-heading"><?php _e( 'Comment navigation', 'magazine' ); ?></h1>
			<div class="nav-previous"><?php previous_comments_link( __( '&larr; Старые комментарии', 'magazine' ) ); ?></div>
			<div class="nav-next"><?php next_comments_link( __( 'Новые комментарии &rarr;', 'magazine' ) ); ?></div>
		</nav>
		<?php endif; // check for comment navigation ?>

		<?php
		/* If there are no comments and comments are closed, let's leave a note.
		 * But we only want the note on posts and pages that had comments in the first place.
		 */
		if ( ! comments_open() && get_comments_number() ) : ?>
		<p class="nocomments"><?php _e( 'Комментарии закрыты.' , 'magazine' ); ?></p>
		<?php endif; ?>

	<?php endif; // have_comments() ?>

	<?php //comment_form(); ?>
	
<?php 


$commenter = wp_get_current_commenter();
$req = get_option( 'require_name_email' );
$aria_req = ( $req ? "aria-required='true'" : '' );
$fields =  array(

    'author' => '<p class="input_field"><input id="author" name="author" type="text" value="' . esc_attr( $commenter['comment_author'] ) . '" size="30"' . $aria_req . ' placeholder="Имя" /></p>',
		
    'email'  => '<p class="input_field last"><input id="email" name="email" type="text" value="' . esc_attr(  $commenter['comment_author_email'] ) . '" size="30"' . $aria_req . ' placeholder="Email"  /></p>',
		
	'url' => '',	
	
);
$comments_args = array(
    'fields' =>  $fields,
    //'title_reply'=>'<span>Quick Contact</span>',
    //'label_submit' => 'Submit Quote',
	'comment_field' => '<p class="comment-form-comment"><label class="comment_field" for="comment">' . __( '', 'noun' ) . '</label><textarea id="comment" name="comment" cols="45" rows="4" aria-required="true" placeholder="Сообщение"></textarea></p>',
	'comment_notes_after'  => '',	
);
comment_form($comments_args);

?>

</div><!-- #comments .comments-area -->