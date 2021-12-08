<!DOCTYPE html>
<html lang="es">
<head>

	<meta charset="UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="title" content="UNIENS - Evaluacion Docente">
	<meta name="description" content="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam accusantium enim esse eos officiis sit officia">
	<meta name="keyword" content="Lorem ipsum, dolor sit amet, consectetur, adipisicing, elit, Quisquam, accusantium, enim, esse">

	<title>UNIENS - Evaluacion Docente</title>

	<!-- HOJAS DE ESTILO PERSONALIZADAS -->

	<link rel="stylesheet" href="views/css/login.css">

	<link rel="stylesheet" href="views/css/header.css">

	<link rel="stylesheet" href="views/css/menu.css">
	<link rel="stylesheet" href="views/css/content.css">
	<link rel="stylesheet" href="views/css/aviso.css">
	<link rel="stylesheet" href="views/css/app.css">
	<link rel="stylesheet" href="views/css/footer.css">

	
</head>

<body>

	<?php

	/*
	
	utilizar tres documentos de control en la carputa controller 
	para direccionar a tres enlases distintos a través de la página del menú.
	
	Estos documentos de control asignarán valores de manera automatica los 
	cuales serán enviados a través del metodo post al documento de template
	para manejar la páginación de los cuestionarios y de aviso a que un cuestinario 
	ya ha sido respondido. 
	
	*/


	require_once 'controllers/connection.php';
	require_once 'controllers/scrip_EncodeDecode.php';

	
	if(isset($_COOKIE["paginacion"])){
		//echo 'existe la cookie';
		$paginacion = $_COOKIE["paginacion"];
	} else {
		$paginacion = 0;
		//var_dump($paginacion);
	}
	
	if ($paginacion == 0) {
		//echo 'pagina de login';
		require_once "modules/login.php";
		require_once "modules/footer.php";
	}

	if ($paginacion == 1) {
		//echo 'pagina de menu';
		require_once "modules/header.php";
		require_once "modules/menu.php";
		require_once "modules/footer.php";
	}

	if ($paginacion == 2) {
		//echo 'pagina de Evaluacion docente 1';
		require_once "modules/header.php";
		require_once "modules/content.php";
		require_once "modules/footer.php";
	}

	if ($paginacion == 3) {
		//echo 'pagina de Evaluacion docente 1';
		require_once "modules/header.php";
		require_once "modules/aviso.php";
		require_once "modules/footer.php";
	}

	//echo 'Desde fuera';

/*
	$galleta1 = $_COOKIE["cookie1"]; 

	if(isset($galleta1)){
		$user_cookie = SED::decryption($galleta1);
		//var_dump($user_cookie);
	} 

	$galleta2 = $_COOKIE["cookie2"]; 

	if(isset($galleta1)){
		$pass_cookie = SED::decryption($galleta2);
		//var_dump($pass_cookie);
	}

	if(isset($user_cookie) && isset($pass_cookie)){

		//paigna 1 Cuestionario
		require_once "modules/header.php";
		require_once "modules/menu.php";
		//require_once "modules/content.php";

	} else {

		//pagina de login
		require_once "modules/login.php";
		require_once "modules/footer.php";

	}
*/
	?>



</body>
</html>