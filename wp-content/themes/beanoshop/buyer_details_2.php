<?php /* Template name: Buyer Details 2 */ ?>

<?php

if( !empty(trim(isset($_POST['cafe_address']))) && isset($_REQUEST['action']) && $_REQUEST['action'] == 'submit'){
	
	$date = time(); //Current date 
	$weekDay = date('w', strtotime('+1 day',$date));

	if(($weekDay == 0)){
		$day  = date('l', strtotime('+2 day',$date));
		$date = date("jS F Y", strtotime('+2 day',$date)); 
	}else{
		$day  = date('l', strtotime('+1 day',$date));
		$date = date("jS F Y", strtotime('+1 day',$date)); 
	}

	$preferred_bean = !empty(trim(isset($_POST['preferred_bean']))) ? $_POST['preferred_bean'] : '';
	$how_much 		= !empty(trim(isset($_POST['how_much']))) ? $_POST['how_much'] : '';
	$grounded_beans = !empty(trim(isset($_POST['grounded_beans']))) ? $_POST['grounded_beans'] : '';
	$remarks        = !empty(trim(isset($_POST['remarks']))) ? $_POST['remarks'] : '';

	$cafe_name      = !empty(trim(isset($_POST['cafe_name']))) ? $_POST['cafe_name'] : '';
	$cafe_address   = !empty(trim(isset($_POST['cafe_address']))) ? $_POST['cafe_address'] : '';
	$bean_price   = !empty(trim(isset($_POST['bean_price']))) ? $_POST['bean_price'] : '';
	$cafe_url  = !empty(trim(isset($_POST['cafe_url']))) ? $_POST['cafe_url'] : '';

	
	$discount = $bean_price/10;
	$final_total = $bean_price - $discount;	
}else{	
	echo 'You are not allowed to access this page';exit(); 
} ?>

<?php get_header();?>
<script>
$(document).ready(function(){
	if($(window).width() < 767){
	   $('.order-details-inner-details').addClass('mobile-order-details-inner-show');
	}
	$("#buyer_phone").bind("keypress", function (e) {
          var keyCode = e.which ? e.which : e.keyCode               
          if (!(keyCode >= 48 && keyCode <= 57)) {            
            return false;
          }
    });
	$('body').addClass('new-buyer_details');
	$('.mobile-order-details').click(function(){
		$('.order-details-inner-details').toggleClass('mobile-order-details-inner-show');
		if($(this).text().trim() === "Show order details"){
			$('.mobile-order-details a').text('Show less');
			$(this).removeClass('more');
			$(this).addClass('less');
		}else{
			$('.mobile-order-details a').text('Show order details');
			$(this).removeClass('less');
			$(this).addClass('more');
		}
	});
	
});
$(document).ready(function(){  
	
// 	window.addDashes = function addDashes(f) {
// 	    var r = /(\D+)/g,
// 	        npa = '',
// 	        nxx = '',
// 	        last4 = '';
// 	    f.value = f.value.replace(r, '');
// 	    npa = f.value.substr(0, 4);
// 	    nxx = f.value.substr(4, 3);
// 	    last4 = f.value.substr(7, 3);
// 	    f.value = npa + '-' + nxx + '-' + last4;
// 	}

// 	$("#buyer_phone").blur(function(){
//         var mobile_ele = $("#buyer_phone");
//         var mobileNum = mobile_ele.val();
//         if(mobileNum.length != 10){
//         	alert("Please enter a 10 digits mobile number");
//         	return false;
//         }
//         var formattedNum = mobileNum.replace(/(\d{4})(\d{3})(\d{3})/g,"$1 $2 $3");
//         mobile_ele.val(formattedNum);
//     });
//     
//     
    document.getElementById('buyer_phone').addEventListener("keyup", function(e){	 
	   txt = this.value;
	   console.log(txt.length);
	   if ( (txt.length == 4 || txt.length == 8) && e.keyCode !=8)
	     this.value=this.value+" ";	  
	}); 
	
	$('form').submit(function(){
		number = $("#buyer_phone").val();
		if(number.length != 12){
			alert('Please enter a valid number');
			$("#buyer_phone").focus();
			return false;			
		}
	});
	
	$(window).resize(function(){	   
		 var h = $(document).height();   
		 $('.height').html(h);
	});
}); 
</script>

