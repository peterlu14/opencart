<div class="swiper-top">
      <div id="featureTitle"><p><?php echo $title; ?></p></div>
      <div class="swiper-next"><img src='catalog/view/theme/default/image/next.svg'/></div>
      <div class="swiper-prev"><img src='catalog/view/theme/default/image/prev.svg'/></div>
</div>
<div id="<?php echo $title; ?>" class="swiper-container">
<div class="swiper-wrapper">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12 swiper-slide">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" id="featureImg" class="img-responsive" /></a></div>
      <div id="featureCaption" class="caption">
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        <p><?php echo $product['description']; ?></p>
        <?php if ($product['rating']) { ?>
        <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </p>
        <?php } ?>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
</div>
<style>
  .swiper-top {
    width:100%;
    height:100px;
    margin: 0 auto;
    margin-bottom: 20px;
    position:relative;
    border:0 solid #000;
    border-bottom-width:1px;
    padding: 0 5%;
  }
  .swiper-next, .swiper-prev {
    width:30px;
    height:30px;
    position:relative;
    float:right;
    margin-left: -5px;
    top:45%;
    right: 5%;
  }
  #featureTitle{
    position:relative;
    float:left;
    top:50%;
    font-size:30px;
  }
  #featureImg {
    width: 150px;
    height: 150px;
    max-width: none;
    border: 1px solid #ddd;
  }
	.product-thumb {
		min-width: 150px;
		border: none;
	}
	#featureCaption{
		width: 150px;
		min-height: 0;
		padding: 0 0;
		margin-left: auto;
		margin-right: auto;
	}
</style>
<script>
  $('#<?php echo $title; ?>').swiper({
    slidesPerView: 4,
    nextButton: '.swiper-next',
    prevButton: '.swiper-prev',
    breakpoints: {
      720: {
        slidesPerView: 3,
      },
      540: {
        slidesPerView: 2,
      },
      380: {
        slidesPerView: 1,
      }
    }
  });
</script>
