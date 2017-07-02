<?php
/**
 * Template name: Home
 */
get_header()
?>
<section style="background-image: url(<?php echo get_template_directory_uri() ?>/images/bg-image-4.jpg);" class="jumbotron-custom jumbotron-custom-2 bg-gray-base bg-image">
    <div class="jumbotron-custom-content">
        <div class="shell">
            <div class="range">
                <div class="cell-sm-10 cell-md-9 cell-lg-7">
                    <h1>Elite Coffee Brands</h1>
                    <p class="large">Coffee Shop is the place where you can get flavorful coffee strains from global elite brands and roasters at very affordable price.</p><a href="about.html" class="btn btn-style-1 btn-primary">Xem thêm</a>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section-xl bg-periglacial-blue text-center text-md-left">
    <div class="shell-fluid shell-condensed">
        <div class="range range-md-reverse range-xs-middle range-md-right range-50">
            <div class="cell-md-5 cell-lg-4">
                <div class="inset-1">
                    <h2>CAFE CR MAN    </h2>
                    <div class="p text-width-smallest">
                        <p class="big">
                            <?php echo get_field('about_us', PAGE_HOME) ?>
                        </p>
                    </div><a href="<?php echo get_permalink(PAGE_ABOUTUS) ?>" class="btn btn-sm btn-style-1 btn-primary">Xem thêm</a>
                </div>
            </div>
            <div class="cell-md-7 cell-lg-6">
                <div class="row row-gutter-custom range-15">
                    <div class="col-xs-4">
                        <figure class="figure-fullwidth"><img src="<?php echo get_template_directory_uri() ?>/images/about-1-300x460.jpg" alt="" width="300" height="460"/>
                        </figure>
                    </div>
                    <div class="col-xs-4">
                        <figure class="figure-fullwidth"><img src="<?php echo get_template_directory_uri() ?>/images/about-2-300x460.jpg" alt="" width="300" height="460"/>
                        </figure>
                    </div>
                    <div class="col-xs-4">
                        <figure class="figure-fullwidth"><img src="<?php echo get_template_directory_uri() ?>/images/about-3-300x460.jpg" alt="" width="300" height="460"/>
                        </figure>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="bg-gray-dark">
    <div class="shell-fluid shell-condensed">
        <div class="range range-condensed">
            <div class="cell-md-6 cell-md-6-mod-1 image-wrap-left bg-gray-dark">
                <div class="image-wrap-inner">
                    <h2>Dịch vụ của CR MAN<br></h2>
                    <p class="big"><?php echo get_field('service', PAGE_HOME) ?></p>
                    <a href="<?php echo get_permalink(PAGE_SERVICE) ?>" class="btn btn-style-1 btn-primary">Xem thêm</a>
                </div>
            </div>
            <div style="background-image: url(<?php echo get_template_directory_uri() ?>/images/home-three-3-1011x800.jpg)" class="cell-md-6 cell-md-6-mod-2 image-wrap-right bg-gray-dark bg-image">
                <div class="image-wrap-inner">
                    <div class="range range-condensed range-inner-bordered">
                        <div class="cell-xs-6">
                            <article class="box-icon">
                                <figure class="box-icon-image"><img src="<?php echo get_template_directory_uri() ?>/images/icon-service-3-84x84.png" alt="" width="84" height="84"/>
                                </figure>
                                <p class="box-icon-header"><a href="services.html">Cung cấp cafe hạt</a></p>
                                <p class="box-icon-text">Đúng xuất xứ, đat tiêu chuẩn ngon, sạch.</p>
                            </article>
                        </div>
                        <div class="cell-xs-6">
                            <article class="box-icon">
                                <figure class="box-icon-image"><img src="<?php echo get_template_directory_uri() ?>/images/icon-service-4-84x84.png" alt="" width="84" height="84"/>
                                </figure>
                                <p class="box-icon-header"><a href="services.html">Xuấ khẩu cà phê</a></p>
                                <p class="box-icon-text"></p>
                            </article>
                        </div>
                        <div class="cell-xs-6">
                            <article class="box-icon">
                                <figure class="box-icon-image"><img src="<?php echo get_template_directory_uri() ?>/images/icon-service-1-84x84.png" alt="" width="84" height="84"/>
                                </figure>
                                <p class="box-icon-header"><a href="services.html">Cafe hat đã rang xay</a></p>
                                <p class="box-icon-text">Cung cấp cafe hạt đã rang pha máy và pha phin cho quán Cà phê, nhà hàng.</p>
                            </article>
                        </div>
                        <div class="cell-xs-6">
                            <article class="box-icon">
                                <figure class="box-icon-image"><img src="<?php echo get_template_directory_uri() ?>/images/icon-service-2-84x84.png" alt="" width="84" height="84"/>
                                </figure>
                                <p class="box-icon-header"><a href="services.html">Chuyển giao công nghệ</a></p>
                                <p class="box-icon-text">Chuyển giao công nghệ, lắp đặt thiết bị rang xay cà phê.</p>
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>
<section class="section-xl bg-periglacial-blue text-center">
    <div class="shell">
        <div class="range range-sm-center range-75">
            <div class="cell-xs-12">
                <h2>Khách hàng nói về CR MAN</h2>
                <!--                <div class="p text-width-medium">
                                    <p class="big">These reviews that our clients have recently submitted are the best way to Xem thêm about our level of service and customer support.</p>
                                </div>-->
            </div>
            <div class="cell-xs-12">
                <div class="range range-30">
                    <?php
                    if (have_rows('comment', PAGE_HOME)):
                        while (have_rows('comment', PAGE_HOME)) : the_row();
