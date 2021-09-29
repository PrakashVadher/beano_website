<?php /* Template name: Thank You 2*/ ?>
<?php 
// session_start();
// if (!isset($_SESSION['count'])) {
//   $_SESSION['count'] = 0;
// }else{
//   $_SESSION['count']++;
// }

// if($_SESSION['count'] > 0){
// 	session_destroy();
// 	header("Location:".$_POST['cafe_url']);	
// 	exit;
// }
?>
<?php 
if(isset($_REQUEST['action']) && $_REQUEST['action'] == 'buyer-details' && !empty(trim(isset($_POST['cafe_name'])))) {
	
	$preferred_bean = !empty(trim(isset($_POST['preferred_bean']))) ? $_POST['preferred_bean'] : '';
	$how_much 		= !empty(trim(isset($_POST['how_much']))) ? $_POST['how_much'] : '';
	$grounded_beans = !empty(trim(isset($_POST['grounded_beans']))) ? $_POST['grounded_beans'] : '';
	$remarks        = !empty(trim(isset($_POST['remarks']))) ? $_POST['remarks'] : '';

	$name           = !empty(trim(isset($_POST['buyer_name'])))  ? $_POST['buyer_name'] : '';
	$email          = !empty(trim(isset($_POST['buyer_email']))) ? $_POST['buyer_email'] : '';
	$phone          = !empty(trim(isset($_POST['buyer_phone']))) ? $_POST['buyer_phone'] : '';

	$cafe_name 		= !empty(trim(isset($_POST['cafe_name']))) ? $_POST['cafe_name'] : '';

	$cafe_url       = !empty(trim(isset($_POST['cafe_url']))) ? $_POST['cafe_url'] : '';

	$main_price     = !empty(trim(isset($_POST['main_price']))) ? $_POST['main_price'] : '';
	$discount 		= !empty(trim(isset($_POST['discount_price']))) ? $_POST['discount_price'] : '';
	$sell_price 	= !empty(trim(isset($_POST['final_price']))) ? $_POST['final_price'] : '';

	$body = 'Hello Admin,';
	$body .= '<br/><br/><strong>Order number:</strong> #'.date('dmYhis');
	$body .= '<br/><br/><strong>Name:</strong> '.$name;
	$body .= '<br/><br/><strong>Email:</strong> '.$email;
	$body .= '<br/><br/><strong>Phone number:</strong> '.$phone;
	$body .= '<br/><br/><strong>Name of bean:</strong> '.$preferred_bean;
	$body .= '<br/><br/><strong>Weight:</strong> '.$how_much;
	$body .= '<br/><br/><strong>Grind:</strong> '.$grounded_beans;
	$body .= '<br/><br/><strong>Remarks:</strong> '.$remarks;
	$body .= '<br/><br/><strong>Actual Price:</strong> '.$main_price;
	$body .= '<br/><br/><strong>Discount:</strong> '.$discount;
	$body .= '<br/><br/><strong>Sell Price:</strong> '.$sell_price;
	
	$to = 'orders@beanoshop.co';
	$to_me = 'prakash.4689.vadher@gmail.com';
	$subject = 'Beano - Buyer Details';		 
	
	$headers = "MIME-Version: 1.0" . "\r\n";
	$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
	$headers .= 'From: '.$cafe_name.' <'.$email.'>' . "\r\n";		
	mail($to, $subject, $body, $headers);
	mail($to_me, $subject, $body, $headers);
}

?>

<?php get_header(); ?>

<style>	
	.number-of-people{display:none;}
</style>


