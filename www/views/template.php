<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Evaluación Docente - ITECI</title>

    <link rel="stylesheet" href="../views/libs/bootstrap-5.0.2/bootstrap.min.css">

    <link rel="stylesheet" href="../views/css/body.css">
    <link rel="stylesheet" href="../views/css/header.css">
    <link rel="stylesheet" href="../views/css/footer.css">

    <link rel="stylesheet" href="../views/css/assessment.css">
    <link rel="stylesheet" href="../views/css/login.css">
    <link rel="stylesheet" href="../views/css/menu.css">

</head>
<body>
    <?php
    
        $userSession = new UserSession();
        $user = new User();

        if(isset($_SESSION['user'])) {
            echo "Hay session";
            $user->setUser($userSession->getCurrentUser());
            
            require_once 'modules/header.php';

                if(isset($_GET['curso']) &&  isset($_GET['docente']) && isset($_GET['turno']) && isset($_GET['grupo'])) {
                    require_once 'modules/assessment.php';
                } else {
                    include_once 'modules/menu.php';
                }
            
        } else if(isset($_POST['username']) && isset($_POST['password'])) {
            echo "Validación de Login";
            
            $userForm = $_POST['username'];
            $passForm = $_POST['password'];

            $user = new User();

            if($user->userExists($userForm, $passForm)){
                //echo "Existe el usuario";
                $userSession->setCurrentUser($userForm);
                $user->setUser($userForm);

                require_once 'modules/header.php';
                include_once 'modules/menu.php';
                
            } else {
                //echo "No existe el usuario";
                $errorLogin = "Usuario y/o password incorrecto";
                include_once 'modules/login.php';
            }
        } else {
            //echo "Login";

            require_once 'modules/login.php';
        }

        require_once 'modules/footer.php';    
    ?>
    <script src="../views/libs/bootstrap-5.0.2/bootstrap.bundle.min.js"></script>
</body>
</html>