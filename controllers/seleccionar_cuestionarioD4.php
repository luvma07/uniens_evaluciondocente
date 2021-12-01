<?php

    $pagina = 2;
    setcookie("paginacion", $pagina, time() + 60 * 30, "/EvaluacionDocente");

    $cuestionario = 0;
    setcookie("cuestionario", $cuestionario, time() + 60 * 30, "/EvaluacionDocente");

    if ($cuestionario == 0) {
        $cuestionario_curso = 4;
        setcookie("cuestionario_docente", $cuestionario_curso, time() + 60 * 30, "/EvaluacionDocente");
    }

    header("Location:../index.php");