<script type="text/javascript">		
	$(document).ready(function(){	
		
		$('.re_order_text').hide();
		$('#set-reminder').hide();
		
		$('#people-counter').click(function(){
			$('.sharing_bag').hide();
			$('.re_order_text').show();
			$('#set-reminder').show();
			count = parseInt($('#people-counter').text());		
			count++;
			//how_much = $("input[name=how_much]").val();	
			how_much = '1kg';
			re_order_time = '';
			//alert(count);
			if(how_much == "100g"){
				if(count <= 5){
				   if(count == 1){
					    $('#reorder-days').text('4 days.');
			   			$("input[name=reorder_time]").val('4 days.');					   
				   }else if(count == 2){
					   $('#reorder-days').text('2 days.');
					   $("input[name=reorder_time]").val('2 days.');
				   }else if(count == 3){
					   $('#reorder-days').text('less than 1 day.');
					   $("input[name=reorder_time]").val('less than 1 day.');
				   }else if(count == 4){
					   $('#reorder-days').text('less than 1 day.');
					   $("input[name=reorder_time]").val('less than 1 day.');
				   }else if(count == 5){
					   $('#reorder-days').text('less than 1 day.');
   					   $("input[name=reorder_time]").val('less than 1 day.');
				   }					
				   $('#people-counter').text(count);
				}else{
					$('#reorder-days').text('4 days.');
					$("input[name=reorder_time]").val('4 days.');
					$('#people-counter').text(1);
				}				
			}else if(how_much == "250g"){
				if(count <= 5){
				   if(count == 1){
					   $('#reorder-days').text('10 days.');
					   $("input[name=reorder_time]").val('10 days.');
				   }else if(count == 2){
					   $('#reorder-days').text('5 days.');
					   $("input[name=reorder_time]").val('5 days.');
				   }else if(count == 3){
					   $('#reorder-days').text('3 days.');
					   $("input[name=reorder_time]").val('3 days.');
				   }else if(count == 4){
					   $('#reorder-days').text('3 days.');
					   $("input[name=reorder_time]").val('3 days.');
				   }else if(count == 5){
					   $('#reorder-days').text('2 days.');
					   $("input[name=reorder_time]").val('2 days.');
				   }					
				   $('#people-counter').text(count);
				}else{
					$('#reorder-days').text('10 days.');
					$("input[name=reorder_time]").val('10 days.');
					$('#people-counter').text(1);
				}
			}else if(how_much == "500g"){
				if(count <= 5){
				   if(count == 1){
					   $('#reorder-days').text('20 days.');
					   $("input[name=reorder_time]").val('20 days.');
				   }else if(count == 2){
					   $('#reorder-days').text('10 days.');
					   $("input[name=reorder_time]").val('10 days.');
				   }else if(count == 3){
					   $('#reorder-days').text('6 days.');
					   $("input[name=reorder_time]").val('6 days.');
				   }else if(count == 4){
					   $('#reorder-days').text('5 days.');
					   $("input[name=reorder_time]").val('5 days.');
				   }else if(count == 5){
					   $('#reorder-days').text('4 days.');
					   $("input[name=reorder_time]").val('4 days.');
				   }					
				   $('#people-counter').text(count);
				}else{
					$('#reorder-days').text('20 days.');
					$("input[name=reorder_time]").val('20 days.');
					$('#people-counter').text(1);
				}
			}else if(how_much == "1kg"){
				if(count <= 5){
				   if(count == 1){
					   $('#reorder-days').text('more than 1 month.');
					   $("input[name=reorder_time]").val('more than 1 month.');
				   }else if(count == 2){
					   $('#reorder-days').text('20 days.');
					   $("input[name=reorder_time]").val('20 days.');
				   }else if(count == 3){
					   $('#reorder-days').text('12 days.');
					   $("input[name=reorder_time]").val('12 days.');
				   }else if(count == 4){
					   $('#reorder-days').text('10 days.');
					   $("input[name=reorder_time]").val('10 days.');
				   }else if(count == 5){
					   $('#reorder-days').text('8 days.');
					   $("input[name=reorder_time]").val('8 days.');
				   }					
				   $('#people-counter').text(count);
				}else{
					$('#reorder-days').text('more than 1 month.');
					$("input[name=reorder_time]").val('more than 1 month.');
					$('#people-counter').text(1);
				}
			}
			if(count <=5 ){
			   $("input[name=peoples]").val(count);
				$('#people-counter').text(count);
			}else{
			   $('#people-counter').text(1);
			   $("input[name=peoples]").val(1);
			}
			
		});

		$('#demo-single').on('change',function(){
			alert('hrer');
			$('.sharing_bag').hide();
			$('.re_order_text').show();
			$('#set-reminder').show();
			count = $('#demo-single').val();			
			how_much = $("input[name=how_much]").val();	
			//how_much = '1kg';				
			if(how_much == "100g"){
				if(count <= 5){
				   if(count == 1){
					    $('#reorder-days').text('4 days.');
			   			$("input[name=reorder_time]").val('4 days.');
				   }else if(count == 2){
					   $('#reorder-days').text('2 days.');
					   $("input[name=reorder_time]").val('2 days.');
				   }else if(count == 3){
					   $('#reorder-days').text('less than 1 day.');
					   $("input[name=reorder_time]").val('less than 1 day.');
				   }else if(count == 4){
					   $('#reorder-days').text('less than 1 day.');
					   $("input[name=reorder_time]").val('less than 1 day.');
				   }else if(count == 5){
					   $('#reorder-days').text('less than 1 day.');
   					   $("input[name=reorder_time]").val('less than 1 day.');
				   }					
				   $('#people-counter').text(count);
				}else{
					$('#reorder-days').text('4 days.');
					$("input[name=reorder_time]").val('4 days.');
					$('#people-counter').text(1);
				}				
			}else if(how_much == "250g"){
				if(count <= 5){
				   if(count == 1){
					   $('#reorder-days').text('10 days.');
					   $("input[name=reorder_time]").val('10 days.');
				   }else if(count == 2){
					   $('#reorder-days').text('5 days.');
					   $("input[name=reorder_time]").val('5 days.');
				   }else if(count == 3){
					   $('#reorder-days').text('3 days.');
					   $("input[name=reorder_time]").val('3 days.');
				   }else if(count == 4){
					   $('#reorder-days').text('3 days.');
					   $("input[name=reorder_time]").val('3 days.');
				   }else if(count == 5){
					   $('#reorder-days').text('2 days.');
					   $("input[name=reorder_time]").val('2 days.');
				   }					
				   $('#people-counter').text(count);
				}else{
					$('#reorder-days').text('10 days.');
					$("input[name=reorder_time]").val('10 days.');
					$('#people-counter').text(1);
				}
			}else if(how_much == "500g"){
				if(count <= 5){
				   if(count == 1){
					   $('#reorder-days').text('20 days.');
					   $("input[name=reorder_time]").val('20 days.');
				   }else if(count == 2){
					   $('#reorder-days').text('10 days.');
					   $("input[name=reorder_time]").val('10 days.');
				   }else if(count == 3){
					   $('#reorder-days').text('6 days.');
					   $("input[name=reorder_time]").val('6 days.');
				   }else if(count == 4){
					   $('#reorder-days').text('5 days.');
					   $("input[name=reorder_time]").val('5 days.');
				   }else if(count == 5){
					   $('#reorder-days').text('4 days.');
					   $("input[name=reorder_time]").val('4 days.');
				   }					
				   $('#people-counter').text(count);
				}else{
					$('#reorder-days').text('20 days.');
					$("input[name=reorder_time]").val('20 days.');
					$('#people-counter').text(1);
				}
			}else if(how_much == "1kg"){
				if(count <= 5){
				   if(count == 1){
					   $('#reorder-days').text('more than 1 month.');
					   $("input[name=reorder_time]").val('more than 1 month.');
				   }else if(count == 2){
					   $('#reorder-days').text('20 days.');
					   $("input[name=reorder_time]").val('20 days.');
				   }else if(count == 3){
					   $('#reorder-days').text('12 days.');
					   $("input[name=reorder_time]").val('12 days.');
				   }else if(count == 4){
					   $('#reorder-days').text('10 days.');
					   $("input[name=reorder_time]").val('10 days.');
				   }else if(count == 5){
					   $('#reorder-days').text('8 days.');
					   $("input[name=reorder_time]").val('8 days.');
				   }					
				   $('#people-counter').text(count);
				}else{
					$('#reorder-days').text('more than 1 month.');
					$("input[name=reorder_time]").val('more than 1 month.');
					$('#people-counter').text(1);
				}
			}
			$("input[name=peoples]").val(count);
			
		});
		
		$('#set-reminder').click(function(){
			$(this).text('Done!');
			$(this).css({'background':'#c4c4c4','color':'#fff'});
			$(this).off('click');
			
			console.log($('#frm-reminder').serialize());

			$.ajax({
				url : "/wp-admin/admin-ajax.php",
				type: "post",
				data: $('#frm-reminder').serialize(),
				success:function(result){
					console.log('Success');
				}
			});
			return false;
		});
		
		$('.rating-input').hide();
		$('.rating_face').click(function(){
			console.log($(this).data("rating-face"));
			$('.rating-face').hide();
			$('.rating-input').show();			
		});

		$('#submit-feedback').click(function(){
			$(this).text("Thanks for your feedback!");	
			$(this).css({'background':'#c4c4c4','color':'#fff'});
			$(this).off('click');
			
			$.ajax({
				url : "/wp-admin/admin-ajax.php",
				type: "post",
				data: $('#frm-feedbacks').serialize(),
				success:function(result){
					console.log('Success');
				}
			});
			return false;
		});
		
		$(window).resize(function(){	   
		    var h = $(document).height();   
		    $('.height').html(h);
		});
		$('body').addClass('new-thank-you new-thank-you2');
		$('#thanks-down-arrow').click(function(){
			  $("#number-of-people").toggleClass("number-of-people");
			  $(this).hide();
		});
	});	