//                            var_dump() ;die;
                            ?>
                            <div class="item col-md-4 height-fill">
                                <blockquote class="quote-centered">
                                    <div class="quote-centered-avatar">
                                        <img src="<?php echo get_sub_field('avatar')['sizes']['thumbnail'] ?>" alt="<?php echo the_sub_field('name'); ?>" width="100" height="100"/>
                                    </div>
                                    <cite><?php echo the_sub_field('name'); ?></cite>
                                    <span>(<?php echo the_sub_field('job'); ?>)</span>
                                    <p class="quote-centered-text">
                                        <q><?php echo the_sub_field('content'); ?></q>
                                    </p>

                                </blockquote>
                            </div>
                            <?php
                        endwhile;
                    endif;
                    ?>



                </div>
            </div>
        </div>
    </div>
</section>

<section style="background-image: url(<?php echo get_template_directory_uri() ?>/images/bg-image-1.jpg);" class="section-xl bg-gray-dark bg-image text-center">
    <div class="shell">
        <div class="range range-50">
            <div class="cell-xs-12">
                <h2>Sản phẩm của CR MAN</h2>
                <div class="p text-width-medium">
                    <p class="big">Cảm nhận hương vị thực sự của cà phê với các sản phẩm của chúng tôi.
                        Chúng tôi cung cấp cafe và các biến thể cà phê chất lượng cao và ngon lành mang thương hiệu CR MAN</p>
                </div>
            </div>
            <div class="cell-xs-12">
                <div class="range range-30">
                    <?php
                    $query_param = array(
                        'post_type' => 'product',
                        'orderby'   => 'id',
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
                                    <?php the_post_thumbnail('product-thumb')?>
                                    <div class="thumbnail-card-body">
                                        <a href="<?php the_permalink()?>" class="thumbnail-card-header"><?php the_title()?></a>
                                        <div class="thumbnail-card-text">
                                            <p><?php the_excerpt()?></p>
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
            <div class="cell-xs-12">
                <a href="<?php echo get_permalink(PAGE_SHOP)?>" class="btn btn-sm btn-style-1 btn-primary">Xem tất cả sản phẩm</a></div>
        </div>
    </div>
</section>

<section class="section-lg bg-periglacial-blue text-center">
    <div class="shell">
        <div class="range range-sm-center range-751">
            <div class="cell-xs-12">
                <h2>Văn hóa cafe của CR MAN</h2>
                <div class="p text-width-medium">
                    <p class="big"><?php echo get_field('blog', PAGE_HOME) ?></p>
                </div>
            </div>
            <div class="cell-xs-12">
                <div data-arrows="false" data-loop="true" data-dots="true" data-swipe="true" data-autoplay="false" data-items="1" data-lg-items="3" data-center-mode="true" data-center-padding="0.0" class="slick-slider carousel-center-mode">
                     <?php
                    $query_param = array(
                        'post_type' => 'post',
                        'orderby' => 'id',
                        'order' => 'ASC',
                        'tax_query' => array(
                            array(
                                'taxonomy' => 'category',
                                'field' => 'slug',
                                'terms' => 'hot' // Where term_id of Term 1 is "1".
                            )
                        )
                    );
                    $post_query = new WP_Query($query_param);
                    if ($post_query->have_posts()):while ($post_query->have_posts()): $post_query->the_post();
                            ?>
                            <div class="item">
                                <div class="slick-slide-inner">
                                    <article class="post-classic">
                                        <?php the_post_thumbnail('home_blog',array('class'=>'post-classic-image')) ?>
                                        <!--<img src="<?php // echo get_template_directory_uri()) ?>/images/blog-2-770x330.jpg" alt="" width="770" height="330" class="post-classic-image"/>-->
                                        <div class="post-classic-body">
                                            <p class="post-classic-title"><a href="<?php the_permalink()?>"><?php the_title()?></a></p>
                                            <div class="post-classic-text">
                                                <p><?php the_excerpt()?></p>
                                            </div>
                                            
                                        </div>
                                    </article>
                                </div>
                            </div>
                            <?php
                        endwhile;
                    endif;
                    ?>
                   
                    
                </div>
            </div>
        </div>
    </div>
</section>

<!--<section class="box-wrap box-wrap-md bg-white maps">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.3303954118164!2d105.81019031450919!3d21.019462093472395!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab6422a3ad35%3A0xc9af0565ad8f869!2sHibar+Cafe!5e0!3m2!1svi!2s!4v1499005465715" 
            width="100%" height="450" frameborder="0" style="border:0"  scrollwheel="false" allowfullscreen></iframe>
</section>-->

<?php get_footer() ?>