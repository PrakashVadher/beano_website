<?php /* Template name: Buyer Details */ ?>
<?php 
session_start();
$sessionID = session_id();
 $_SESSION['send_email'] = 'true';
$cart_data = $wpdb->get_results( "SELECT * FROM beano_custom_cart where session_id= '".$sessionID."' " );

$cart_price = 0;
if( isset($_REQUEST['action']) && $_REQUEST['action'] == 'submit'){
	
	$cafe_name      = !empty(trim(isset($_POST['cafe_name']))) ? $_POST['cafe_name'] : '';
	$cafe_small_name= !empty(trim(isset($_POST['cafe_small_name']))) ? $_POST['cafe_small_name'] : '';
	
	$cafe_url  = !empty(trim(isset($_POST['cafe_url']))) ? $_POST['cafe_url'] : '';

	$_SESSION['cafe_name'] = $cafe_name ;
	$_SESSION['cafe_small_name'] = $cafe_small_name;
	$_SESSION['cafe_url'] = $cafe_url;

}
// else{	
// 	echo 'You are not allowed to access this page';exit(); 
// }


if(isset($_REQUEST['action']) && $_REQUEST['action'] == 'remove_product'){
    global $wpdb;
    session_start();
    $sessionID = session_id(); 
    $res = $wpdb->delete( 'beano_custom_cart', array( 'id' => $_REQUEST['cart_id'] ) );    
    if($res){        
        $wpdb->get_results('SELECT * FROM beano_custom_cart WHERE session_id = "'.$sessionID.'" ');
        echo $wpdb->num_rows;
    }else{
        echo 0;
    } 
    exit;
}
?>


