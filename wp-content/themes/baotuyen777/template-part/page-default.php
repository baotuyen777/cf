<?php
get_header();
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
                        <div class="range range-30 blog">
                            <?php
                            $query_param = array(
                                'post_type' => 'post',
                                'orderby' => 'id',
                                'order' => 'ASC',
                            );
                            $my_query = new WP_Query($query_param);
                            if ($my_query->have_posts()):while ($my_query->have_posts()): $my_query->the_post();
                                    ?>
                                    <div class="thumbnail-card">
                                        <a href="<?php the_permalink() ?>">
                                            <?php the_post_thumbnail('product-thumb') ?></a>

                                        <div class="thumbnail-card-body">
                                            <h2><a href="<?php the_permalink() ?>" class="thumbnail-card-header">
                                                    <?php the_title() ?></a>
                                            </h2>
                                            <div class="thumbnail-card-text">
                                                <p><?php the_excerpt() ?></p>
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
<?php get_footer(); ?>