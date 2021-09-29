<?php /* Template name: Payment Process*/ ?>

<?php 
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
  error_log("Received a non-POST request");
  echo "Request not allowed";
  http_response_code(405);
  return;
}

$nonce = $_POST['nonce'];
if (is_null($nonce)) {
  echo "Invalid card data";
  http_response_code(422);
  return;
}

// $address = new \Square\Models\Address();
// $address->setAddressLine1('500 Electric Ave');
// $address->setAddressLine2('Suite 600');
// $address->setLocality('New York');
// $address->setAdministrativeDistrictLevel1('NY');
// $address->setPostalCode('10003');
// $address->setCountry('US');

$body = new \Square\Models\CreateCustomerRequest();
$body->setGivenName('Test1');
$body->setFamilyName('Ftest');
$body->setEmailAddress('test@example.com');
//$body->setAddress($address);
$body->setPhoneNumber('8745693210');
$body->setNote('This is a new customer created by me!');

$api_response = $api_client->getCustomersApi()->createCustomer($body);

$customer_id = '';

if ($api_response->isSuccess()) {
    $result = $api_response->getResult();
    $customer_id = $result->getCustomer()->getId();
} else {
    $errors = $api_response->getErrors();
    echo '<pre>';
    print_r($errors);
    exit;
}

$payments_api = $api_client->getPaymentsApi();

$money = new Money();
$money->setAmount(200);
$money->setCurrency('USD');

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

  $response = $payments_api->createPayment($body);
  
  if ($response->isError()) {
    $errors = $response->getErrors();
    print_r($errors);
    exit();
  }

  echo '<pre>';
  print_r($response->getBody());
  echo '</pre>';

}catch (ApiException $e) {
  echo 'Caught exception!<br/>';
  exit();
}

?>