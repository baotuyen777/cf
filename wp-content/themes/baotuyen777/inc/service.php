<?php

/**
 * 
 * @global type $wpdb
 */
function qsoft_get_all_product() {
    global $wpdb;
    $page = isset($_REQUEST['page']) ? filter_var($_REQUEST['page'], FILTER_SANITIZE_NUMBER_INT) : 1;
    $postPerPage = isset($_REQUEST['postPerPage']) ? filter_var($_REQUEST['postPerPage'], FILTER_SANITIZE_NUMBER_INT) : 8;

    $start = ($postPerPage * $page) - $postPerPage;
    $data = $wpdb->get_results(
            $wpdb->prepare("SELECT * FROM wp_posts where post_type='product' "
                    . "and post_status='publish' "
                    . "limit %d, %d ", $start, $postPerPage));
    $result = array();
    foreach ($data as $object) {
        $object->link = get_permalink($object->ID);
        $src = wp_get_attachment_image_src(get_post_thumbnail_id($object->ID), 'product-slide-active');
        $object->image = $src[0];
        $result[] = $object;
    }

//    var_dump($data);
    header('Content-Type: application/json');
    echo json_encode($result);
    exit();
}

add_action('wp_ajax_nopriv_get_product', 'qsoft_get_all_product');
add_action('wp_ajax_get_product', 'qsoft_get_all_product');

function qsoft_get_all_post() {
    global $wpdb;
    $page = isset($_REQUEST['page']) ? filter_var($_REQUEST['page'], FILTER_SANITIZE_NUMBER_INT) : 1;
    $postPerPage = isset($_REQUEST['postPerPage']) ? filter_var($_REQUEST['postPerPage'], FILTER_SANITIZE_NUMBER_INT) : 8;

    $start = ($postPerPage * $page) - $postPerPage;
    $data = $wpdb->get_results(
            $wpdb->prepare("SELECT * FROM wp_posts where post_type='post'  "
                    . "and post_status='publish' "
                    . "limit %d, %d ", $start, $postPerPage));
    $result = array();
    $image=  get_template_directory_uri().'/images/noimage.jpg';
    foreach ($data as $object) {
        $object->link = get_permalink($object->ID);
        if (get_post_thumbnail_id($object->ID)) {
            $src = wp_get_attachment_image_src(get_post_thumbnail_id($object->ID), 'product-slide-active');
            $image=$src[0];
        }
        $object->image = $image;
        $result[] = $object;
    }

//    var_dump($data);
    header('Content-Type: application/json');
    echo json_encode($result);
    exit();
}

add_action('wp_ajax_nopriv_get_post', 'qsoft_get_all_post');
add_action('wp_ajax_get_post', 'qsoft_get_all_post');

