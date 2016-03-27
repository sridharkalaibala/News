<h3>Categories</h3>
<?php
$categories = get_categories();
if ($categories):
    foreach ($categories as $category):
        ?>
        <ul class="recent">
            <li>
                <i class="fa fa-fw fa-folder-o "></i>
                <a href="<?php echo base_url('news/category/' . $category->idcategory); ?>">
                    <?php echo $category->title; ?>
                </a>
            </li>
        </ul>
        <?php
    endforeach;
endif;
?>

<h3>Subscribe</h3>

        <ul class="recent">
            <li>
                <i class="fa fa-fw fa-rss-square "></i>
                <a href="<?php echo base_url('news/rss'); ?>" target="_blank">RSS feed</a>
            </li>
        </ul>
       
