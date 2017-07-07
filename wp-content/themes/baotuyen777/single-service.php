<?php
get_header();
if (have_posts()): while (have_posts()): the_post();
        ?>
        <div class="page-title">
            <div class="page-title-content">
                <div class="shell">
                    <h1>Dịch vụ của CR MAN</h1>
                </div>
            </div>
        </div>
        <?php
        get_template_part('template-part/page-content');
        ?>

        <?php
    endwhile;
endif;
?>
<?php get_footer(); ?>