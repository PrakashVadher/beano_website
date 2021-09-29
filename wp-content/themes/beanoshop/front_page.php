<?php  /* Template name: Temp Front Page */  ?>
<?php 
if(isset($_REQUEST['action']) && $_REQUEST['action'] == 'sendEmail'){
	$body = 'Hello Admin,';
	$body .= '<br/><br/><strong>Name:</strong> '.$_REQUEST['email'];
	
	$to = 'orders@beanoshop.co';
	$to_me = 'prakash.4689.vadher@gmail.com';
	$subject = 'Homepage Mailing List Subscription';		 
	$headers = "MIME-Version: 1.0" . "\r\n";
	$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
	$headers .= 'From: <'.$email.'>' . "\r\n";
	mail($to, $subject, $body, $headers);
	mail($to_me, $subject, $body, $headers);
	exit('done');
}

?>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" >
<link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/assets/css/slider.css?ver=<?php echo rand(111,999)?>">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/assets/js/jquery.flexslider-min.js"></script>
<script type="text/javascript" charset="utf-8">
    var $ = jQuery.noConflict();
    $(window).load(function() {
    	$('.flexslider').flexslider({
       		animation: "fade"
    	}); 
  	});
	
	function showButton(){
		$("#email").removeAttr('placeholder');
		$('#submit').show();
	}
	
	$(document).ready(function(){
		if ($(window).width() < 767) {
		   $("#email").attr("placeholder", "(Enter your email address here)");
		}			
		$('#submit').click(function(){
			$('#submit').text('Thanks!');
			$('.msg_touch').show();
			$('.green_tick').show();
			$('#submit').css({'background': '#9d9d9d','color': '#fff','pointer-events': 'none'});
			email = $('#email').val();
			$.ajax({			
				type: "post",
				data: {email:email,action:'sendEmail'},
				success:function(result){
				}
			});
		});
	});
</script>

<div class="slider_container">
        <div class="flexslider">
          <ul class="slides">
          <li>
                <img src="<?php echo get_template_directory_uri();?>/assets/images/slider/slide1.png" alt="" title="" class="main-image" />
                <div class="flex-caption">
                    <div class="logo-section-new"><a href="#"><img src="<?php echo get_template_directory_uri();?>/assets/images/beano_logo_yellow.png"></a></div>
                    <div class=" slide-1 slide-bg"></div>
                </div>
            </li> 

            <li>
               <img src="<?php echo get_template_directory_uri();?>/assets/images/slider/slide2.png" alt="" title="" class="main-image" />
                <div class="flex-caption">
                    <div class="logo-section-new"><a href="#"><img src="<?php echo get_template_directory_uri();?>/assets/images/beano_logo_white.png"></a></div>
                    <div class=" slide-2 slide-bg"></div>
                </div>
            </li>

        <li>
                <img src="<?php echo get_template_directory_uri();?>/assets/images/slider/slide3.png" alt="" title="" class="main-image" />
                <div class="flex-caption">
                    <div class="logo-section-new"><a href="#"><img src="<?php echo get_template_directory_uri();?>/assets/images/beano_logo_white.png"></a></div>
                    <div class=" slide-3 slide-bg"></div>
                </div>
            </li> 
        </ul>
      </div>
</div>

<div class="left-side-section-temp">
    <h2 class="hello-txt">Oh hello there.</h2>
    <h4 class="y-early-txt">You’re early!</h4>
    <p>We are almost ready to open</p>
    <h6 class="join-txt">Join our mailing list to stay up to date with all our adventures.</h6>
    <div class="form">
        <label>Email Address</label>
        <input type="text" class="" id="email" onfocus="showButton()">
		<img class="green_tick" src="<?php echo get_template_directory_uri();?>/assets/images/green_tick.png">
        <button class="yello-btn btn" id="submit">Submit</button>
		<h3 class="msg_touch">We'll be in touch!</h3>
    </div>
</div>

<div class="social-footer-temp">
	<a href="mailto:hello@beanoshop.co" target="_top">hello@beanoshop.co</a>
<ul>
							<li><a href="https://www.instagram.com/beano.shop/" target="_blank">
								<img src="<?php echo get_template_directory_uri();?>/assets/images/insta-icon.png"></a></li>
							<li><a href="https://facebook.com/thebeanoshop" target="_blank">
								<img src="<?php echo get_template_directory_uri();?>/assets/images/fb-icon.png"></a>
	</li>			
						</ul>
</div>
