<?php


    /////////////////////////////////////
    require_once "rutas.php";

    $ruta_cookie = new Rutas; 
    $ruta_cookie = Rutas::ruta_cookies();
    var_dump($ruta_cookie);
    /////////////////////////////////////

    $pagina = 2;
    setcookie("paginacion", $pagina, time() + 60 * 30, $ruta_cookie);

    $cuestionario = 0;
    setcookie("cuestionario", $cuestionario, time() + 60 * 30, $ruta_cookie);

    if ($cuestionario == 0) {
        $cuestionario_curso = 2;
        setcookie("cuestionario_docente", $cuestionario_curso, time() + 60 * 30, $ruta_cookie);
    }

    header("Location:../index.php");