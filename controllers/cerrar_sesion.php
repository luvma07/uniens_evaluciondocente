<h1>Cerrar Sesión</h1>

<?php

setcookie("cookie1", $cookie1, time() - 60, "/EvaluacionDocente");
setcookie("cookie2", $cookie1, time() - 60, "/EvaluacionDocente");
setcookie("cuestionario_docente", $cookie1, time() - 60, "/EvaluacionDocente");
setcookie("cuestionario", $cookie1, time() - 60, "/EvaluacionDocente");
setcookie("curso_1", $cookie1, time() - 60, "/EvaluacionDocente");
setcookie("cookie2", $cookie1, time() - 60, "/EvaluacionDocente");
setcookie("cookie3", $cookie1, time() - 60, "/EvaluacionDocente");
setcookie("docente_curso1", $cookie1, time() - 60, "/EvaluacionDocente");
setcookie("docente_curso2", $cookie1, time() - 60, "/EvaluacionDocente");
setcookie("docente_curso3", $cookie1, time() - 60, "/EvaluacionDocente");
setcookie("nombre_completo", $cookie1, time() - 60, "/EvaluacionDocente");
setcookie("paginacion", $cookie1, time() - 60, "/EvaluacionDocente");
setcookie("status_curso1", $cookie1, time() - 60, "/EvaluacionDocente");
setcookie("status_curso2", $cookie1, time() - 60, "/EvaluacionDocente");
setcookie("status_curso3", $cookie1, time() - 60, "/EvaluacionDocente");
setcookie("status_instalaciones", $cookie1, time() - 60, "/EvaluacionDocente");
setcookie("status_servicios", $cookie1, time() - 60, "/EvaluacionDocente");

setcookie("phpMyAdmin", $cookie1, time() - 60, "/EvaluacionDocente");
setcookie("pma_lang", $cookie1, time() - 60, "/EvaluacionDocente");

header("Location:../index.php");