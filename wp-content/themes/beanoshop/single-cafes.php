<?php 

if ($_SERVER['REQUEST_METHOD'] != 'POST') {
    die('Invalid request!');
}

$order_type = $_REQUEST['order_type'];

require_once( dirname( dirname( dirname( dirname( __FILE__ )))) . '/wp-load.php' );

if(!isset($_REQUEST['field_action'])){
    session_start();
    session_destroy();
}

global $wp_query;
$postid = $wp_query->post->ID;
$address =  get_post_meta($postid, 'address', true);
wp_reset_query();

$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off')) ? "https://" : "http://";

$full_url = $protocol.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];

$cafe_short_url = parse_url($full_url);

$current_cafe_url = $cafe_short_url['path'];

$cafe_name = get_the_title();

$cafe_small_name = get_field('small_title');


if(isset($_REQUEST['field_action']) && $_REQUEST['field_action'] == 'add_to_cart'){
    session_start();
    $data = $_REQUEST;
    if(empty($_SESSION['carts'])){
        $_SESSION['carts'][0] = $data;
    }else{
        array_push($_SESSION['carts'], $data);
    }
    global $wpdb;
    $tablename = 'beano_custom_cart';    

    $preffered_bean = $_POST['field_preferred_bean'];
    $weight         =  $_POST['field_grams'];
    $grind          = $_POST['field_grounded_bean'];
    $price          = $_POST['field_price'];
    $remarks        = $_POST['field_remark'];
    $session_id     = session_id();
    
    $wpdb->insert( $tablename, array(
       'preffered_bean' => $preffered_bean, 
       'weight'         => $weight,
       'grind'          => $grind, 
       'price'          => $price,
       'remarks'        => $remarks,
       'session_id'     => session_id(), 
       'created_at'     => date('Y-m-d H:i:s'), 
       'updated_at'     => date('Y-m-d H:i:s')
    ) );
    echo session_id();
    exit();
}

if(isset($_REQUEST['action']) && $_REQUEST['action'] == 'get_cart_data'){
    session_start();
    $sessionID = session_id();
    $result = $wpdb->get_results( "SELECT * FROM beano_custom_cart where session_id= '".$sessionID."' " );
    echo json_encode($result);
    exit;
}

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

if(isset($_REQUEST['action']) && $_REQUEST['action'] == 'check_session'){
    session_start();
    $sessionID = session_id(); 
    $wpdb->get_results('SELECT * FROM beano_custom_cart WHERE session_id = "'.$sessionID.'" ');
    echo json_encode($wpdb->num_rows);
    exit;
}

