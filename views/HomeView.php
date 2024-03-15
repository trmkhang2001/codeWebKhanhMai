<?php
//load LayoutTrangChu.php
$this->layoutPath = "LayoutTrangChu.php";
?>
<div class="special-collection">
  <div class="tabs-container">
    <div class="row" style="margin-top:10px;">
      <div class="col-lg-10">
        <h2>BÁN CHẠY NHẤT </h2>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
  <div class="tabs-content row">
    <div id="content-tabb1" class="content-tab content-tab-proindex" style="display:none">
      <div class="clearfix">
        <?php
        $products = $this->modelHotProducts();
        $now = date("Y-m-d");
        ?>
        <?php foreach ($products as $rows) : ?>
          <?php
          $createdAt = date('Y-m-d', strtotime($rows->created_at));
          $dateDiff = strtotime($now) - strtotime($createdAt);
          $textYeuThich = 'Yêu thích';
          if ($dateDiff < 259200) {
            $textYeuThich = 'Sản phẩm mới';
          }
          ?>
          <!-- box product -->
          <div class="col-xs-6 col-md-4 col-sm-6 " style="position: relative;">
            <div style="position: absolute; width: 50px; line-height: 50px; border-radius: 30px; background: red; color:white; text-align: center;"><?php echo $rows->discount; ?>%</div>
            <div class="product-grid" id="product-1168979" style="height: 350px; overflow: hidden;">
              <div class="image"> <a href="#"><img src="assets/upload/products/<?php echo $rows->photo; ?>" title="<?php echo $rows->name; ?>" alt="<?php echo $rows->name; ?>" class="img-responsive"></a> </div>
              <div class="info">
                <h3 class="name"><a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>"><b><?php echo $rows->name; ?></b></a></h3>

                <p class="price-box"> <span class="special-priceg"> <span class="price product-priceg"> <?php echo number_format($rows->price - ($rows->price * $rows->discount) / 100); ?> </span>₫ </span> </p>

                <div class="action-btn">
                  <form>
                    <a href="index.php?controller=cart&action=create&id=<?php echo $rows->id; ?>" class="button">Thêm vào giỏ hàng</a>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <!-- end box product -->
        <?php endforeach; ?>

      </div>
    </div>
  </div>
</div>
<!-- <div class="row">
  <div class="col-xs-12 col-md-12"> <img src="assets/frontend/images/adv1.jpg" class="img-thumbnail"> </div>
</div> -->
<?php
$categories = $this->modelGetCategories();
?>
<?php foreach ($categories as $rowsCategories) : ?>
  <!-- category product -->
  <div class="special-collection">
    <div class="tabs-container">
      <div class="row" style="margin-top:10px;">
        <div class="head-tabs head-tab1 col-lg-11">
          <h2><?php echo $rowsCategories->name; ?></h2>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
    <div class="tabs-content row">
      <div id="content-taba4" class="content-tab content-tab-proindex">

        <?php
        $products = $this->modelGetProducts($rowsCategories->id);
        ?>
        <?php foreach ($products as $rows) : ?>
          <?php
          $createdAt = date('Y-m-d', strtotime($rows->created_at));
          $dateDiff = strtotime($now) - strtotime($createdAt);
          $textYeuThich = 'Yêu thích';
          if ($dateDiff < 259200) {
            $textYeuThich = 'Sản phẩm mới';
          }
          ?>
          <!-- box product -->
          <div class="col-xs-6 col-md-4 col-sm-6 " style="position: relative;">
            <div style="position: absolute; width: 50px; line-height: 50px; border-radius: 30px; background: red; color:white; text-align: center;"><?php echo $rows->discount; ?>%</div>

            <div class="product-grid" id="product-1168979" style="height: 350px; overflow: hidden;">
              <div class="image"> <a href="#"><img src="assets/upload/products/<?php echo $rows->photo; ?>" title="<?php echo $rows->name; ?>" alt="<?php echo $rows->name; ?>" class="img-responsive"></a> </div>
              <div class="info">
                <h3 class="name"><a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>"><?php echo $rows->name; ?></a></h3>
                <p class="price-box"> <span class="special-price"> <span style="text-decoration:line-through;"> <?php echo number_format($rows->price); ?></span> ₫ </span> </p>
                <p class="price-box"> <span class="special-priceg"> <span class="price product-priceg"> <?php echo number_format($rows->price - ($rows->price * $rows->discount) / 100); ?> </span>₫ </span> </p>

                <div class="action-btn">
                  <form>
                    <a href="index.php?controller=cart&action=create&id=<?php echo $rows->id; ?>" class="button">Thêm vào giỏ hàng</a>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <!-- end box product -->
        <?php endforeach; ?>

      </div>
    </div>
  </div>
  <!-- /category product -->
<?php endforeach; ?>

<!-- adv -->
<div class="widebanner"> <a href="#"><img src="/assets/frontend/images/ban_footer.png" alt="#" class="img-responsive"></a> </div>
<!-- end adv -->

<!-- hot news -->
<div class="home-blog">
  <h2 class="title"> <span>Tin tức</span></h2>
  <div class="row">
    <div class="owl-home-blog owl-home-blog-bottompage">
      <?php
      $hotNews = $this->modelGetHotNews();
      ?>
      <?php foreach ($hotNews as $rows) : ?>
        <!-- new item -->
        <div class="item">
          <div class="article"> <a href="index.php?controller=news&action=detail&id=<?php echo $id; ?>" class="image"> <img src="assets/upload/news/<?php echo $rows->photo; ?>" alt="<?php echo $rows->name; ?>" title="<?php echo $rows->name; ?>" class="img-responsive"> </a>
            <div class="info">
              <h3><a class="text3line" href="index.php?controller=news&action=detail&id=<?php echo $rows->id; ?>" style="font-weight: bold;"><?php echo $rows->name; ?></a></h3>
              <p class="desc"><?php echo $rows->description; ?></p>
            </div>
          </div>
        </div>
        <!-- /news item -->
      <?php endforeach; ?>


    </div>
  </div>
</div>
<!-- /hotnews -->