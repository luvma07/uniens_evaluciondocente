<?php

require_once 'controllers/connection.php';
require_once 'controllers/scrip_EncodeDecode.php';

$galleta1 = $_COOKIE["nombre_completo"]; 

	if(isset($galleta1)){
		$user_name = $galleta1;
	} 

echo ' <div class="header">

            <div class="logo">
                <img class="img_logo" src="views/img/UniEns_logo_1t_Blanco.png">
            </div>

            <div class="user_card">
                <div class="container">
                    <div class="items">
                        <img class="img_user" src="views/css/icons/account_circle.svg">
                    </div>
                    <div class="items">
                        '.$user_name.'  
                    </div>
                    <div class="items">
                        Estudiante
                    </div>
                </div>
            </div>

            </div>  ';


?>

