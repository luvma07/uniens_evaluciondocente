<?php

    echo 'BD ALUMNO-DOCENTE <br><br>';

    require_once 'connection.php';
    require_once 'scrip_EncodeDecode.php';

    $respuestas = []; 

    for ($i=1; $i <= 10; $i++) { 
        
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
    
    echo '<br>';
    $docente = $_POST["docente"];
    var_dump($docente);
    echo '<br>';
    $curso = $_POST["curso"];
    var_dump($curso);

     //Insertar cuestionario en base de datos SERVICIOS

     $table = 'docentes';

     $docente_col = 'docente';
     $curso_col = 'curso';
     $cuestionario_col = 'Cuestionario_resuelto';

     $value1 = 'docente';
     $value2 = 'curso';
     $value3 = 'cuestioario';
 
     $stmt = $conectar -> prepare("INSERT INTO $table ($docente_col, $curso_col, $cuestionario_col) VALUES (:$value1, :$value2, :$value3)");
     $stmt -> bindParam(":$value1", $docente, PDO::PARAM_STR);
     $stmt -> bindParam(":$value2", $curso, PDO::PARAM_STR);
     $stmt -> bindParam(":$value3", $cuestionario_resuelto, PDO::PARAM_STR);
     $stmt -> execute();

     //Cambiar estado de cuestionario DB

    $tabla = 'estudiantes';

    if (isset($_COOKIE['cuestionario_docente'])) {
        $select_status = $_COOKIE['cuestionario_docente'];
        
        switch ($select_status) {
            case 1:
                $columna = 'status_curso1';
                break;
            case 2:
                $columna = 'status_curso2';
                break;
            case 3:
                $columna = 'status_curso3';
                break;
            default:
                # code...
                break;
        }
    }
  
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