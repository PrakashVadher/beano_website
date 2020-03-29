<?php 

/* Template name: Buyer */


$to = 'ppvadher@gmail.com';
$subject = 'The subject';
$body = 'The email body content';
$headers = array('Content-Type: text/html; charset=UTF-8');
 
$res = wp_mail($to, $subject, $body, $headers );
echo $res;
?>