<?php
/**
 * beanoshop functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package beanoshop
 */

if ( ! defined( '_S_VERSION' ) ) {
	// Replace the version number of the theme on each release.
	define( '_S_VERSION', '1.0.0' );
}

/* Remove post type slug from the url */
function beano_remove_slug( $post_link, $post, $leavename ) {

    if ( 'cafes' != $post->post_type || 'publish' != $post->post_status ) {
        return $post_link;
    }

    $post_link = str_replace( '/' . $post->post_type . '/', '/', $post_link );

    return $post_link;
}
add_filter( 'post_type_link', 'beano_remove_slug', 10, 3 );

function beano_parse_request( $query ) {

    if ( ! $query->is_main_query() || 2 != count( $query->query ) || ! isset( $query->query['page'] ) ) {
        return;
    }

    if ( ! empty( $query->query['name'] ) ) {
        $query->set( 'post_type', array( 'cafes') );
    }
}
add_action( 'pre_get_posts', 'beano_parse_request' );

/* Remove post type slug from the url */

if ( ! function_exists( 'beanoshop_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function beanoshop_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on beanoshop, use a find and replace
		 * to change 'beanoshop' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'beanoshop', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus(
			array(
				'menu-1' => esc_html__( 'Primary', 'beanoshop' ),
			)
		);

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support(
			'html5',
			array(
				'search-form',
				'comment-form',
				'comment-list',
				'gallery',
				'caption',
				'style',
				'script',
			)
		);

		// Set up the WordPress core custom background feature.
		add_theme_support(
			'custom-background',
			apply_filters(
				'beanoshop_custom_background_args',
				array(
					'default-color' => 'ffffff',
					'default-image' => '',
				)
			)
		);

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support(
			'custom-logo',
			array(
				'height'      => 250,
				'width'       => 250,
				'flex-width'  => true,
				'flex-height' => true,
			)
		);
	}
endif;
add_action( 'after_setup_theme', 'beanoshop_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function beanoshop_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'beanoshop_content_width', 640 );
}
add_action( 'after_setup_theme', 'beanoshop_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function beanoshop_widgets_init() {
	register_sidebar(
		array(
			'name'          => esc_html__( 'Sidebar', 'beanoshop' ),
			'id'            => 'sidebar-1',
			'description'   => esc_html__( 'Add widgets here.', 'beanoshop' ),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);
}
add_action( 'widgets_init', 'beanoshop_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function beanoshop_scripts() {
	wp_enqueue_style( 'beanoshop-style', get_stylesheet_uri(), array(), _S_VERSION );
	wp_style_add_data( 'beanoshop-style', 'rtl', 'replace' );

	wp_enqueue_script( 'beanoshop-navigation', get_template_directory_uri() . '/js/navigation.js', array(), _S_VERSION, true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'beanoshop_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

add_action('wp_ajax_send_reminder','send_reminder_email');
add_action('wp_ajax_nopriv_send_reminder', 'send_reminder_email' );

function send_reminder_email(){
	$preferred_bean = !empty(trim(isset($_POST['preferred_bean']))) ? $_POST['preferred_bean'] : '';
	$how_much 		= !empty(trim(isset($_POST['how_much']))) ? $_POST['how_much'] : '';
	$grounded_beans = !empty(trim(isset($_POST['grounded_beans']))) ? $_POST['grounded_beans'] : '';
	$remarks        = !empty(trim(isset($_POST['remarks']))) ? $_POST['remarks'] : '';

	$name           = !empty(trim(isset($_POST['customer_name'])))  ? $_POST['customer_name'] : '';
	$email          = !empty(trim(isset($_POST['customer_email']))) ? $_POST['customer_email'] : '';
	$phone          = !empty(trim(isset($_POST['customer_phone']))) ? $_POST['customer_phone'] : '';

	$cafe_name 		= !empty(trim(isset($_POST['cafe_name']))) ? $_POST['cafe_name'] : '';
	
	$peoples       = !empty(trim(isset($_POST['peoples']))) ? $_POST['peoples'] : '';
	$re_order_time = !empty(trim(isset($_POST['reorder_time']))) ? $_POST['reorder_time'] : '';

	$body = 'Hello Admin,';
	$body .= '<br/><br/><strong>Name:</strong> '.$name;
	$body .= '<br/><br/><strong>Email:</strong> '.$email;
	$body .= '<br/><br/><strong>Phone number:</strong> '.$phone;
	$body .= '<br/><br/><strong>Name of bean:</strong> '.$preferred_bean;
	$body .= '<br/><br/><strong>Weight:</strong> '.$how_much;
	$body .= '<br/><br/><strong>Grind:</strong> '.$grounded_beans;
	$body .= '<br/><br/><strong>Remarks:</strong> '.$remarks;
	$body .= '<br/><br/><strong>Number of peoples:</strong> '.$peoples;
	$body .= '<br/><br/><strong>Re-order days:</strong> '.$re_order_time;
		
	$to = 'orders@beanoshop.co';
	$to_me = 'prakash.4689.vadher@gmail.com';
	$subject = $cafe_name.' - Reminder';		 

	// Always set content-type when sending HTML email
	//$headers = "MIME-Version: 1.0" . "\r\n";
	
	$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
	$headers .= 'From: '.$cafe_name.' <'.$email.'>' . "\r\n";	
		
	mail($to, $subject, $body, $headers);
	mail($to_me, $subject, $body, $headers);	
	exit;
}


add_action('wp_ajax_send_review','send_review_email');
add_action('wp_ajax_nopriv_send_review', 'send_review_email' );

function send_review_email(){
	// $preferred_bean = !empty(trim(isset($_POST['preferred_bean']))) ? $_POST['preferred_bean'] : '';
	// $how_much 		= !empty(trim(isset($_POST['how_much']))) ? $_POST['how_much'] : '';
	// $grounded_beans = !empty(trim(isset($_POST['grounded_beans']))) ? $_POST['grounded_beans'] : '';
	// $remarks        = !empty(trim(isset($_POST['remarks']))) ? $_POST['remarks'] : '';

	$name           = !empty(trim(isset($_POST['customer_name'])))  ? $_POST['customer_name'] : '';
	$email          = !empty(trim(isset($_POST['customer_email']))) ? $_POST['customer_email'] : '';
	$phone          = !empty(trim(isset($_POST['customer_phone']))) ? $_POST['customer_phone'] : '';

	$cafe_name 		= !empty(trim(isset($_POST['cafe_name']))) ? $_POST['cafe_name'] : '';	
	$feedbacks       = !empty(trim(isset($_POST['feedbacks']))) ? $_POST['feedbacks'] : '';

	$sessionID = session_id();
	$cart_data = $wpdb->get_results( "SELECT * FROM beano_custom_cart where session_id= '".$sessionID."' " );

	$body = 'Hello Admin,';
	$body .= '<br/><br/><strong>Name:</strong> '.$name;
	$body .= '<br/><br/><strong>Email:</strong> '.$email;
	$body .= '<br/><br/><strong>Phone number:</strong> '.$phone;

	// foreach($cart_data as $value){
	// 	$body .= '<br/>------------------------------------------------------------';
	// 	$body .= '<br/><strong>Item:</strong> '.$count++;
	// 	$body .= '<br/><strong>Name of bean:</strong> '.$value->preffered_bean;
	// 	$body .= '<br/><strong>Weight:</strong> '.$value->weight;
	// 	$body .= '<br/><strong>Grind:</strong> '.$value->grind;
	// 	$body .= '<br/><strong>Remarks:</strong> '.$value->remarks;
	// }
	// $body .= '<br/><br/>*******************************************';
	// $body .= '<br/><br/><strong>Name of bean:</strong> '.$preferred_bean;
	// $body .= '<br/><br/><strong>Weight:</strong> '.$how_much;
	// $body .= '<br/><br/><strong>Grind:</strong> '.$grounded_beans;
	// $body .= '<br/><br/><strong>Remarks:</strong> '.$remarks;
	$body .= '<br/><br/><strong>Feedbacks:</strong> '.$feedbacks;
		
	$to = 'orders@beanoshop.co';
	$to_me = 'prakash.4689.vadher@gmail.com';
	$subject = $cafe_name.' - Feedbacks';		 

	$headers = "MIME-Version: 1.0" . "\r\n";
	$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
	$headers .= 'From: '.$cafe_name.' <'.$email.'>' . "\r\n";		
	mail($to, $subject, $body, $headers);
	mail($to_me, $subject, $body, $headers);	
	exit;
}