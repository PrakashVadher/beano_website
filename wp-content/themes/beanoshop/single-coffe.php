<?php 
session_start();
session_destroy();

get_header(); 

global $wp_query;
$postid = $wp_query->post->ID;
$address =  get_post_meta($postid, 'address', true);
wp_reset_query();

$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off')) ? "https://" : "http://";

$full_url = $protocol.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];

$cafe_short_url = parse_url($full_url);

$current_cafe_url = $cafe_short_url['path'];
?>

<script type="text/javascript">
    $(document).ready(function() {
        $('body').addClass('new-cafe');
        $('#beano-selection').submit(function(){                        
            preferred_bean = $("input[name='preferred_bean']:checked").val();
            weight = $("input[name='how_much']:checked").val();
            grounded_beans = $("input[name='grounded_beans']:checked").val();
            other_amount = $('#other_amount').val();
            grinder_setting = $('#grinder-setting').val();

            if(preferred_bean == undefined){
                alert('Please select a preferred bean');
                return false;
            }
            if(weight == undefined && other_amount == false){
                alert('Please select a weight');
                return false;
            }
            if(grounded_beans == undefined && grinder_setting == false){
                alert('Please select a grounded bean');
                return false;
            }
        });
        
        var preferred_bean_equal_height = 0;
        $('.preferred-plan').each(function() {
            if(preferred_bean_equal_height < $(this).outerHeight()){
                preferred_bean_equal_height = $(this).outerHeight();
            };
        });

        $(".preferred-plan").height(preferred_bean_equal_height);

        $('.other-amount').click(function(){        
            $('.how-much').removeClass("active");
            $('input[name="how_much"]').prop('checked', false);     
            $('.other-amount').css({'background':'#28324a','color':'#fff','border': 'transparent'});
            $('#other_amount').val('true');
        });

        $('.grinder-setting').click(function(){
            $('input[name="grounded_beans"]').prop('checked', false);
            $('.grounded-beans').removeClass("active"); 
            $('.grinder-setting').css({'background':'#28324a','color':'#fff'});
            $('#grinder-setting').val('true');
            $('#ground').text('Other Grinder');
        });

        $('.preferred-bean').click(function() {
            if($('.how-much').hasClass('active') == true){
                how_much = $('input[name="how_much"]:checked').val();
                str = $('input[name="preferred_bean"]:checked').val().toLowerCase();
                str = str.replace(/\s+/g,'_');
                str = str+"_price_for_"+how_much;
                price = $('#'+str).val();
                $('#price').text('$'+price);
                $('#bean_price').val(price);
            }
            $('.preferred-plan').removeClass("active");
            $('input[name="preferred-bean"]').prop('checked', false);     
            $(this).parent().addClass("active");
            $('#bean').text($(this).val());
                      
        });

        $('.select-weight').on('click',function(){
            $('#weight').text($(this).val());           
        });

        $('input[type=radio][name=how_much]').change(function() {   
            how_much = $(this).val();            
            str = $('input[name="preferred_bean"]:checked').val().toLowerCase();
            str = str.replace(/\s+/g,'_');
            str = str+"_price_for_"+how_much;
            price = $('#'+str).val();
            $('#price').text('$'+price);
            $('#bean_price').val(price);

            $('.how-much').removeClass("active");   
            $('.other-amount').removeAttr("style");
            $('#other_amount').val('false');
            $(this).parent().addClass("active");
        });
        
        $('input[type=radio][name=grounded_beans]').change(function() {
            $('#ground').text($(this).val());         
            $('.grounded-beans').removeClass("active"); 
            $('.grinder-setting').removeAttr("style");
            $('#grinder-setting').val('false');
            $(this).parent().addClass("active");
        });
    }); 
    
    $(document).ready(function(){   
          $(window).resize(function(){     
                var h = $(document).height();   
                $('.height').html(h);
          });
    });     
