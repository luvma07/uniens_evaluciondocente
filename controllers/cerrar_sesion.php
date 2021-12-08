<h1>Cerrar Sesión</h1>

<?php

    /////////////////////////////////////
    require_once "rutas.php";

    $ruta_cookie = new Rutas; 
    $ruta_cookie = Rutas::ruta_cookies();
    var_dump($ruta_cookie);
    /////////////////////////////////////

setcookie("cookie1", $cookie1, time() - 60, $ruta_cookie);
setcookie("cookie2", $cookie1, time() - 60, $ruta_cookie);
setcookie("cuestionario_docente", $cookie1, time() - 60, $ruta_cookie);
setcookie("cuestionario", $cookie1, time() - 60, $ruta_cookie);
setcookie("curso_1", $cookie1, time() - 60, $ruta_cookie);
setcookie("cookie2", $cookie1, time() - 60, $ruta_cookie);
setcookie("cookie3", $cookie1, time() - 60, $ruta_cookie);
setcookie("docente_curso1", $cookie1, time() - 60, $ruta_cookie);
setcookie("docente_curso2", $cookie1, time() - 60, $ruta_cookie);
setcookie("docente_curso3", $cookie1, time() - 60, $ruta_cookie);
setcookie("nombre_completo", $cookie1, time() - 60, $ruta_cookie);
setcookie("paginacion", $cookie1, time() - 60, $ruta_cookie);
setcookie("status_curso1", $cookie1, time() - 60, $ruta_cookie);
setcookie("status_curso2", $cookie1, time() - 60, $ruta_cookie);
setcookie("status_curso3", $cookie1, time() - 60, $ruta_cookie);
setcookie("status_instalaciones", $cookie1, time() - 60, $ruta_cookie);
setcookie("status_servicios", $cookie1, time() - 60, $ruta_cookie);

setcookie("phpMyAdmin", $cookie1, time() - 60, $ruta_cookie);
setcookie("pma_lang", $cookie1, time() - 60, $ruta_cookie);

header("Location:../index.php");