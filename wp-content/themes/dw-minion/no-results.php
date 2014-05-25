<section class="no-results not-found">
	<div class="page-content">
		<?php if ( is_home() && current_user_can( 'publish_posts' ) ) : ?>

			<p><?php printf( __( 'Готовы опубликовать свою первую запись? <a href="%1$s">Вперед</a>.', 'dw-minion' ), esc_url( admin_url( 'post-new.php' ) ) ); ?></p>

		<?php elseif ( is_search() ) : ?>

			<p><?php _e( 'К сожалению, ничего не найдено', 'dw-minion' ); ?></p>
			<?php get_search_form(); ?>

		<?php else : ?>

			<p><?php _e( 'К сожалению, ничего не найдено', 'dw-minion' ); ?></p>
			<?php get_search_form(); ?>

		<?php endif; ?>
	</div>
</section>
