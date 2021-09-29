<?php /* Template name: Landing Page */ ?>

<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
	<link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/css/new-style.css?ver=<?php echo rand(111,999)?>">
	<script src="<?php echo get_template_directory_uri();?>/js/jquery.min.js"></script>
    <script>
        
        $(document).ready(function(){
            var stylesheet_directory_uri = "<?php echo get_stylesheet_directory_uri(); ?>/images/";

            $('#pickup-order').click(function(){
                $('#delivery-order').removeClass('onclick');    
                $('#pickup-order').addClass('onclick');
                $('#pickup-order > img').attr('src',stylesheet_directory_uri+'Pick-Up_Inverse-circle.png');
                $('#delivery-order > img').attr('src',stylesheet_directory_uri+'delivery-circle.png');
                $('#order-type').val('pickup');
				$('#btn-proceed-div').show();
            });

            $('#delivery-order').click(function(){
                $('#delivery-order').addClass('onclick');    
                $('#pickup-order').removeClass('onclick');                
                $('#pickup-order > img').attr('src',stylesheet_directory_uri+'pick-up-circle.png');
                $('#delivery-order > img').attr('src',stylesheet_directory_uri+'delivery_Inverse-circle.png');
                $('#order-type').val('delivery');
				$('#btn-proceed-div').show();
            });

            $('#btn-proceed').click(function(){
                var order_type = $('#order-type').val();
                if(order_type != "pickup" && order_type != "delivery"){
                    alert('Please select Pick Up or Delivery option!');
                    return false;
                }
                $('#frm-landing-page').submit();
            });
        });

    </script>
</head>

<body class="Landing-Page">
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
						<p class="landing-left-address">305 Hampton Street <br/>
							Hampton<br/>
							3188<br/>
							VIC
						</p>
						<p class="week-days">
							<span>M - F : <strong> 7am - 4pm </strong> <br/>
							S / S  : <strong>  8am - 4pm</strong></span>
						</p>
					</div>
					<div class="copy-rights mt-0">Copyright © <?php echo date('Y');?> , beanoshop.</div>
				</div>
			</div>

			<div class="right-section landing-p-right">
				<div class="half-checkout">
					<a href="#" class="pick-up-txt">Sign In</a>
					<p class="new-to-txt">New to beano? <span>Start here.</span></p>
					<p class="main-title">How would you like to order your coffee beans?</p>
					<div class="right-two-section">						
						<div class="right-two-section-box">
							<div class="main-circle" id="pickup-order">
								<img src="<?php echo get_template_directory_uri();?>/images/pick-up-circle.png">
								<!-- <img src="<?php echo get_template_directory_uri();?>/images/Pick-Up_Inverse-circle.png">  -->
							</div>
							<div class="main-cnt">
								<h3>Pick-Up</h3>
								<p>10% off retail price</p>
								<p>Pick up on the same day </br/>
									(Order before 2pm)
								</p>
							</div>
						</div>
						<div class="right-two-section-box">
							<div class="main-circle" id="delivery-order">
								<img src="<?php echo get_template_directory_uri();?>/images/delivery-circle.png">
							</div>
							<div class="main-cnt">
								<h3>Hand Delivery</h3>
								<p>Receive on the same day <br/>(Order before 2pm)</p>
								<p>Order milk</p>
								<p>Purchase brewing equipments</p>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
        <form id='frm-landing-page' action='<?php echo site_url();?>/glasshouse' method="POST">
            <input type="hidden" name="order_type" id="order-type" value="">
        </form>
	</div>
	
	<div class="bottom-cart">
	<div class="proceed-section w-100 proceed-btn proceed-btn-checkout" style="display:none;" id="btn-proceed-div">
		<p class="mobile-only-txt-bottom payment-details-bottom">Copyright © <?php echo date('Y');?> , beanoshop.</p>		
		<button class="proceed-btn" id="btn-proceed">Proceed</button>
	</div>
	</div>
</body>
</html>