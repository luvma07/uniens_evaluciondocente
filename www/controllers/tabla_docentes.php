<?php

    $docente = $_POST['docente'];
    var_dump($docente);
    echo '<br>';
    $curso = $_POST['curso'];
    var_dump($curso);
    echo '<br>';
    $status = $_POST['num'];
    var_dump($status);
    echo '<br>';

    $cuestionario = file_get_contents("../../www/views/json/preguntas.json");
    $preguntas = json_decode($cuestionario, true);

    $enviar = []; 

    for ($i = 1; $i <= sizeof($preguntas); $i++) {
        $pregNum = 'Pregunta'.$i.'';
        $pregValue = $_POST[$pregNum];

        $enviar += [$pregNum => $pregValue];
    }

    $comentario = $_POST['comentarios'];
    $enviar += ['comentario' => $comentario];

    $enviar = json_encode($enviar);
    var_dump($enviar);
    

    /*ENVIAR A BASE DE DATOS*/

    require_once "db.php";

    $db = new DB;
    $query = $db->connect()->prepare("INSERT INTO docentes (docente, curso, cuestionario_resuelto) VALUES (:docente, :curso, :cuestionario_resuelto)");
    $query->execute(['docente' => $docente, 'curso' => $curso, 'cuestionario_resuelto' => $enviar]);

    /*ENVIAR A BASE DE DATOS*/

    include_once 'user.php';
    include_once 'user_session.php';

    $user = new User;
    $userSession = new UserSession();

    if($status == 'curso1') {
        $status = 'status_curso1';
    } else if($status == 'curso2') {
        $status = 'status_curso2';
    } else if($status == 'curso3') {
        $status = 'status_curso4';
    }

    $user->setUser($userSession->getCurrentUser());
    var_dump($user);


    $query = $db->connect()->prepare("UPDATE estudiantes SET $status=1 WHERE usuario=:usuario");
    $query->execute(['usuario' => $user->getUsuario()]);

    header("location: ../index.php");