<?php

    /////////////////////////////////////
    require_once "rutas.php";

    $ruta_cookie = new Rutas; 
    $ruta_cookie = Rutas::ruta_cookies();
    var_dump($ruta_cookie);
    /////////////////////////////////////

    $pagina = 2;
    setcookie("paginacion", $pagina, time() + 60 * 30, "/EvaluacionDocente");

    $cuestionario = 1;
    setcookie("cuestionario", $cuestionario, time() + 60 * 30, "/EvaluacionDocente");

    //if ($cuestionario == 0) {
    //    $cuestionario_curso = 3;
    //    setcookie("cuestionario_docente", $cuestionario_curso, time() + 60 * 30, "/EvaluacionDocente");
    //}

    header("Location:../index.php");