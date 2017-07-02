<?php
get_header();
?>
<main>
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="main-content" >
                    <?php
                    if (have_posts()):while (have_posts()): the_post();
                            get_template_part('template-part/content');
                        endwhile;
                    endif;
                    ?>
                    <div class="pagination">
                        <?php wp_pagenavi(); ?>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <?php get_sidebar() ?>
        </div>
    </div>
</main>
<?php get_footer(); ?>