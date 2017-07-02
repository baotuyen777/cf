<?php
/**
 * Template name: product
 */
get_header();
?>
<main id="content">
    <div class="row">

        <div id="right" class="col-md-8">
            <div class="box" style="width:100%;">

                <h1><a >Sản phẩm</a></h1>
                <div class="box_main">

                    <div id="link_br">
                        <a href="<?php echo home_url() ?>" >Trang chủ » </a> Sản phẩm
                    </div>
                    <div class="list">
                        <?php
                        $paged = ( get_query_var( 'paged' ) ) ? get_query_var( 'paged' ) : 1;
                        $arg = array(
                            'post_type' => 'product',
                            'paged'=>$paged
                        );
                        $query = new WP_Query($arg);
                        if ($query->have_posts()): while ($query->have_posts()): $query->the_post();
                                ?>
                                <div class="row">
                                    <div class="col-md-3">
                                        <a href = "<?php the_permalink() ?>" title = "<?php the_title() ?>">
                                            <?php
                                            if (get_the_post_thumbnail() != "") {
                                                the_post_thumbnail('thumbnail', array('class' => 'img-list'));
                                            } else {
                                                ?>
                                                <img class="img-list" src="<?php echo get_template_directory_uri() . NO_IMAGE ?>">
                                                <?php
                                            }
                                            ?>
                                        </a>
                                    </div>
                                    <div class="col-md-9">
                                        <div class="content">
                                            <h3> <a href = "<?php the_permalink() ?>" title = "<?php the_title() ?>"><?php the_title() ?></a></h3>
                                            <br>
                                            <p> <?php echo wp_trim_words(get_the_content(), 50) ?></p>
                                        </div>
                                    </div>

                                </div>
                                <hr/>
                                <?php
                            endwhile;
                        endif;
                        ?>
                    </div>
                    <div class="pagination">
                        <?php wp_pagenavi(array( 'query' => $query )); ?>
                    </div>
                </div>

            </div>
        </div>
        <?php get_sidebar() ?>
    </div>
</main>
<?php get_footer(); ?>

