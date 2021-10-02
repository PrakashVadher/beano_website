<?php 

require_once( dirname( dirname( dirname( dirname( __FILE__ )))) . '/wp-load.php' );
require 'vendor/autoload.php';

use Square\Environment;
use Square\Exceptions\ApiException;
use Square\SquareClient;
use Square\Models\CreatePaymentRequest;
use Square\Models\Money;

$accessToken = SANDBOX_ACCESS_TOKEN;  //LIVE_APPLICATION_ID
$locationId  = SANDBOX_LOCATION_ID;     //LIVE_LOCATION_ID

// Initialize the Square client.
$api_client = new SquareClient([
  'accessToken' => $accessToken,
  'environment' => Environment::SANDBOX //LIVE
]);

if ($_SERVER['REQUEST_METHOD'] != 'POST') {
    $response = array(
        'status' => 'false',
        'message' => 'Request not allowed. Received a non-POST request.'
    );
    echo json_encode($response);
    exit;
}

$nonce = $_POST['nonce'];

// if (is_null($nonce)) {
//   echo "Invalid card data";
//   http_response_code(422);
//   return;
// }

// $address = new \Square\Models\Address();
// $address->setAddressLine1('500 Electric Ave');
// $address->setAddressLine2('Suite 600');
// $address->setLocality('New York');
// $address->setAdministrativeDistrictLevel1('NY');
// $address->setPostalCode('10003');
// $address->setCountry('US');

$customer_name        = trim($_REQUEST['customer_name']);
$customer_family_name = trim($_REQUEST['customer_name']);
$customer_email       = trim($_REQUEST['customer_email']);
$customer_phone       = trim($_REQUEST['customer_phone']);
$customer_notes       = "Beanoshop Customer";

$price    = $_REQUEST['cart-pri'];
$amount   = $price*100;
$currency = 'USD';

$body = new \Square\Models\CreateCustomerRequest();
$body->setGivenName($customer_name);
$body->setFamilyName($customer_family_name);
$body->setEmailAddress($customer_email);
//$body->setAddress($address);
$body->setPhoneNumber($customer_phone);
$body->setNote($customer_notes);

$api_response = $api_client->getCustomersApi()->createCustomer($body);

$customer_id = '';

if ($api_response->isSuccess()) {
    $result = $api_response->getResult();
    $customer_id = $result->getCustomer()->getId();
} else {
    $errors = $api_response->getErrors();
    $response = array(
        'status' => 'false',
        'message' => 'Erro: Enable to create a customer!'
    );
    echo json_encode($response);
    exit;
}

$payments_api = $api_client->getPaymentsApi();

$money = new Money();
$money->setAmount($amount);
$money->setCurrency($currency);

$body = new CreatePaymentRequest(
    $nonce, 
    uniqid(), 
    $money
);

// $app_fee_money = new \Square\Models\Money();
// $app_fee_money->setAmount(10);
// $app_fee_money->setCurrency('USD');

// $body->setAppFeeMoney($app_fee_money);

$body->setAutocomplete(true);
$body->setCustomerId($customer_id);
$body->setNote('Beano customer');

try{

    $result = $payments_api->createPayment($body);

    if ($result->isError()) {
        $errors = $result->getErrors();
        
        $response = array(
            'status' => 'false',
            'message' => 'Error: Payment failed!'
        );
        echo json_encode($response);
        exit();
    }

    /* Success */
    $payment_result = $result->getBody();

    if(!empty($payment_result)){

        $payment_array = json_decode($payment_result, true);

        global $wpdb;
        $tablename = 'beano_custom_orders'; 

        $wpdb->insert( $tablename, array(
            'payment_type'      => 'card',
            'customer_name'     => $customer_name, 
            'customer_email'    => $customer_email,
            'customer_phone'    => $customer_phone, 
            'discount'          => '',
            'coupan_code'       => '',
            'total'             => $price,
            'products'          => '',
            'payment_id'        => $payment_array['payment']['id'],
            'created_at'        => date('Y-m-d H:i:s'), 
            'updated_at'        => date('Y-m-d H:i:s')
        ) );

        $response = array(
            'status'  => 'true',
            'message' => 'Payment Success!',
            'last_id' => $wpdb->insert_id,
            'data'    => $payment_array['payment']
        );
        echo json_encode($response);
        exit();
    }
}catch (ApiException $e) {
    $response = array(
        'status' => 'false',
        'message' => 'Something went wrong!'
    );
    echo json_encode($response);
    exit();
}

?>