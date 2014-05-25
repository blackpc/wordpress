<?php if ('open' == $post->comment_status) : ?>

<div id="respond">
<h3 class="title"><?php comment_form_title( 'Оставить комментарии', 'Оставить комментарии к %s' ); ?></h3>
<div class="cancel-comment-reply">
	<small><?php cancel_comment_reply_link(); ?></small>
</div>

<?php if ( get_option('comment_registration') && !$user_ID ) : ?>
You must be <a href="<?php echo get_option('siteurl'); ?>/wp-login.php?redirect_to=">войдите</a> чтобы оставить комментарии.
<pre><?php else : ?></pre>
<form action="<?php echo get_option('siteurl'); ?>/wp-comments-post.php" method="post" id="commentform"></form>

<?php if ( $user_ID ) : ?>

Logged in as <a href="<?php echo get_option('siteurl'); ?>/wp-admin/profile.php"></a>. <a title="Выйти из аккаунта" href="<?php echo wp_logout_url(get_permalink()); ?>">Выйти</a>

<?php else : ?>

<input id="author" name="author" type="text" value="<?php echo $comment_author; ?>" size="22" tabindex="1" />
<label for="author"><small>Имя <?php if ($req) echo "(required)"; ?></small></label>

<input id="email" name="email" type="text" value="<?php echo $comment_author_email; ?>" size="22" tabindex="2" />
<label for="email"><small>E-mail (не публикуется) <?php if ($req) echo "(required)"; ?></small></label>

<input name="<span class=" type="text" />url" id="url" value="" size="22" tabindex="3" />
<label for="<span class=">url"><small>Вебсайт</small></label>

<?php endif; ?>

<!--<small><strong>XHTML:</strong> Использовать теги: <code></code></small>

-->

<textarea name="comment" id="comment" cols="100%" rows="10" tabindex="4">

<p><input name="submit" type="submit" id="submit" tabindex="5" value="Отправить" />
<?php comment_id_fields(); ?>
</p>
<?php do_action('comment_form', $post->ID); ?>

</form>

<?php endif; // If registration required and not logged in ?>
</div>
<?php endif; // if you delete this the sky will fall on your head ?>

</div>