<div class="full-section">
	<div class="section-title">
        <h2><?php echo $cafe_name; ?></h2>         
    </div>
	<div class="half-section"></div>
	<div class="bottom-cart w-50">
		<ul>
			<li class="bean bottom-section float-left"><a><?php echo $preferred_bean;?></a></li>
			<li class="weight bottom-section float-left"><a href="#"><?php echo $how_much;?></a></li>
			<li class="ground bottom-section float-left"><a href="#"><?php echo $grounded_beans;?></a></li>
			<li class="price bottom-section float-left"><a href="#"><?php echo '$'.$bean_price;?></a></li>
		</ul>
	</div>
	<div class="half-section">
		<div class="right-section text-center custom-top">
			<form method="post" action="<?php echo site_url();?>/thank-you-2/" class="top-form">	
				<span href="#" class="btns yellow-btn gry-btn w-60 m-auto mb-10">Please fill in your details.</span>
				<ul class="form-top">
					<li><small>IN-STORE</small><br/><span class="big">Pick-Up</span></li>
					<li class="delivery-txt">Delivery<span class="coming-soon">COMING SOON</span></li>
				</ul>
				<div class="submit-form">
					<div class="submit-inner">
						 <label class="submit-label d-block name" for="name">name</label>
					     <input required class="submit-input d-block m-auto" id="buyer_name" type="text" name="buyer_name" placeholder="What should we call you?">
					</div>

					<div class="submit-inner">
					    <label class="submit-label d-block email" for="email">email</label>
					    <input required class="submit-input d-block m-auto" id="buyer_email" type="email" name="buyer_email" placeholder="Your email address please..">
					</div>

					<div class="submit-inner">
					    <label class="submit-label d-block phone" for="m-number">Phone number</label>
					    <input required maxlength="12" class="submit-input d-block m-auto" id="buyer_phone" type="text" name="buyer_phone" placeholder="04">
					</div>
				</div>			
				
				<div class="text-bottom">
					<!-- <p class="next-txt">Next Scheduled Pick-up:</p>
					<p><span class="time-schedule"><?php //echo $day;?></span> <span class="date-schedule">(<?php //echo $date; ?> )</span></p> -->
					<p><span class="date-schedule">Order by 9pm</span><span class="time-schedule"> Next Day Pickup</span> </p>
				</div>
				<div class="order-details">				
				<div class="order-details-inner">
					<div class="full-section mt-30 mb-30">
						<a href="#" class="btns yellow-btn gry-btn m-auto d-block mt-0 w-80 pointer-none">Your Order Details</a>						
					</div>
					<div class="order-details-inner-details float-left w-100">
						<div class="w-70 float-left">
							<h3 class="main-title">
								<img src="<?php echo get_template_directory_uri();?>/assets/images/title-icon.png"> 
								<span><?php echo $preferred_bean; ?></span>
							</h3>
							<p class="beans-name"><?php echo $grounded_beans; ?></p>
							<p class="price"><?php echo $how_much; ?></p>
							<div class="blank-dot"></div>
						</div>
						<div class="w-30 float-right text-right">
							<h4>$<?php echo $bean_price; ?></h4>
						</div>
					</div>
					<div class="order-details-inner-details float-left w-100">
						<div class="w-100 float-left">
							<div class="w-70 float-left">							
								<p class="price">Subtotal</p>							
							</div>
							<div class="w-30 float-right text-right">
								<h4>$<?php echo $bean_price; ?></h4>
							</div>
						</div>
						<div class="w-100 float-left">
							<div class="w-70 float-left">							
								<p class="price">Shipping</p>							
							</div>
							<div class="w-30 float-right text-right">
								<h4>-</h4>
							</div>
						</div>
						<div class="w-100 float-left">
							<div class="w-70 float-left">							
							<p class="price">Discount</p>							
							</div>
							<div class="w-30 float-right text-right">
								<?php 
									$discount = $bean_price/10;
									$final_total = $bean_price - $discount;
								 ?>
								<h4>$<?php echo $discount;?> (10%)</h4>
							</div>
						</div>
					</div>					
					<div class="order-details-inner-details float-left w-100 last">
						<div class="w-0 float-left">							
							<p class="price total">Your Total</p>
							<i>(Paid upon pickup)</i>							
						</div>
						<div class="w-50 float-right text-right">							
							<h4 class="total-price">$<?php echo number_format((float)$final_total, 2, '.', ''); ?></h4>
						</div>
					</div>
				</div>
				<div class="mobile-order-details text-center more">
					<a class="text">Show order details</a>		
				</div>		
			</div>
				<div class="full-section relative-class mt-30">
					<input type="hidden" name="cafe_url" value="<?php echo $cafe_url;?>">
					<input type="hidden" name="preferred_bean" value="<?php echo $preferred_bean; ?>">
					<input type="hidden" name="how_much" value="<?php echo $how_much; ?>">
					<input type="hidden" name="grounded_beans" value="<?php echo $grounded_beans; ?>">
					<input type="hidden" name="remarks" value="<?php echo $remarks; ?>">					
					<input type="hidden" name="cafe_name" value="<?php echo $cafe_name; ?>">
					<input type="hidden" name="main_price" value="<?php echo $bean_price; ?>">
					<input type="hidden" name="discount_price" value="<?php echo $discount; ?>">
					<input type="hidden" name="final_price" value="<?php echo $final_total; ?>">
					<input type="hidden" name="action" value="buyer-details">
					<small class="d-block bottom-small-txt">By clicking, you are agreeing to the terms & conditions.</small>
					<input type="submit" name="send_details" value="Submit Order" class="btns red-btn-new m-auto d-block detail-btn red-btn absolute-btn mt-0">
					
				</div>
			</form>

			
		</div>
	</div>	
</div>