<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
	<link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/css/new-style.css?ver=<?php echo rand(111,999)?>">
	<style>
		.green-tick{display:none;}
		.expand-cart-close{display:none;}
		#spinner {
				display:    none;
				position:   absolute;
				z-index:    1000;
				top:        40%;
				left:       45%;           
				
			}
			#spinner img {
				height:     40px;
				width:      40px;
			}
	</style>
	<script src="<?php echo get_template_directory_uri();?>/js/jquery.min.js"></script>
	<script>
		$(document).ready(function(){

			/* Payment form fields */
			$("iframe").contents().find('#sq-postal-code').on('focusout', function(event) {
				alert('lol: ' + event.type);
			});

			$('#sq-postal-code').focusout(function(){
				alert();
				// $('.step1').hide();
				// $('.step2').hide();
				// $('.step3').hide();
				// $('.step4').hide();

				// $('.payment-address-section').show();
			});

			$('#coupan-code').focusout(function(){
				coupan_code = $(this).val();
				if(coupan_code.toLowerCase() == 'blackfriday'){			
					main_price = $('.sub-total').text().replace('$','');
					disc = main_price*40/100;
					$('#discount-value').html('<span class="book-font">(40%) </span> $'+disc);
					final_price = main_price-disc;
					$('#final-price').text('$'+final_price);
					$('#coupan-code-applied').val('yes');			
				}else{
					main_price = $('.sub-total').text().replace('$','');
					disc = main_price*10/100;
					$('#discount-value').html('<span class="book-font">(10%) </span> $'+disc);
					final_price = main_price-disc;
					$('#final-price').text('$'+final_price);
					$('#coupan-code-applied').val('no');
				}
			});

			$('#basic-info').click(function(){
				$('.payment-address-section').hide();
				$('.step1').show();
				$('.step2').show();
				$('.step3').hide();
				$('.proceed-btn-checkout').hide();
			});

			$('#delivery-address').click(function(){
				$('.payment-address-section').hide();
				$('.step1').show();
				$('.step2').hide();
				$('.step3').show();
				$('.proceed-btn-checkout').hide();
			});

			$('.expand-cart-open').click(function(){		
				$('.expand-section').removeClass('hidden-section');    	
				$('.checkout-items-sub').removeClass('hide');
				$(this).hide();
				$('.expand-cart-close').show();
			});
			$('.expand-cart-close').click(function(){		
				$('.expand-section').addClass('hidden-section');    	
				$('.checkout-items-sub').addClass('hide');
				$(this).hide();
				$('.expand-cart-open').show();  	
			});
			$('.remove-product').click(function () {   
				$('#spinner').show();         
				cartId =  $(this).data('id');
				$.ajax({
					type: "get",
					dataType : 'json',
					data: {'action':'remove_product','cart_id': cartId},
					success:function(result){
						location.reload();
					}
				});
			});

			$('.field-basic-info').focusout(function(){
				customer_name  = $('#customer_name').val();
				customer_email = $('#customer_email').val();
				customer_phone = $('#customer_phone').val();

				if(customer_name.length > 0 && customer_email.length > 0 && customer_phone.length > 0){
					//$('.proceed-btn-checkout').show();
					//$('.step1').hide();
					
					$('#verify-name').text(customer_name);
					$('#verify-email').text(customer_email);
					$('#verify-phone').text(customer_phone);

					$('.step2').hide();
					$('.step3').show();
				}else{
					$('.proceed-btn-checkout').hide();
				}
			});

			$('.field-delivery-address').focusout(function(){
				address_1  	= $('#address_1').val();
				address_2 	= $('#address_2').val();
				city 		= $('#city').val();
				postal_code = $('#postal_code').val();

				if(address_1.length > 0 && address_2.length > 0 && city.length > 0 && postal_code.length > 0) {
					$('.proceed-btn-checkout').show();
					$('#verify-order').show();
					$('.step1').hide();
					$('.step2').hide();
					$('.step3').hide();
					$('.step4').show();

					$('#verify-address-1').text(address_1);
					$('#verify-address-2').text(address_2);
					$('#verify-city').text(city);
					$('#verify-postal-code').text(postal_code);

				}else{
					$('.proceed-btn-checkout').hide();
				}
			});

			$('#verify-order').click(function(){
				$('.step4').hide();
				$('.proceed-btn-checkout').show();
				$('#verify-order').hide();
				$('#proceed-order').show();
				$('.payment-address-section').show();
			});

			$('#customer_name,#customer_email,#customer_phone').focusin(function(){
				$(this).closest('.input-section').removeClass('without-filled');
			});
			

			$('#customer_name,#customer_email,#customer_phone').focusout(function(){
				customer_name = $(this).val();
				if(customer_name.length > 0){			
					$(this).next('.green-tick').show();
					$(this).closest('.input-section').removeClass('without-filled');
					$('#customer_email').closest('.input-section').removeClass('without-filled');			
				}else{
					if(!$(this).closest('.input-section').hasClass('without-filled')){
						$(this).closest('.input-section').addClass('without-filled');
					}
					$(this).next('.green-tick').hide();
				}
			});

			$('#customer_phone').focusout(function(){
				customer_phone = $(this).val();
				if(txt.length != 10){
					alert('Please enter a valid phone number');
					$(this).next('.green-tick').hide();
					$('.proceed-btn-checkout').hide();
					return false;
				}		
			});

			$("#customer_phone").bind("keypress", function (e) {
				var keyCode = e.which ? e.which : e.keyCode               
				if (!(keyCode >= 48 && keyCode <= 57)) {            
					return false;
				}
			});

			document.getElementById('customer_phone').addEventListener("keyup", function(e){	 
				txt = this.value;
				// if ( (txt.length == 4 || txt.length == 8) && e.keyCode !=8)
				//  this.value=this.value+" ";
				if(txt.length == 10){
					$('#customer_phone').next('.green-tick').show();
					customer_name  = $('#customer_name').val();
					customer_email = $('#customer_email').val();
					customer_phone = $('#customer_phone').val();

					// if(customer_name.length > 0 && customer_email.length > 0 && customer_phone.length > 0){
					// 	$('.proceed-btn-checkout').show();
					// }else{
					// 	$('.proceed-btn-checkout').hide();
					// }
				}
			}); 

			$('#proceed-order').click(function(){
					number = $("#customer_phone").val();			
					if(number.length != 10){
						alert('Please enter a valid number');
						$("#customer_phone").focus();
						return false;
					}
					//$('#frm-customer-details').submit();
			});
			
		});
	</script>
	<!-- <script type="text/javascript" src="https://js.squareup.com/v2/paymentform"></script> -->		
	<script type="text/javascript" src="https://js.squareupsandbox.com/v2/paymentform"></script>
	<!-- link to the local SqPaymentForm initialization -->
	<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/js/sqpaymentform.js">
	</script>
	<!-- link to the custom styles for SqPaymentForm -->
	<link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri();?>/css/sqpaymentform-basic.css">
	<script>
		document.addEventListener("DOMContentLoaded", function(event) {
			if (SqPaymentForm.isSupportedBrowser()) {
			paymentForm.build();
			paymentForm.recalculateSize();
			}
		});
	</script>

