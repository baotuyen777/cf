<?php
//show_admin_bar(false);
add_theme_support('post-thumbnails');
define('THEME_PATH', get_template_directory());
require (THEME_PATH . "/inc/cpt.php");
require (THEME_PATH . "/inc/service.php");
require (THEME_PATH . "/theme_config.php");
register_nav_menus(
        array(
            'main-menu' => __('Main Menu'),
            'extra-menu' => __('Extra Menu'),
            'mobile' => __('Mobile Menu'),
//                'footer' => __('Footer Menu')
        )
);
add_image_size('product-thumb', 370, 310, true);
add_image_size('home_blog',770,330,true);

function david_pagination($pages = '', $range = 2) {
    $showitems = ($range * 2) + 1;
    global $paged;
    if (empty($paged))
        $paged = 1;
    if ($pages == '') {
        global $wp_query;
        $pages = $wp_query->max_num_pages;
        if (!$pages) {
            $pages = 1;
        }
    }
    if (1 != $pages) {
        ?>
        <ol >
            <?php
            if ($paged > 2 && $paged > $range + 1 && $showitems < $pages)
                echo "<li><a href='" . get_pagenum_link(1) . "'>&laquo;</a></li>";
            if ($paged > 1 && $showitems < $pages)
                echo "<li><a href='" . get_pagenum_link($paged - 1) . "'>&lsaquo;</a></li>";
            for ($i = 1; $i <= $pages; $i++) {
                if (1 != $pages && (!($i >= $paged + $range + 1 || $i <= $paged - $range - 1) || $pages <= $showitems )) {
                    echo ($paged == $i) ? "<li class='current'><a>" . $i . "</a></li>" : "<li><a href='" . get_pagenum_link($i) . "' class='inactive' >" . $i . "</a></li>";
                }
            }
            if ($paged < $pages && $showitems < $pages)
                echo "<a href='" . get_pagenum_link($paged + 1) . "'>&rsaquo;</a>";
            if ($paged < $pages - 1 && $paged + $range - 1 < $pages && $showitems < $pages)
                echo "<a href='" . get_pagenum_link($pages) . "'>&raquo;</a>";
            ?>
        </ol>
        <?php
    }
}
