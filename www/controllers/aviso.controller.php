<?php

    /////////////////////////////////////
    require_once "rutas.php";

    $ruta_cookie = new Rutas; 
    $ruta_cookie = Rutas::ruta_cookies();
    var_dump($ruta_cookie);
    /////////////////////////////////////

    $pagina = 3;
    setcookie("paginacion", $pagina, time() + 60 * 30, $ruta_cookie);

    header("Location:../index.php");