</head>

<body class="checkout">
	<div id="spinner"> <img src="<?php echo get_template_directory_uri();?>/images/spinner.gif"></div>
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
					<h1><?php echo $_SESSION['cafe_name']; ?> <span class="d-block"><?php echo $_SESSION['cafe_small_name']; ?></span></h1>
					</div>
					<div class="thick-line">
					</div>
					<div class="pick-up-section yesha">
						<span class="d-block"><img src="<?php echo get_template_directory_uri();?>/images/pick-up.png"></span>
						<a href="#" class="pick-up-txt">Pick-Up</a>
					</div>
					<div class="copy-rights">Copyright © <?php echo date('Y');?> , beanoshop.</div>
				</div>
			</div>

			<div class="right-section">
				<div class="half-checkout checkout-section">
				<?php if(!empty($cart_data)){?>
					<div class="modal-popup">
						<div class="modal-header">
							<span class="counter-main counter-main-modal">
								<img src="<?php echo get_template_directory_uri();?>/images/shopping-cart.png">
								<span class="counter"><?php echo count($cart_data);?></span></span>
							<h2>Order Summary</h2>						
						</div>
						<div class="modal-body">
							<div class="hidden-section expand-section">
								<div class="float-left w-100 scrollbar-section <?php if(count($cart_data) > 3){?> checkout-items <?php }?> ">
									<?php if(!empty($cart_data)){?>
										<?php foreach($cart_data as $value){ 
											$cart_price = $cart_price + $value->price;	
										?>
											<div class="w-70 float-left text-left">
												<h3 class="title"><?php echo $value->preffered_bean;?></h3>
												<h4 class="sub-title"><?php echo $value->grind;?></h4>
												<h5 class="grms"><?php echo $value->weight?></h5>
												<div class="float-left w-100">
												<a href="#" class="close remove-product with-icon" data-id="<?php echo $value->id;?>">
													<img src="<?php echo get_template_directory_uri();?>/images/red-close.png" class="red-close float-left"> 
													<span class="float-left">Remove</span>
												</a>
												</div>
											</div>
											<div class="w-30 float-right text-right">
												<h3 class="price"><?php echo '$'.$value->price;?></h3>
											</div>
										<?php } ?>
									<?php } ?>
								</div>

								<div class="add-another float-left w-100 mt-0">
									<span class="mt-0">Add Another Order<a href="<?php echo $_SESSION['cafe_url'];?>" type="button" class="add-btn btn-add-to-cart">
									<img src="<?php echo get_template_directory_uri();?>/images/add.png"></a></span>
								</div>
								<p class="extra-txt">*Change any coffee bean order <span class="d-block"> by removing the order and adding another order.</span></p>
								
								<div class="main float-left w-100 checkout-items-sub checkout-items-sub-small">
									<div class="w-70 float-left text-left">
										<h4 class="title">Subtotal</h4>
										<h4 class="title">Shipping</h4>
										<h4 class="title">Discount</h4>
										<input type="text" placeholder="Enter discount code" class="discount" id="coupan-code">
									</div>
									<div class="w-30 float-right text-right">
										<h3 class="price sub-total"><?php echo '$'.$cart_price; ?></h3>
										<h3 class="price">-</h3>
										<h3 class="price" id="discount-value"><span class="book-font">(10%) </span><?php $discount = $cart_price/10; echo '$'.$discount; ?></h3>
									</div>
								</div>	
							</div>
							<div class="main float-left w-100 checkout-items-sub hide expand-space">
								<div class="w-70 float-left text-left">
									<h3 class="title">Total</h3>
									<i>(Paid upon pick-up)</i>
								</div>
								<div class="w-30 float-right text-right">
									<h3 class="price" id="final-price"><?php $final_total = $cart_price-$discount; echo '$'.$final_total; ?></h3>
								</div>
								<div class="steps-name mobile-only">
									<a href="#" class="step-link expand-cart-open"><span class="arrow-slide left"><img src="<?php echo get_template_directory_uri();?>/images/back.png"></span>Expand</a>
									<div class="text-center expand-cart-close"><img src="<?php echo get_template_directory_uri();?>/images/close.png" class="close-btn"></div>
								</div>
							</div>						
						</div>
					</div>
				<?php }else{?>
					<div class="modal-popup">
						<div class="modal-header">
							<h2>Cart</h2>
							<p class="empty d-block empty-cart empty-cart-text text-center border-0 pb-0" style="">Your cart is empty</p>
						</div>
						<div class="modal-body">
							<div class="add-another add-another-checkout float-left w-100 mt-0">
								<span class="mt-0 float-left w-100 text-center">
								<a href="<?php echo $_SESSION['cafe_url'];?>" type="button" class="add-btn btn-add-to-cart">
								<img src="<?php echo get_template_directory_uri();?>/images/white-add.png"></a></span>
								<span class="mt-0 float-left w-100 text-center">Add An Order</span>
							</div>
							<div class="main float-left w-100 checkout-items-sub hide-remove">
								<div class="w-70 float-left text-left">
									<h3 class="title">Total</h3>
									<i>(Paid upon pick-up)</i>
								</div>
								<div class="w-30 float-right text-right">
									<h3 class="price big">$0</h3>
								</div>							
							</div>			
						</div>
					</div>
				<?php } ?>
				</div>
				<div class="half-checkout form-section">
					<div class="sign-in-section">
						<div class="basics-info-top step1">
							<a style="background:#e2e3e5" class="checkout-btn d-inline-block float-left edit-btn">Sign in</a>
							<p class="or-text">or //</p>
							<h2 class="form-title">Guest Checkout</h2>
						</div>
						<form method="POST" action="<?php echo site_url();?>/thank-you/" id="frm-customer-details">
							<div class="basics-info-section step2">
								<div class="input-section without-filled">
									<div class="new-design-form-main">
										<img src="<?php echo get_template_directory_uri();?>/images/Profile.png" class="custom-img">
										<div class="new-design-form-sub">
											<input required type="text" name="customer_name" id="customer_name" placeholder="Name" class="new-design-form form-field field-basic-info">
											<img src="<?php echo get_template_directory_uri();?>/images/green-right.png" class="green-tick">
										</div>
									</div>
								</div>
								<div class="input-section without-filled">
									<div class="new-design-form-main">
										<img src="<?php echo get_template_directory_uri();?>/images/Email.png" class="custom-img">
										<div class="new-design-form-sub">
											<input required type="email" name="customer_email" id="customer_email" placeholder="Email Address" class="new-design-form form-field field-basic-info">
											<img src="<?php echo get_template_directory_uri();?>/images/green-right.png" class="green-tick">
										</div>
									</div>
								</div>
								<div class="input-section without-filled">
									<div class="new-design-form-main">
										<img src="<?php echo get_template_directory_uri();?>/images/Mobile_Phone.png" class="custom-img">
										<div class="new-design-form-sub">
											<input required maxlength="10" type="text" name="customer_phone" id="customer_phone" placeholder="Mobile" class="new-design-form form-field field-basic-info">
											<img src="<?php echo get_template_directory_uri();?>/images/green-right.png" class="green-tick">
										</div>
									</div>
								</div>
								<input type="hidden" name="coupan_code" value="no" id="coupan-code-applied">
								<input type="hidden" name="action" value="buyer-details">
								<input type="hidden" name="cafe_url" value="<?php echo $_SESSION['cafe_url'];?>">
							</div>

							<div class="basics-info-section step3 delivery_address" style="display:none;">
								<div class="input-section without-filled">
									<div class="new-design-form-main">
										<img src="<?php echo get_template_directory_uri();?>/images/Profile.png" class="custom-img">
										<div class="new-design-form-sub">
											<input required type="text" name="address_1" id="address_1" placeholder="Address Line 1" class="new-design-form form-field field-delivery-address">
											<img src="<?php echo get_template_directory_uri();?>/images/green-right.png" class="green-tick">
										</div>
									</div>
								</div>
								<div class="input-section without-filled">
									<div class="new-design-form-main">
										<img src="<?php echo get_template_directory_uri();?>/images/Email.png" class="custom-img">
										<div class="new-design-form-sub">
											<input required type="text" name="address_2" id="address_2" placeholder="Address Line 2" class="new-design-form form-field field-delivery-address">
											<img src="<?php echo get_template_directory_uri();?>/images/green-right.png" class="green-tick">
										</div>
									</div>
								</div>
								<div class="input-section without-filled">
									<div class="new-design-form-main">
										<img src="<?php echo get_template_directory_uri();?>/images/Mobile_Phone.png" class="custom-img">
										<div class="new-design-form-sub">
											<input required type="text" name="city" id="city" placeholder="City" class="new-design-form form-field field-delivery-address">
											<img src="<?php echo get_template_directory_uri();?>/images/green-right.png" class="green-tick">
										</div>
									</div>
								</div>
								<div class="input-section without-filled">
									<div class="new-design-form-main">
										<img src="<?php echo get_template_directory_uri();?>/images/Mobile_Phone.png" class="custom-img">
										<div class="new-design-form-sub">
											<input required type="text" name="postal_code" id="postal_code" placeholder="Postal Code" class="new-design-form form-field field-delivery-address">
											<img src="<?php echo get_template_directory_uri();?>/images/green-right.png" class="green-tick">
										</div>
									</div>
								</div>
								<input type="hidden" name="coupan_code" value="no" id="coupan-code-applied">
								<input type="hidden" name="action" value="buyer-details">
								<input type="hidden" name="cafe_url" value="<?php echo $_SESSION['cafe_url'];?>">
							</div>

							<!-- <p class="ensure-txt">Please ensure that all information is accurate so that we can contact you.</p> -->
						<!-- </form> -->
						<div class="step4 payment-form" id="section-payment-form" style="display:none;">
							<div class="information-success" style="display:none;">
								<div class="information-success-inner">
									<a href="#" class="back-link">Basic Information</a>
									<img src="<?php echo get_template_directory_uri();?>/images/green-right.png" class="green-ticks">
								</div>
								<div class="information-success-inner">
									<a href="#" class="back-link">Delivery Address</a>
									<img src="<?php echo get_template_directory_uri();?>/images/green-right.png" class="green-ticks">
								</div>
							</div>

							<div id="sq-ccbox" class="payment-section">					    
							<!-- <form id="nonce-form" novalidate action="<?php //echo site_url();?>/payment-process" method="post"> -->
							<h3 class="payment-title">Payment</h3>
							<fieldset class="payment-method-section">
								<img src="http://localhost/beano_website/wp-content/themes/beanoshop/images/Payment.png" class="custom-img">
								<!-- <span class="label">Card Number</span> -->
								<div id="sq-card-number"></div>

								<div class="third">
								<!-- <span class="label">Expiration</span> -->
								<div id="sq-expiration-date"></div>
								</div>

								<div class="third">
								<!-- <span class="label">CVV</span> -->
								<div id="sq-cvv"></div>
								</div>

								<div class="third">
								<!-- <span class="label">Postal</span> -->
								<div id="sq-postal-code"></div>
								</div>
							</fieldset>

							<!-- <button id="sq-creditcard" class="button-credit-card" onclick="requestCardNonce(event)">Pay $2.00</button> -->

							<div id="error"></div>

							<input type="hidden" id="amount" name="amount" value="111">
							<input type="hidden" id="card-nonce" name="nonce">
							<input type="hidden" name="ai" id="ai" value="<?php echo SANDBOX_APPLICATION_ID;?>">
							<input type="hidden" name="li" id="li" value="<?php echo SANDBOX_LOCATION_ID;?>">
							</form>
							</div> <!-- end #sq-ccbox -->

						</div> <!-- end #form-container -->

						<div class="payment-address-section" style="display:none;">
							<div class="basic-address">
								<div class="info-sub" id="basic-info">
									<h4 id='verify-name'></h4>
									<p id='verify-email'></p>
									<p id='verify-phone'></p>
								</div>
								<div class="info-sub" id="delivery-address">
									<h4 id='verify-address-1'></h4>
									<p id='verify-address-2'></p>
									<p id='verify-city'></p>
									<p id='verify-postal-code'></p>
								</div>
							</div>
							<div class="card-detail-box">
								<p class="float-left counter">xxxx xxxx xxxx 5655</p>
								<img src="<?php echo get_template_directory_uri();?>/images/card-img.png" class="float-right">
							</div>
							<div class="payment-bottom-txt">
								<p>Please ensure that all information is accurate so that we can contact you.</p>
							</div>
						</div>

					</div>
				</div>
				
			</div>

		</div>
	</div>
	<div class="bottom-cart">
	<div class="proceed-section w-100 proceed-btn proceed-btn-checkout" style="display: none;">
		<p class="mobile-only-txt-bottom">By clicking, you are agreeing to the <strong>Terms & Conditions.</strong></p>
		<button class="proceed-btn" id="verify-order" style="display: none;" onclick="">Verify Details</button>
		<button class="proceed-btn" id="proceed-order" style="display: none;" onclick="requestCardNonce(event)">Submit Order</button>
	</div>
	</div>
</body>
</html>