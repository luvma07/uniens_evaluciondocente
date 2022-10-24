<?php
    $pagina = 'curso1';
    setcookie("pagination", $pagina, time() + (86400 * 30), "/");

    header("location: ../index.php");