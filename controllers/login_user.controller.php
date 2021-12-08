<?php

require_once 'connection.php';
require_once 'scrip_EncodeDecode.php';

function filtrado($datos){

    $datos = trim($datos); // Elimina espacios antes y después de los datos
    $datos = stripslashes($datos); // Elimina backslashes \
    $datos = htmlspecialchars($datos); // Traduce caracteres especiales en entidades HTML
    return $datos;
}

if(isset($_POST["log_user"]) && isset($_POST["log_pass"])){

    $valor_user = filtrado($_POST["log_user"]);
    $valor_pass = filtrado($_POST["log_pass"]);

    $table = 'estudiantes';
    $item_user = 'usuario';
    $item_pass = 'password';  
    
    //Consultar estudiante

    $stmt = $conectar -> prepare("SELECT * FROM $table WHERE $item_user = :$item_user AND $item_pass = :$item_pass");
    $stmt -> bindParam(":$item_user", $valor_user, PDO::PARAM_STR);
    $stmt -> bindParam(":$item_pass", $valor_pass, PDO::PARAM_STR);
    $stmt -> execute();
    $result = $stmt -> fetch();

    //var_dump($result);

    echo '<br>';
    echo '<br>';  

    if($stmt->rowCount() > 0){

        //Consultar Docentes

        $table = 'cursos';
        $item = 'id_curso';

        $id_curso1 = $result["id_curso_1"];

        $stmt_curso1 = $conectar -> prepare("SELECT * FROM $table WHERE $item = :$item");
        $stmt_curso1 -> bindParam(":$item", $id_curso1, PDO::PARAM_STR);
        $stmt_curso1 -> execute();
        $result_curso_1 = $stmt_curso1 -> fetch();
        //var_dump($result_curso_1);
        //echo '<br>';
        //echo '<br>'; 

        $id_curso2 = $result["id_curso_2"];

        $stmt_curso2 = $conectar -> prepare("SELECT * FROM $table WHERE $item = :$item");
        $stmt_curso2 -> bindParam(":$item", $id_curso2, PDO::PARAM_STR);
        $stmt_curso2 -> execute();
        $result_curso_2 = $stmt_curso2 -> fetch();
        //var_dump($result_curso_2);
        //echo '<br>';
        //echo '<br>'; 

        $id_curso3 = $result["id_curso_3"]; 

        $stmt_curso3 = $conectar -> prepare("SELECT * FROM $table WHERE $item = :$item");
        $stmt_curso3 -> bindParam(":$item", $id_curso3, PDO::PARAM_STR);
        $stmt_curso3 -> execute();
        $result_curso_3 = $stmt_curso3 -> fetch();
        //var_dump($result_curso_3);
        //echo '<br>';
        //echo '<br>'; 
/*
        $id_curso4 = $result["id_curso_4"]; 

        $stmt_curso4 = $conectar -> prepare("SELECT * FROM $table WHERE $item = :$item");
        $stmt_curso4 -> bindParam(":$item", $id_curso4, PDO::PARAM_STR);
        $stmt_curso4 -> execute();
        $result_curso_4 = $stmt_curso4 -> fetch();
        //var_dump($result_curso_4);
        //echo '<br>';
        //echo '<br>'; 

        $id_curso5 = $result["id_curso_5"]; 

        $stmt_curso5 = $conectar -> prepare("SELECT * FROM $table WHERE $item = :$item");
        $stmt_curso5 -> bindParam(":$item", $id_curso5, PDO::PARAM_STR);
        $stmt_curso5 -> execute();
        $result_curso_5 = $stmt_curso5 -> fetch();
        //var_dump($result_curso_5);
        //echo '<br>';
        //echo '<br>'; 
*/
        $cookie1 = SED::encryption($valor_user);
        $cookie2 = SED::encryption($valor_pass);

        $pagina = 1;


        /////////////////////////////////////
        require_once "rutas.php";

        $ruta_cookie = new Rutas; 
        $ruta_cookie = Rutas::ruta_cookies();
        var_dump($ruta_cookie);
        /////////////////////////////////////

        setcookie("paginacion", $pagina, time() + 60 * 30, $ruta_cookie);

        setcookie("cookie1", $cookie1, time() + 60 * 30, $ruta_cookie);
        setcookie("cookie2", $cookie2, time() + 60 * 30, $ruta_cookie);

        setcookie("nombre_completo", $result["nombre_completo"], time() + 60 * 30, $ruta_cookie);

        setcookie("curso_1", $result_curso_1["curso"], time() + 60 * 30, $ruta_cookie);
        setcookie("docente_curso1", $result_curso_1["docente"], time() + 60 * 30, $ruta_cookie);
        setcookie("status_curso1", $result["status_curso1"], time() + 60 * 30, $ruta_cookie);
        
        setcookie("curso_2", $result_curso_2["curso"], time() + 60 * 30, $ruta_cookie);
        setcookie("docente_curso2", $result_curso_2["docente"], time() + 60 * 30, $ruta_cookie);
        setcookie("status_curso2", $result["status_curso2"], time() + 60 * 30, $ruta_cookie);
        
        setcookie("curso_3", $result_curso_3["curso"], time() + 60 * 30, $ruta_cookie);
        setcookie("docente_curso3", $result_curso_3["docente"], time() + 60 * 30, $ruta_cookie);
        setcookie("status_curso3", $result["status_curso3"], time() + 60 * 30, $ruta_cookie);
/*
        setcookie("curso_4", $result_curso_4["curso"], time() + 60 * 30, "/EvaluacionDocente");
        setcookie("docente_curso4", $result_curso_4["docente"], time() + 60 * 30, "/EvaluacionDocente");
        setcookie("status_curso4", $result["status_curso4"], time() + 60 * 30, "/EvaluacionDocente");

        setcookie("curso_5", $result_curso_5["curso"], time() + 60 * 30, "/EvaluacionDocente");
        setcookie("docente_curso5", $result_curso_5["docente"], time() + 60 * 30, "/EvaluacionDocente");
        setcookie("status_curso5", $result["status_curso5"], time() + 60 * 30, "/EvaluacionDocente");
*/
        setcookie("status_servicios", $result["status_servicios"], time() + 60 * 30, $ruta_cookie);

        //setcookie("status_instalaciones", $result["status_instalaciones"], time() + 60 * 30, "/EvaluacionDocente");  

        header("Location:../index.php");
        //echo 'menuuu';

    }else{

    header("Location:../index.php");
    echo 'indexxx';
    }
}
        
