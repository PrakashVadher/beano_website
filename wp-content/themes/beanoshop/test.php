<?php 
/* Template name: Test */
get_header(); ?>

<div class="full-section home-page-sections">
	<div class="slide-section small-img-section" id="home-left-section">
		<img src="<?php echo get_template_directory_uri();?>/assets/images/Merchant_Background.gif" class="main-section gif-img" style="width: initial; object-fit: inherit;">
		<div class="overlapping overlapping-left">
			<h3 class="text-section">Owns<br/>or<br/>Manages<br/>A Cafe?</h3>
			
		</div>
	</div>
	<div class="slide-section big-img-section" id="home-right-section">
		<img src="<?php echo get_template_directory_uri();?>/assets/images/right-side-image.jpg" class="main-section">
		<div class="overlapping overlapping-right">
			<h3 class="text-section">Support <br/>Your <br/>Local <br/>Cafe.</h3>
			
		</div>
	</div>	
	</div>	
<a href="#" class="btns yellow-btn w-40 custom-btn">Find out more</a>
<script>
	$(document).ready(function() {
		$('#home-left-section').hover(function(){
			if($(this).hasClass('small-img-section')){
				$(".yellow-btn").animate({left: '35px'},100);
			    $(this).removeClass('small-img-section');
				$('#home-right-section').removeClass('big-img-section');
				$('#home-right-section').addClass('small-img-section');
				$(this).addClass('big-img-section');				
			}			
		});
		
		$('#home-right-section').hover(function(){
			if($(this).hasClass('small-img-section')){
				width = $(window).width() - 280;
				$(".yellow-btn").animate({left: width},100);
			    $(this).removeClass('small-img-section');
				$('#home-left-section').removeClass('big-img-section');
				$('#home-left-section').addClass('small-img-section');
				$(this).addClass('big-img-section');				
			}			
		});		
	});
</script>
