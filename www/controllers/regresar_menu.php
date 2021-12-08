<?php 

    require_once 'connection.php';
    require_once 'scrip_EncodeDecode.php';

    /////////////////////////////////////
    require_once "rutas.php";

    $ruta_cookie = new Rutas; 
    $ruta_cookie = Rutas::ruta_cookies();
    var_dump($ruta_cookie);
    /////////////////////////////////////

    $pagina = 1;
    setcookie("paginacion", $pagina, time() + 60 * 30, $ruta_cookie);

    //echo 'Hola';

    if (isset($_COOKIE['cookie1'])) {
        $cookie1 = $_COOKIE['cookie1'];
        $valor_user = SED::decryption($cookie1);
    }
    if (isset($_COOKIE['cookie2'])) {
        $cookie2 = $_COOKIE['cookie2'];
        $valor_pass = SED::decryption($cookie2);
    }

    $table = 'estudiantes';
    $item_user = 'usuario';
    $item_pass = 'password';  
    
    //Consultar estudiante

    $stmt = $conectar -> prepare("SELECT * FROM $table WHERE $item_user = :$item_user AND $item_pass = :$item_pass");
    $stmt -> bindParam(":$item_user", $valor_user, PDO::PARAM_STR);
    $stmt -> bindParam(":$item_pass", $valor_pass, PDO::PARAM_STR);
    $stmt -> execute();
    $result = $stmt -> fetch();

    var_dump($result);

    setcookie("status_curso1", $result["status_curso1"], time() + 60 * 30, $ruta_cookie);
    setcookie("status_curso2", $result["status_curso2"], time() + 60 * 30, $ruta_cookie);
    setcookie("status_curso3", $result["status_curso3"], time() + 60 * 30, $ruta_cookie);
    setcookie("status_servicios", $result["status_servicios"], time() + 60 * 30, $ruta_cookie);
    setcookie("status_instalaciones", $result["status_instalaciones"], time() + 60 * 30, $ruta_cookie);

    header("Location:../index.php");