?>
<!DOCTYPE html>
<html>
    <head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/css/new-style.css?ver=<?php echo rand(111,999)?>">
    <style type="text/css">
        .proceed-btn{display: none;}
        .cartModal{display:none;}
        .cart-body{display:none;}
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
    </head>
    <script src="<?php echo get_template_directory_uri();?>/js/jquery.min.js"></script>
    
    <script type="text/javascript">
        $(document).ready(function(){
            
             $.ajax({
                type: "post",
                dataType : 'json',
                data: {'action':'check_session'},
                success:function(result){
                    $('.counter').text(result);                    
                }
            }); 

            $('#proceed-order').click(function(){
                $('#proceed-order').prop('disabled', true);
                $(this).css({'pointer-events':'none'});
                $.ajax({
                    type: "post",
                    data: $('#frm-add-to-cart').serialize(),
                    success:function(result){
                        $("#checkout-form-data").submit();                      
                    }
                });
            });       

            $('body').on('click','.remove-product', function () {   
                $('#spinner').show();         
                cartId =  $(this).data('id');                
                $.ajax({
                    type: "post",
                    dataType : 'json',
                    data: {'action':'remove_product','cart_id': cartId},
                    success:function(result){
                        $('.counter').text(result);
                        $('body').removeClass('cart-modal-open'); 
                        $(".cart-modal-popup").toggleClass("cartModal");
                        $('#spinner').hide();
                    }
                });
            });

            $('.btn-add-to-cart').click(function(){
                $('.empty-cart-body').hide();
                $('.cart-body').show();
                cartCounter = $('.counter').text();
                $('.counter').text(parseInt(cartCounter)+1);
                $('.empty-cart-text').hide();
                $('.proceed-btn').hide();         
                
                // Footer values 
                $('#selected-preferred-blend').text('Blend');
                $('#selected-weight').text('Weight');
                $('#selected-grind').text('Grind');
                $('#selected-price').text('Price');
                $('.bottom-section').removeClass('active');

                $('.step-1').show();
                $('.step-2').hide();
                $('.step-3').hide();
                $('.step-4').hide();
                $('.step-5').hide();
                
                $.ajax({
                    type: "post",
                    data: $('#frm-add-to-cart').serialize(),
                    success:function(result){
                        console.log(result);
                        $('#session-id').val(result);                       
                        
                        // Clear hidden fields value in the form
                        $('#frm-add-to-cart input[type="hidden"]').val(''); 
                        $('#field-action').val('add_to_cart');                        
                    }
                });

            });

            $("#remarks").focusin(function() {
                $(this).removeAttr('placeholder');
            });

            $("#remarks").focusout(function() {
                if(!$(this).val()){
                    $(this).attr('placeholder','Write your remarks here...');
                }else{
                    $('#field-remark').val($(this).val());   
                }
                
            });

            $("#show-cart").click(function(){
                $(".cart-modal-popup").toggleClass("cartModal");                 
                if($(".cart-modal-popup").hasClass("cartModal")){
                    $('body').removeClass('cart-modal-open');
                    $('.img-cart-hide').removeClass('d-none');
                    $('.img-cart-open').addClass('d-none'); 
                    $('.cart').removeClass('active');
                }else{                    
                    $('#spinner').show();
                    $('body').addClass('cart-modal-open');                    
                    $('.img-cart-hide').addClass('d-none');
                    $('.img-cart-open').removeClass('d-none');
                    $('.cart').addClass('active');
                    $.ajax({
                        type: "post",
                        dataType : 'json',
                        data: {'action':'get_cart_data'},
                        success:function(result){                            
                           $('.checkout-items').remove();
                            console.log(result);
                            var subTotal = 0;
                            var count = 0
                            if(result.length > 0){
                                count = result.length;
                                $('.empty-cart-body').hide();
                                $('.empty-cart-text').hide();
                                $('.cart-body').show();
                                for (i = 0; i<result.length; i++) {
                                    subTotal = subTotal + parseFloat(result[i]['price']);
									var scrollbar_count = '';
									if(result.length > 2){
										if(!$('.cart-popup-items').hasClass('scrollbar-desktop-section')){
											$('.cart-popup-items').addClass('scrollbar-desktop-section');
										}										
									}else{
										if($('.cart-popup-items').hasClass('scrollbar-desktop-section')){
											$('.cart-popup-items').removeClass('scrollbar-desktop-section');
										}
									}
                                    $('.cart-popup-items').prepend(
                                    "<div class='float-left w-100 checkout-items remove-section'><div class='w-70 float-left text-left'><h3 class='title cart-title'>"+result[i]['preffered_bean']+"</h3><h4 class='sub-title cart-sub-title'>"+result[i]['grind']+"</h4><h5 class='grms cart-grams'>"+result[i]['weight']+"</h5><div class='float-left w-100'><a href='#' class='close remove-product with-icon' data-id='"+result[i]['id']+"'><img src='<?php echo get_template_directory_uri();?>/images/red-close.png' class='red-close float-left'> <span class='float-left'>Remove</span></a></div></div><div class='w-30 float-right text-right'><h3 class='price cart-price active'>$"+result[i]['price']+"</h3></div></div>");
                                }
                            }else{
                                $('.empty-cart-body').show();
                                $('.empty-cart-text').show();
                                $('.cart-body').hide();
                            }                      
                            $('#subtotal').text('$'+subTotal.toFixed(2));
                            $('.counter').text(count);
                            $('#spinner').hide();
                        }
                    });
                }
            });
            
            $('.close-cart-popup').click(function(){
                $(".cart-modal-popup").addClass("cartModal");
                $('body').removeClass('cart-modal-open');
                $('.img-cart-hide').removeClass('d-none');
                $('.img-cart-open').addClass('d-none'); 
                $('.cart').removeClass('active');
            });

            $('.step-2').hide();
            $('.step-3').hide();
            $('.step-4').hide();
            $('.step-5').hide();

            $("input[name = 'preferred_bean']").click(function(){                
                $('.bean').addClass('active');
                $('.step-1').hide();
                $('.step-2').show();
                $('.step-3').hide();
                $('.step-4').hide();
                $('.step-5').hide();
                $('#selected-preferred-blend').text($(this).val());
                $('#field-preferred-bean').val($(this).val());
            });

            $("input[name = 'how_much']").click(function(){
                $('.bean').addClass('active');
                $('.weight').addClass('active');                
                $('.step-1').hide();
                $('.step-2').hide();
                $('.step-3').show();
                $('.step-4').hide();
                $('.step-5').hide();
                $('#selected-weight').text($(this).val());
                $('#field-grams').val($(this).val());

                how_much = $(this).val();            
                str = $('input[name="preferred_bean"]:checked').val().toLowerCase();
                str = str.replace(/\s+/g,'_');
                str = str.split('.').join("");
                str = str+"_price_for_"+how_much;
                price = $('#'+str).val();
                $('#selected-price').text('$'+price);  

                $('#field-price').val(price);              
            });

            $("input[name = 'grounded_beans']").click(function(){
                $('.bean').addClass('active');
                $('.weight').addClass('active');  
                $('.ground').addClass('active');
                $('.price').addClass('active'); 
                $('.proceed-btn').show();             
                $('.step-1').hide();
                $('.step-2').hide();
                $('.step-3').hide();
                $('.step-4').show();
                $('.step-5').hide();
                $('#selected-grind').text($(this).val());
                $('#field-grounded-bean').val($(this).val());
            });       

            $('.back-to-preffered-bean').click(function(){
                $('.bean').removeClass('active');
                $('.price').removeClass('active');
                $('.proceed-btn').hide();
                $('.step-1').show();
                $('.step-2').hide();
                $('.step-3').hide();
                $('.step-4').hide();
                $('.step-5').hide();
                $('#selected-price').text($(this).val());
            });

            $('.back-to-weight').click(function(){
                $('.weight').removeClass('active');
                $('.price').removeClass('active');
                $('.proceed-btn').hide();
                $('.step-1').hide();
                $('.step-2').show();
                $('.step-3').hide();
                $('.step-4').hide();
                $('.step-5').hide();
            });

            $('.back-to-grind').click(function(){
                $('.ground').removeClass('active');
                $('.price').removeClass('active');
                $('.proceed-btn').hide();
                $('.step-1').hide();
                $('.step-2').hide();
                $('.step-3').show();
                $('.step-4').hide();
                $('.step-5').hide();
            });

        });
    </script>
    <body>
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
                            <h1><?php echo $cafe_name; ?> <span class="d-block"><?php echo $cafe_small_name; ?></span></h1>
                            <input type="hidden" name="session-id" id="session-id" value="">
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
                    <form method="post" id="frm-add-to-cart">
                        <input type="hidden" id="field-preferred-bean" name="field_preferred_bean" value="" />
                        <input type="hidden" id="field-grams" name="field_grams" value="" />
                        <input type="hidden" id="field-grounded-bean" name="field_grounded_bean" value="" />
                        <input type="hidden" id="field-price" name="field_price" value="" />
                        <input type="hidden" id="field-remark" name="field_remark" value="" />
                        <input type="hidden" id="field-action" name="field_action" value="add_to_cart" />
                    </form>
                </div>

                <!-- Step - 1 -->
                <div class="right-section step-1">
                    <div class="middle-right-part">
                        <h2 class="step-title">Step 1: <span>Select your preferred blend.</span></h2>
                        <div class="full-section half-btn-section">
                        <?php  
                        if( get_field('preferred_beans') ):
                            while( the_repeater_field('preferred_beans') ): ?>
                                <div class="col-50 float-left">
                                <div class="form-group">
                                    <input type="radio" id="<?php echo the_sub_field('bean_name'); ?>" name="preferred_bean" class="btns white-btn d-block preferred-bean" value="<?php echo the_sub_field('bean_name'); ?>">
                                    <label for="<?php echo the_sub_field('bean_name'); ?>" class="text-label">
                                        <?php echo the_sub_field('bean_name'); ?> 
                                        <span class="d-block small-txt"><?php echo the_sub_field('toppings'); ?></span>
                                    </label>
                                    <?php $bean_name = get_sub_field('bean_name');?>
                                      <input type="hidden" id="<?php echo str_replace('.','',str_replace(' ',"_",strtolower($bean_name)));?>_price_for_100g" name="price_for_100g" value="<?php echo the_sub_field('price_for_100g'); ?> ">
                                    
                                        <input type="hidden" id="<?php echo str_replace('.','',str_replace(' ',"_",strtolower($bean_name)));?>_price_for_200g" name="price_for_200g"  value="<?php echo the_sub_field('price_for_200g'); ?> ">
                                    
                                      <input type="hidden" id="<?php echo str_replace('.','',str_replace(' ',"_",strtolower($bean_name)));?>_price_for_250g" name="price_for_250g" value="<?php echo the_sub_field('price_for_250g'); ?> ">
                                    
                                      <input type="hidden" id="<?php echo str_replace('.','',str_replace(' ',"_",strtolower($bean_name)));?>_price_for_500g" name="price_for_500g" value="<?php echo the_sub_field('price_for_500g'); ?> ">
                                    
                                      <input type="hidden" id="<?php echo str_replace('.','',str_replace(' ',"_",strtolower($bean_name)));?>_price_for_1kg" name="price_for_1kg"  value="<?php echo the_sub_field('price_for_1kg'); ?> ">
                                </div>              
                                </div>
                            <?php endwhile;
                        endif; ?>                            
                        </div>
                        <div class="bottom-dotted-section">
                            <ul class="inner">
                                <li><a href="#">Weight</a></li>
                                <li><a href="#">Grind</a></li>
                                <li><a href="#">Remarks</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Step - 2 -->
                <div class="right-section steps step-2">                    
                    <div class="middle-right-part">
                        <div class="steps-name">
                            <a href="#" class="step-link back-to-preffered-bean">
                                <span class="arrow-slide left">
                                <img src="<?php echo get_template_directory_uri();?>/images/back.png">
                            </span>Blend</a>
                        </div>
                        <h2 class="step-title">Step 2: <span>How much would you like?</span></h2>
                        <div class="full-section half-btn-section step-two">
                        <?php 
                            if( get_field('weight') ):
                            while( the_repeater_field('weight') ): ?>
                                <div class="col-50 float-left">
                                    <div class="form-group">
                                        <input type="radio" id="<?php echo the_sub_field('weight'); ?>" name="how_much" class="btns white-btn d-block select-weight" value="<?php echo the_sub_field('weight'); ?>">
                                        <label for="<?php echo the_sub_field('weight'); ?>" class="text-label"><?php echo the_sub_field('weight'); ?> </label>
                                    </div>              
                                </div>
                            <?php endwhile;
                            endif; ?> 
                        </div>

                        <div class="bottom-dotted-section">
                            <ul class="inner">
                                <li><a href="#">Grind</a></li>
                                <li><a href="#">Remarks</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Step - 3 -->
                <div class="right-section steps step-3">                    
                    <div class="middle-right-part">
                        <div class="steps-name back-to-weight">
                            <a href="#" class="step-link"><span class="arrow-slide left">
                                <img src="<?php echo get_template_directory_uri();?>/images/back.png">
                                </span>Weight
                            </a>
                        </div>
                        <h2 class="step-title">Step 3: <span>Would you like the beans ground?</span></h2>
                        <div class="full-section half-btn-section">
							<div class="col-50 float-left w-100">
								<div class="form-group grounded-beans">
									<input type="radio" id="whole_beans" name="grounded_beans" class="btns white-btn d-block" value="Whole beans">
									<label for="whole_beans" class="text-label">Whole beans</label>
								</div>				
							</div>
                        <?php 
                        if( get_field('grind') ):
                            while( the_repeater_field('grind') ): ?>
                            <div class="col-50 float-left">
                                <div class="form-group grounded-beans">
                                    <input type="radio" name="grounded_beans" class="btns white-btn d-block select-grounded" value="<?php echo the_sub_field('name'); ?>" id="<?php echo the_sub_field('name'); ?>">
                                    <label for="<?php echo the_sub_field('name'); ?>" class="text-label">
                                        <?php echo the_sub_field('name'); ?></label>
                                </div>              
                            </div>
                            <?php endwhile;
                        	endif; ?> 
							<div class="col-50 float-left w-100">
								<div class="form-group grounded-beans">
									<input type="radio" id="others" name="grounded_beans" class="btns white-btn d-block" value="others">
									<label for="others" class="text-label">Others (Specify in remarks)</label>
								</div>				
							</div>
                        </div>
                        <div class="bottom-dotted-section">
                            <ul class="inner">
                                <li><a href="#">Remarks</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Step - 4 -->
                <div class="right-section steps step-4">                    
                    <div class="middle-right-part">
                        <div class="steps-name back-to-grind">
                            <a href="#" class="step-link"><span class="arrow-slide left">
                                <img src="<?php echo get_template_directory_uri();?>/images/back.png">
                            </span>Grind</a>
                        </div>
                        <h2 class="step-title">Optional: <span>Any remarks?</span></h2>
                        <div class="full-section half-btn-section">
                            <div class="float-left w-100">
                                <input type="text" class="remarks text-center" id="remarks" name="remarks" placeholder="Write your remarks here...">
                            </div>
                            <div class="add-another float-left w-100">
                                <span>Add Another Order<a href="#" type="button" class="add-btn btn-add-to-cart"><img src="<?php echo get_template_directory_uri();?>/images/add.png"></a></span>
                            </div>
                        </div>
                    </div>
                </div>

               
            </div>
        </div> 

        <div class="bottom-cart w-50">
            <div class="proceed-section w-100 proceed-btn">
                <a href="#" class="proceed-btn" id="proceed-order">Proceed</a>
            </div>
            <ul>
                <li class="cart bottom-section float-left">
                    <a href="#" class="show-cart" id="show-cart">
                        <span class="counter-main">
                            <img src="<?php echo get_template_directory_uri();?>/images/shopping-cart.png" class="img-cart-hide">
                            <img src="<?php echo get_template_directory_uri();?>/images/shopping-cart-white.png" class="img-cart-open d-none">
                            <span class="counter">0</span>
                        </span>
                    </a>
                </li>
                <li class="bean bottom-section float-left"><a href="#" id="selected-preferred-blend">Blend</a></li>
                <li class="weight bottom-section float-left"><a href="#" id="selected-weight">Weight</a></li>
                <li class="ground bottom-section float-left"><a href="#" id="selected-grind">Grind</a></li>
                <li class="price bottom-section float-left"><a href="#" id="selected-price">Price</a></li>
            </ul>
        </div>   

        <!-- Cart Popup -->        
        <div class="modal-popup cart-modal-popup cartModal">
            <div id="spinner"> <img src="<?php echo get_template_directory_uri();?>/images/spinner.gif"></div>
            <div class="modal-header">
                <h2>Cart</h2>    
                <p class="empty d-block empty-cart empty-cart-text">Your cart is empty</p>                
            </div>
            <div class="modal-body cart-body">
            <div class="cart-popup-items"></div>
            <p class="extra-txt">*Change any coffee bean order by removing the order and adding another order.</p>                
                <div class="main float-left w-100 sub-total-custom">
                    <div class="w-70 float-left text-left">
                        <h3 class="title">Subtotal</h3>
                        <i>(Paid upon pick-up)</i>
                    </div>
                    <div class="w-30 float-right text-right">
                        <h3 class="price subtotal" id="subtotal"></h3>
                    </div>
                </div>
                <div class="float-left w-100">
                    <a href="#" class="close float-left close-cart-popup">
                        <img src="<?php echo get_template_directory_uri();?>/images/close.png">
                    </a>
                    <form method="POST" action="<?php echo site_url();?>/buyer-details/" id="checkout-form-data">
                        <input type="hidden" name="cafe_name" value="<?php echo $cafe_name; ?>" id="cafe-title" />
                        <input type="hidden" name="cafe_small_name" value="<?php echo $cafe_small_name;?>" id="cafe-sub-title" />
                        <input type="hidden" name="cafe_url" value="<?php echo $current_cafe_url;?>" id="cafe-url" />
                        <input type="hidden" name="action" value="submit" />
                        <input type="hidden" id="order-type" name="order_type" value="<?php echo $order_type;?>" />
                        <button type="submit" class="checkout-btn d-inline-block" style="background: #28324b;">Checkout</button>
                    </form>
                </div>
            </div>
            <div class="modal-body empty-cart-body">
                <div class="main float-left w-100">
                    <div class="w-70 float-left text-left">
                        <h3 class="title">Subtotal</h3>
                        <i>(Paid upon pick-up)</i>
                    </div>
                    <div class="w-30 float-right text-right">
                        <h3 class="price">$0</h3>
                    </div>
                </div>
                <div class="float-left w-100">
                    <a href="#" class="close float-left close-cart-popup"><img src="<?php echo get_template_directory_uri();?>/images/close.png"></a>
                    <a href="#" class="checkout-btn d-inline-block">Checkout</a>
                </div>
            </div>
        </div>
    </body>
</html>