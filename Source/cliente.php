<?php
echo("<br><br><h2>Metodo 1</h2>");
$ci = curl_init();

curl_setopt( $ci, CURLOPT_URL, "http://dmdiart01/WSDMDI/WebServices.asmx/GetClientDataByAccountNumber" ); 
#curl_setopt( $ci, CURLOPT_URL, "http://dmdiart01/WSDMDI/WebServices.asmx/GetClientWebList" ); 
curl_setopt( $ci, CURLOPT_POST, true);
#curl_setopt( $ci, CURLOPT_POSTFIELDS, array(
#	'accountNumber' => '5'
#));
curl_setopt( $ci, CURLOPT_POSTFIELDS, 'accountNumber=5');
curl_setopt( $ci, CURLOPT_HEADER, false );
curl_setopt( $ci, CURLOPT_RETURNTRANSFER, 1 );

$result1 = curl_exec( $ci );


#var_dump($result1);

$xml = simplexml_load_string($result1, "SimpleXMLElement", LIBXML_NOCDATA);
#$xml = simplexml_load_string($result1);
$json = json_encode($xml);
$array = json_decode($json,TRUE);
echo '<pre>';
var_dump($array);
echo '</pre>';


######################################################################
#######################################################################
#############################################

?>