</script>

<div class="thanks-header-logo">
<?php
	// Site title or logo.
	twentytwenty_site_logo();
	// Site description.
	twentytwenty_site_description();
?>
</div>
<div class="full-section">	
	<div class="half-section box">
		<div class="right-section yellow-right-section">
			
			<div class="w-80 m-auto">
				<h4 class="gray-big-txt">Thanks</h4>	
				<h3 class="yellow-big-txt"><?php echo $name; ?></h3>
				<div class="mt-30 txt-main">
					<p class="txt"><strong>You’re all set!</strong></p>
					<p class="mt-30 mb-30 middle-size-txt">Your orders have been sent through.
						<span class="black d-block">You will receive a confirmation of your order soon.</span>
					</p>
					
					<p class="gry-txt desktop">If you’d like to make any modifications to your order, kindly email your details to: <br/> 
						<a href="mailto:support@beanoshop.co" target="_top">support@beanoshop.co</a>
					</p>
				</div>
				<div class="">
					<div class="bottom-social absolute-btn desktop">
						<div class="float-left w-100">
							<p>Follow us on social media for the latest updates and promotions!</p>
							<ul>
								<li><a href="https://www.instagram.com/beano.shop/" target="_blank"><img src="<?php echo get_template_directory_uri();?>/assets/images/insta-icon.png"></a></li>
								<li><a href="https://facebook.com/thebeanoshop" target="_blank"><img src="<?php echo get_template_directory_uri();?>/assets/images/fb-icon.png"></a></li>			
							</ul>
						</div>
					</div>
				</div>
			</div>		
		</div>
	</div>	
	<div class="half-section box">
		<div class="thanks-new-right">
			<div class="thanks-new-right-inner">
				<div class="hidden-min-height">
					<div class="white-box">
						<div class="how-long"><p><span class="how-long-thanks">Calculate how long this bag of beans will last</span></p></div>
						<a class="thanks-down-arrow" id="thanks-down-arrow"><i class="arrow down"></i></a>
						<div class="number-of-people" id="number-of-people">	
							<form id="frm-reminder">
								<input type="hidden" name="preferred_bean" value="<?php echo $preferred_bean; ?>" />
								<input type="hidden" name="how_much" value="<?php echo $how_much ?>" />
								<input type="hidden" name="grounded_beans" value="<?php echo $grounded_beans ?>" />
								<input type="hidden" name="remarks" value="<?php echo $remarks; ?>" />
								<input type="hidden" name="customer_name" value="<?php echo $name; ?>" />
								<input type="hidden" name="customer_email" value="<?php echo $email; ?>" />
								<input type="hidden" name="customer_phone" value="<?php echo $phone; ?>" />
								<input type="hidden" name="cafe_name" value="<?php echo $cafe_name; ?>" />
								<input type="hidden" name="peoples" value="" />
								<input type="hidden" name="reorder_time" value="" />
								<input type="hidden" name="action" value="send_reminder" />

								<div class="middle-section">
									<div class="number-of-peoples half">
										<p class="mb-10 d-inline-block"><span class="desktop">Number</span><span class="mobile">No.</span> of people in your household</p>
										<span id="people-counter" class="people-counter press-btn"><span class="desktop-counter">0</span><span class="mobile-counter">Press Here</span></span>
									</div>

									<div class="half">
										<p class="mb-10">You will need to reorder in</p>
										<!--<p class="mb-10 sharing_bag">How many people will be sharing this bag?</p>
										<p class="mb-10 re_order_text">You will need to re-order in approximately </p>-->
										<span id="reorder-days" class="days">...</span>										
									</div>
								</div>
								<a class="btn yellow-btn" id="set-reminder">Set reminder notification</a>
							</form>
							
						</div>
						
					</div>
				</div>
				<div class="rating-section">
					<h4>How would you rate your experience?</h4>
					<ul class="rating-face">
						<li>
							<a data-rating-face='happy' class="rating_face">
								<img src="<?php echo get_template_directory_uri();?>/assets/images/icons8-sad-60.png">
							</a>
						</li>
						<li>
							<a data-rating-face='neutral' class="rating_face">
								<img src="<?php echo get_template_directory_uri();?>/assets/images/icons8-neutral-60.png">
							</a>
						</li>
						<li>
							<a data-rating-face='sad' class="rating_face">
								<img src="<?php echo get_template_directory_uri();?>/assets/images/icons8-happy-60.png">
							</a>
						</li>
					</ul>
					<div class="rating-input">
						<form id="frm-feedbacks">
							<input type="hidden" name="preferred_bean" value="<?php echo $preferred_bean; ?>" />
							<input type="hidden" name="how_much" value="<?php echo $how_much ?>" />
							<input type="hidden" name="grounded_beans" value="<?php echo $grounded_beans ?>" />
							<input type="hidden" name="remarks" value="<?php echo $remarks; ?>" />
							<input type="hidden" name="customer_name" value="<?php echo $name; ?>" />
							<input type="hidden" name="customer_email" value="<?php echo $email; ?>" />
							<input type="hidden" name="customer_phone" value="<?php echo $phone; ?>" />
							<input type="hidden" name="cafe_name" value="<?php echo $cafe_name; ?>" />
							<input type="hidden" name="action" value="send_review" />
							<input required placeholder="Let us know how we can improve" type="text" name="feedbacks" class="white-input" id="feedback-text">
							<a class="btn yellow-btn" id="submit-feedback">Submit feedback</a>
						</form>						
					</div>
				</div>
			</div>
		</div>

		<div class="mobile">
			<p class="gry-txt desktop">If you’d like to make any modifications to your order, kindly email your details to: <br/> 
				<a href="mailto:support@beanoshop.co" target="_top">support@beanoshop.co</a>
			</p>
			<div class="bottom-social absolute-btn desktop">
				<div class="float-left w-100">
						<ul>
							<li><a href="https://www.instagram.com/beano.shop/" target="_blank"><img src="<?php echo get_template_directory_uri();?>/assets/images/insta-icon.png"></a></li>
							<li><a href="https://facebook.com/thebeanoshop" target="_blank"><img src="<?php echo get_template_directory_uri();?>/assets/images/fb-icon.png"></a></li>			
						</ul>
				</div>
			</div>
		</div>


		<div class="mt-30">
			<a href="<?php echo $cafe_url ?>" class="b-homepage"><img src="<?php echo get_template_directory_uri();?>/assets/images/home-icon.png"></a>
		</div>
	</div>
</div>