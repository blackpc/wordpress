<?php get_header(); ?>

		<div id="primary" class="content-area">
			<div class="primary-inner">
				<header class="page-header">
					<h1 class="page-title">
						<?php
							if ( is_category() ) :
								single_cat_title();

							elseif ( is_tag() ) :
								single_tag_title();

							elseif ( is_author() ) :

								the_post();
								printf( __( 'Автор: %s', 'dw-minion' ), '<span class="vcard"><a class="url fn n" href="' . esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ) . '" title="' . esc_attr( get_the_author() ) . '" rel="me">' . get_the_author() . '</a></span>' );
								
								rewind_posts();

							elseif ( is_day() ) :
								printf( __( 'День: %s', 'dw-minion' ), '<span>' . get_the_date() . '</span>' );

							elseif ( is_month() ) :
								printf( __( 'Месяц: %s', 'dw-minion' ), '<span>' . get_the_date( 'F Y' ) . '</span>' );

							elseif ( is_year() ) :
								printf( __( 'Год: %s', 'dw-minion' ), '<span>' . get_the_date( 'Y' ) . '</span>' );

							elseif ( is_tax( 'post_format', 'post-format-aside' ) ) :
								_e( 'Формат', 'dw-minion' );

							elseif ( is_tax( 'post_format', 'post-format-image' ) ) :
								_e( 'Изображение', 'dw-minion');

							elseif ( is_tax( 'post_format', 'post-format-video' ) ) :
								_e( 'Видео', 'dw-minion' );

							elseif ( is_tax( 'post_format', 'post-format-quote' ) ) :
								_e( 'Цитата', 'dw-minion' );

							elseif ( is_tax( 'post_format', 'post-format-link' ) ) :
								_e( 'Ссылки', 'dw-minion' );

							else :
								_e( 'Архив', 'dw-minion' );

							endif;
						?>
					</h1>
					<?php

						$term_description = term_description();
						if ( ! empty( $term_description ) ) :
							printf( '<div class="taxonomy-description">%s</div>', $term_description );
						endif;
					?>
				</header>
				<div id="content" class="site-content content-list" role="main">

				<?php if ( have_posts() ) : ?>

					<?php while ( have_posts() ) : the_post(); ?>

						<?php get_template_part( 'content', get_post_format() ); ?>

					<?php endwhile; ?>

					<?php dw_minion_content_nav( 'nav-below' ); ?>

				<?php else : ?>

					<?php get_template_part( 'no-results', 'archive' ); ?>

				<?php endif; ?>

				</div>
			</div>
		</div>

<?php get_sidebar('secondary'); ?>
<?php get_footer(); ?>