<?php

    $pagina = 3;
    setcookie("paginacion", $pagina, time() + 60 * 30, "/EvaluacionDocente");

    header("Location:../index.php");