<div class="post clearfix">
    <div class="row">
        <div class="col-md-3 col-sm-3">
            <div class="thumb">
                <a href="<?php the_permalink() ?>">
                    <?php the_post_thumbnail('thumbnail', array('class' => 'image-home-pop img-responsive')) ?>
                </a>
            </div>
        </div>
        <div class="col-md-9 col-sm-9">
            <div class="desc">
                <h2 class="post-home-title post-main-home-title"> 
                    <a href="<?php the_permalink() ?>" title="<?php the_title() ?>"> <?php the_title() ?> </a> </h2>
                <div class="post-header-home"> 
                    <abbr> Cập nhật lúc <?php the_time('d-m-Y') ?></abbr> 
                </div>
                <p> <?php echo wp_trim_words(get_the_content(), 55) ?></p>
            </div>
        </div>
    </div>


</div>
<hr>