</script>
<div class="full-section">  
    <div class="half-section">
        <div class="bottom-cart w-50">
        <ul>
            <li class="bean bottom-section float-left"><a id="bean" href="#">bean</a></li>
            <li class="weight bottom-section float-left"><a id="weight" href="#">Weight</a></li>
            <li class="ground bottom-section float-left"><a id="ground" href="#">Ground</a></li>
            <li class="price bottom-section float-left"><a id="price" href="#">Price</a></li>
        </ul>
    </div>
        <div class="half-section-inner">
            <div class="section-title">
                <h2><?php the_title(); ?></h2>
                <p><?php echo $address; ?></p>
            </div>
            <div class="image-box">
                <?php if(get_the_ID() == '72'):?>
                <div class="image-box-inner">
                    <div class="custom-title">
                        <h6>Types of beans</h6>
                    </div>  
                    <div class="full-section">
                        <div class="image-section-main">
                            <div class="image-section">
                                <img src="<?php echo get_template_directory_uri();?>/assets/images/grounding-service.png">
                                <p>Grounding service</p>
                            </div>  
                            <div class="image-section">
                                <img src="<?php echo get_template_directory_uri();?>/assets/images/whole-beans.png">
                                <p>Whole beans</p>
                            </div>  
                        </div>
                    </div>
                </div>
                <div class="image-box-inner last">
                    <div class="custom-title">
                        <h6>Frequency</h6>
                    </div>  
                    <div class="full-section">
                        <div class="image-section-main">
                            <div class="image-section">
                                <img src="<?php echo get_template_directory_uri();?>/assets/images/days.png">
                                <p>Restocks</p>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endif; ?>
            </div>  
        </div>
    </div>
    
<div class="down-arrow"><img src="<?php echo get_template_directory_uri();?>/assets/images/down-arrow.png" class="arrow-img"></div>
    
    <div class="half-section box">
        <form method="post" action="<?php echo site_url();?>/coffe-details/" id="beano-selection">
            <input type="hidden" name="cafe_name" value="<?php the_title(); ?>">
            <input type="hidden" name="cafe_address" value="<?php echo $address; ?>">
            <div class="right-section text-center">
                <a  class="btns yellow-btn gry-btn w-60 m-auto mb-10 pointer-none">Please select your preferred bean.</a>
<!--                  <p>Feel free to select <i>MORE THAN ONE</i></p>                -->
                <div class="full-section half-btn-section">                    
                   <?php  
                    if( get_field('preferred_beans') ):
                         while( the_repeater_field('preferred_beans') ): ?>
                            <div class="col-50 float-left">
                                <div class="form-group preferred-plan">
                                    <input type="radio" id="<?php echo the_sub_field('bean_name'); ?>" name="preferred_bean" class="btns white-btn d-block preferred-bean" value="<?php echo the_sub_field('bean_name'); ?>">
                                      <label for="<?php echo the_sub_field('bean_name'); ?>"><?php echo the_sub_field('bean_name'); ?> 
                                        <span class="d-block small-txt"><?php echo the_sub_field('toppings'); ?></span>
                                      </label>
                                      <?php $bean_name = get_sub_field('bean_name');?>
                                      <input type="hidden" id="<?php echo str_replace(' ',"_",strtolower($bean_name));?>_price_for_100g" name="price_for_100g" value="<?php echo the_sub_field('price_for_100g'); ?> ">

                                      <input type="hidden" id="<?php echo str_replace(' ',"_",strtolower($bean_name));?>_price_for_250g" name="price_for_250g" value="<?php echo the_sub_field('price_for_250g'); ?> ">
                                      <input type="hidden" id="<?php echo str_replace(' ',"_",strtolower($bean_name));?>_price_for_500g" name="price_for_500g" value="<?php echo the_sub_field('price_for_500g'); ?> ">
                                      <input type="hidden" id="<?php echo str_replace(' ',"_",strtolower($bean_name));?>_price_for_1kg" name="price_for_1kg"  value="<?php echo the_sub_field('price_for_1kg'); ?> ">
                                </div>
                            </div>
                        <?php endwhile;
                    endif; ?>
                </div>

                <a  class="btns yellow-btn gry-btn w-60 m-auto mb-10 d-inline-block mt-30 how-much-btn pointer-none">How much would you like?</a>
                <div class="full-section half-btn-section">
                    <?php 
                    if( get_field('weight') ):
                         while( the_repeater_field('weight') ): ?>
                            <div class="col-50 float-left">
                                <div class="form-group how-much">
                                    <input type="radio" id="<?php echo the_sub_field('weight'); ?>" name="how_much" class="btns white-btn d-block select-weight" value="<?php echo the_sub_field('weight'); ?>">
                                      <label for="<?php echo the_sub_field('weight'); ?>"><?php echo the_sub_field('weight'); ?> </label>
                                </div>
                            </div> 
                        <?php endwhile;
                    endif; ?> 

