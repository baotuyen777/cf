<div class="col-md-3 sidebar">
    <div class="sidebox">
        <h3> Labels </h3>
        <ul class="list-tag clearfix" >
            <?php
            $arrAllTag = get_tags();
            foreach ($arrAllTag as $arrSingleTag):
                ?>
                <li> <a dir="ltr" href="<?php echo get_tag_link($arrSingleTag) ?>">
                        <?php echo $arrSingleTag->name ?> </a> 
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
    <div class="sidebox">
        <!--<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>-->
        <!-- sidebar -->
<!--        <ins class="adsbygoogle"
             style="display:inline-block;width:300px;height:600px"
             data-ad-client="ca-pub-4172231052133526"
             data-ad-slot="5960032491"></ins>
        <script>
            (adsbygoogle = window.adsbygoogle || []).push({});
        </script>-->
    </div>
</div>