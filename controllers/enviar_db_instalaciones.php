<h1>INSTALACIONES DB</h1>

<?php

    require_once 'connection.php';
    require_once 'scrip_EncodeDecode.php';

    $respuestas = []; 

    for ($i=1; $i <= 26; $i++) { 
        
        $pregunta = 'Pregunta_'.$i.'';
        $pregunta_valor = $_POST[$pregunta];

        $respuestas += [$pregunta => $pregunta_valor];
        
    }

    $comentario = $_POST["comentarios"];
    $respuestas += ["comentario" => $comentario];

    echo '<br>';
    $cuestionario_resuelto = json_encode($respuestas);
    var_dump($respuestas);
    echo '<br>';
    var_dump($cuestionario_resuelto);
    
    //Insertar cuestionario en base de datos INSTALACIONES

    $table = 'instalaciones';
    $item = 'cuestionario'; 
    $value = 'respuestas';

    $stmt = $conectar -> prepare("INSERT INTO $table ($item) VALUES (:$value)");
    $stmt -> bindParam(":$value", $cuestionario_resuelto, PDO::PARAM_STR);
    $stmt -> execute();

    //Cambiar estado de cuestionario DB

    $tabla = 'estudiantes';
    $columna = 'status_instalaciones';
    $col_user = 'usuario';
    $col_pass = 'password';

    if (isset($_COOKIE['cookie1'])) {
        $cookie1 = $_COOKIE['cookie1'];
        $usuario = SED::decryption($cookie1);
    }

    if (isset($_COOKIE['cookie2'])) {
        $cookie2 = $_COOKIE['cookie2'];
        $password = SED::decryption($cookie2);
    }

    $stmt = $conectar -> prepare("UPDATE $tabla SET $columna=1 WHERE $col_user=:$col_user AND $col_pass=:$col_pass");
    $stmt -> bindParam(":$col_user", $usuario, PDO::PARAM_STR);
    $stmt -> bindParam(":$col_pass", $password, PDO::PARAM_STR);
    $stmt -> execute();

    header("Location:regresar_menu.php");