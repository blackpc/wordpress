<!doctype html>

<!--[if IE]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<html lang=ru>
<head profile="http://gmpg.org/xfn/11">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="keywords" content="<?php echo get_option('alltuts_keywords'); ?>" />
<meta name="description" content="<?php echo get_option('alltuts_description'); ?>" />

<title><?php wp_title('&laquo;', true, 'right'); ?> <?php bloginfo('name'); ?></title>

<link rel="stylesheet" href="<?php bloginfo('stylesheet_directory'); ?>/style.css" />
<?php if(get_option('alltuts_strup') == 'yes'){?>
<link rel="stylesheet" href="<?php bloginfo('stylesheet_directory'); ?>/css/animations.css">
<?php }?>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="<?php bloginfo('stylesheet_directory'); ?>/js/jquery.form.js"></script>
<script type="text/javascript" src="<?php bloginfo('stylesheet_directory'); ?>/js/bottomMenu.js"></script>

<?php wp_head(); ?>

</head>
<body>

<header>
<!-- Begin #bottomMenu -->
<div class="bottomMenubgfix">
<div class="bottomMenubg">
<div class="linebg"></div>
<nav id="fdw">

<!-- Начало логотипа -->
<div class="logo">
<a href="<?php bloginfo('url'); ?>"><img src="<?php echo get_option('alltuts_logo_img'); ?>" alt="<?php echo get_option('alltuts_logo_alt'); ?>"/></a>
</div>
<!-- Конец логотипа -->

<?php wp_nav_menu(); ?>

<div class="sharenew">

<?php if(get_option('alltuts_twitter_user')!=""){ ?>
<a class="icon-twitter" href="http://twitter.com/<?php echo get_option('alltuts_twitter_user'); ?>" title="Следить в Twitter!" target="_blank"></a>
<?php }?>

<?php if(get_option('alltuts_rss_link')!=""){ ?>
<a class="icon-rss" href="<?php echo get_option('alltuts_rss_link'); ?>" title="Подписаться на rss"  target="_blank"></a>
<?php }?>

<?php if(get_option('alltuts_vk_link')!=""){ ?>
<a class="icon-mail" href="<?php echo get_option('alltuts_vk_link'); ?>" title="Я на facebook" target="_blank"></a>
<?php }?>

</div>

</div>

</nav><!-- Конец #bottomMenu -->
</div>
</header>
<!-- Конец хидер -->