<!--                     <div class="col-100 float-left">
                        <a  class="btns white-btn d-block other-amount"><strong>Other amounts. (Please specify in remarks section)</strong></a>
                        <input type="hidden" name="other_amount" value="" id="other_amount">
                    </div> -->

                </div>
                <a  class="btns yellow-btn gry-btn w-60 m-auto mb-30 d-inline-block mt-30 like-beans pointer-none">Would you like your beans to be grounded?</a>
                <div class="full-section half-btn-section img-sect">
                    
                    <div class="float-left w-100 mb-10">
                        <div class="form-group grounded-beans mlr-0">
                            <input type="radio" name="grounded_beans" class="btns white-btn d-block" value="Whole Beans" id="Whole-Beans">
                            <label for="Whole-Beans">
                                Whole Beans
                                <div class="hover-txt">
                                    <span class="hover-txt-inner">Whole Beans</span>
                                </div>
                            </label>
                        </div>
                    </div>
                    <?php 
                    if( get_field('grind') ):
                        while( the_repeater_field('grind') ): ?>
                            <div class="col-25 float-left">
                                <div class="form-group grounded-beans">
                                    <input type="radio" name="grounded_beans" class="btns white-btn d-block select-grounded" value="<?php echo the_sub_field('name'); ?>" id="<?php echo the_sub_field('name'); ?>">
                                    <label for="<?php echo the_sub_field('name'); ?>">
                                        <img src="<?php echo the_sub_field('image'); ?>">
                                        <div class="hover-txt">
                                            <span class="hover-txt-inner"><?php echo the_sub_field('name'); ?></span>
                                        </div>
                                    </label>
                                </div>
                            </div>
                        <?php endwhile;
                    endif; ?> 

                    <div class="col-100 float-left">                        
                        <a  class="btns white-btn d-block grinder-setting">
                            <strong>Any other grinder settings. (Specify in remarks section)</strong>
                        </a>
                        <input type="hidden" name="grinder_setting" value="" id="grinder-setting">
                    </div>

                </div>
                <a  class="btns yellow-btn gry-btn w-60 m-auto mb-10 d-inline-block mt-30 remarks pointer-none">Remarks</a>
                <div class="mb-10"></div>
                
                <input type="text" class="btns gray-btn m-auto mb-10" id="remarks" name="remarks" placeholder="Write your remarks here...">

                <div class="full-section relative-class">
                    <input type="hidden" name="bean_price" id="bean_price">
                    <input type="hidden" name="cafe_url" value="<?php echo $current_cafe_url;?>">
                    <input type="hidden" name="action" value="submit" class="btns red-btn m-auto d-block detail-btn">
                    <input type="hidden" name="post_id" value="<?php echo get_the_ID();?>">
                    <input type="submit" name="submit" value="Proceed" class="btns red-btn-new m-auto d-block detail-btn red-btn absolute-btn">
                </div>

            </div>
        </form>
    </div>  

</div>