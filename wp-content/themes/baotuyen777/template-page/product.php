<?php
/**
 * Template name: product
 */
get_header();
if (have_posts()): while (have_posts()): the_post();
        ?>
        <div class="page-title">
            <div class="page-title-content">
                <div class="shell">
                    <h1>Sản phẩm của CR MAN</h1>
                </div>
            </div>
        </div>
        <section class="section-page bg-periglacial-blue ">
            <div class="range range-30">
                <div class="cell-md-2"></div>
                <div class="cell-md-12">
                    <div class="shell ">
                        <div class="page-content">
                            <div class="cell-xs-12">
                                <h2></h2>
                            </div>
                            <div class="cell-xs-12">
                                <div class="range range-30">
                                    <?php
                                    $query_param = array(
                                        'post_type' => 'product',
                                        'orderby' => 'id',
                                        'order' => 'ASC',
                                        'tax_query' => array(
                                            array(
                                                'taxonomy' => 'product_cat',
                                                'field' => 'slug',
                                                'terms' => 'san-pham-chinh' // Where term_id of Term 1 is "1".
                                            )
                                        )
                                    );
                                    $my_query = new WP_Query($query_param);
                                    if ($my_query->have_posts()):while ($my_query->have_posts()): $my_query->the_post();
                                            ?>
                                            <div class="cell-sm-6 cell-md-4 height-fill">
                                                <div class="thumbnail-card">
                                                    <a href="<?php the_permalink() ?>"><?php the_post_thumbnail('product-thumb') ?></a>
                                                    <div class="thumbnail-card-body">
                                                        <a href="<?php the_permalink() ?>" class="thumbnail-card-header"><?php the_title() ?></a>
                                                        <div class="thumbnail-card-text">
                                                            <p><?php the_excerpt() ?></p>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <?php
                                        endwhile;
                                    endif;
                                    ?>
                                </div>
                            </div>
                            <br/><br/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>
        <?php
    endwhile;
endif;
?>
<?php get_footer(); ?>