<?php /* Template name: Add ons Page */ ?>

<?php 

$args = array(
    'post_type' => 'addon',
    'post_status' => 'publish',
    'posts_per_page' => -1,
	'cat' => '3'
);

$addons = new WP_Query( $args );

$order_type 		= $_REQUEST['order_type'];
$current_cafe_url 	= $_REQUEST['cafe_url'];
$cafe_name 			= $_REQUEST['cafe_name'];
$cafe_small_name 	= $_REQUEST['cafe_small_name'];

if(isset($_REQUEST['field_action']) && $_REQUEST['field_action'] == 'add_to_cart'){
    session_start();
    $data = $_REQUEST;
    if(empty($_SESSION['carts'])){
        $_SESSION['carts'][0] = $data;
    }else{
        array_push($_SESSION['carts'], $data);
    }
	$postID = $data['addon_id'];
	$title = get_the_title($postID);
	$price = get_post_meta($postID, "each_price", true);
	$liter = get_post_meta($postID, "litter", true);
	$quantity = $data['quantity'];

	$total = $price * $quantity; 

	global $wpdb;
    $tablename = 'beano_custom_cart';    

    $preffered_bean = $quantity.' x '.$title;
    $weight         = $liter;
    $grind          = '';
    $remarks        = '';
    $session_id     = session_id();
    
    $wpdb->insert( $tablename, array(
	   'product_type' => 'addon', 
       'preffered_bean' => $preffered_bean, 
       'weight'         => $weight,
       'grind'          => $grind, 
       'price'          => $total,
       'each_price'     => $price,
       'remarks'        => $remarks,
       'session_id'     => session_id(), 
       'created_at'     => date('Y-m-d H:i:s'), 
       'updated_at'     => date('Y-m-d H:i:s')
    ) );
    echo session_id();
    exit();
}

?>


<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
	<link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/css/new-style.css?ver=<?php echo rand(111,999)?>">
	<script src="<?php echo get_template_directory_uri();?>/js/jquery.min.js"></script>
    <script>
		$(document).ready(function(){

			$('.cart-btn').click(function(){
				id 		 = $(this).data('id');
				quantity = $('#quantity-'+id).val();

				if(quantity <= 0 ){
					alert('Please select number of quantity');
					return false;
				}

				$.ajax({
					type: "post",
					dataType : 'json',
					data: {'field_action':'add_to_cart','quantity':quantity,'addon_id':id},
					success:function(result){
						console.log(result);
					}
				}); 

			});

			$('ul.tabs li').click(function(){
				var tab_id = $(this).attr('data-tab');

				$('ul.tabs li').removeClass('current');
				$('.tab-content').removeClass('current');

				$(this).addClass('current');
				$("#"+tab_id).addClass('current');
			});

			$('.minus-sign').click(function () {
				var $input = $(this).parent().find('input');
				var count = parseInt($input.val()) - 1;
				count = count < 1 ? 0 : count;
				$input.val(count);
				$input.change();
				return false;
			});

			$('.plus-sign').click(function () {
				var $input = $(this).parent().find('input');
				$input.val(parseInt($input.val()) + 1);
				$input.change();
				return false;
			});

			$('#btn-proceed').click(function(){
				$('#frm-landing-page').submit();
			});
		});


    </script>
</head>

<body class="Add-ons-Page">
	<div class="container">
		<div class="cart-main">
			<div class="left-section-main">
				<div class="left-section">
					<div class="logo-section">
						<div class="logo-main">
							<a href="#" class="logo-link">
								<img src="<?php echo get_template_directory_uri();?>/images/beano_logo.png">
							</a>						
						</div>
					</div>

					<div class="main-title">
					<h1>Glasshouse <span class="d-block">Hampton</span></h1>
					</div>
					<div class="thick-line">
					</div>
					<div class="pick-up-section">
                            <span class="d-block">
                                <?php if($order_type == 'pickup'){?> 
                                    <img src="<?php echo get_template_directory_uri();?>/images/pick-up.png">
                                <?php }else{ ?> 
                                    <img src="<?php echo get_template_directory_uri();?>/images/truck.png">
                                <?php } ?>
                            </span>
                            <a href="#" class="pick-up-txt">
                                <?php if($order_type == 'pickup'){ 
                                    echo 'Pick Up';
                                }else{ 
                                    echo 'Delivery';
                                } ?>
                            </a>
                        </div>

					<div class="copy-rights">Copyright © 2020 , beanoshop.</div>
				</div>
			</div>

			<div class="right-section landing-p-right">
				<div class="half-checkout">
					<div class="add-ons-tab">						

					 <ul class="tabs">
						<li class="tab-link current" data-tab="tab-1">The Pantry</li>
						<li class="tab-link" data-tab="tab-2">Equipments</li>
						<li class="tab-link" data-tab="tab-3">Misc.</li>						
					 </ul>

					<div id="tab-1" class="tab-content current">
					<?php 
						while ($addons->have_posts()) : $addons->the_post(); ?>
							<div class="main-box">
								<div class="img-section">
									<img src="<?php echo get_the_post_thumbnail_url(get_the_ID(),'thumbnail');?>">
								</div>
								<div class="rigt-cnt">
									<h3 class="prd-title"><?php echo the_title();?></h3>
									<p class="prd-w"><?php echo get_post_meta(get_the_ID(), 'litter', true);?></p>
									<ul class="pricing-list">
										<li class="pricing">$<?php echo get_post_meta(get_the_ID(), 'each_price', true);?> <span>/<?php echo get_post_meta(get_the_ID(), 'each', true);?></span></li>
										<li class="pricing">$<?php echo get_post_meta(get_the_ID(), 'pack_price', true);?> <span>/<?php echo get_post_meta(get_the_ID(), 'pack', true);?></span></li>
									</ul>
									<div class="number-main-section">
										<div class="number-section">
											<span class="minus-sign"><img src="<?php echo get_template_directory_uri();?>/images/minus.png"</span>
											<input type="text" value="0" id="quantity-<?php echo get_the_ID();?>" />
											<span class="plus-sign"><img src="<?php echo get_template_directory_uri();?>/images/add.png"></span>
										</div>
										<div class="num-btn-section">
											<a class="cart-btn" data-id="<?php echo get_the_ID();?>">Add to cart</a>
										</div>
									</div>
								</div>
							</div>
						<?php  endwhile; ?>
					</div>
					<div id="tab-2" class="tab-content">
					Coming Soon..
					</div>
					<div id="tab-3" class="tab-content">
						Coming Soon..
					</div>
					</div>					
				</div>
			</div>

		</div>
        <form id='frm-landing-page' action='<?php echo site_url();?>/buyer-details' method="POST">
            <input type="hidden" name="order_type" id="order-type" value="<?php echo $order_type;?>">
            <input type="hidden" name="cafe_name" value="<?php echo $cafe_name; ?>" id="cafe-title" />
			<input type="hidden" name="cafe_small_name" value="<?php echo $cafe_small_name;?>" id="cafe-sub-title" />
			<input type="hidden" name="cafe_url" value="<?php echo $current_cafe_url;?>" id="cafe-url" />
			<input type="hidden" name="action" value="submit" />
        </form>
	</div>
	
	<div class="bottom-cart">
	<div class="proceed-section w-100 proceed-btn proceed-btn-checkout" id="btn-proceed-div">
		<p class="mobile-only-txt-bottom payment-details-bottom">Copyright © <?php echo date('Y');?> , beanoshop.</p>		
		<button class="proceed-btn" id="btn-proceed">Proceed</button>
	</div>
	</div>
</body>
</html>