<?php

    include_once 'user_session.php';

    $userSession = new UserSession();
    $userSession->closeSession();

    //echo 'Hola desde Logout';

    header("location: ../index.php");

