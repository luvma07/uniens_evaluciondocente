<?php

    echo '<script language="javascript">
            alert("Por favor introduzca su nombre de usuario y contraseña correctamente dentro de los campos.");
            </script>';
    
?>

<div class="box_login">
    
    <div class="form_container">

        <div class="form_top"></div>

        <div class="form_content">
            
            <div class="tittle">
                <div class="text_tittle">
                    Sistema de Evaluación Docente
                </div>
            </div>
            <div class="logo_login">
                <img class="img_logologin" src="views/img/logo_login.jpg">
            </div>
            <div class="form">
            
                <form class="dates" action="controllers/login_user.controller.php" method="POST">
                    <div class="date">
                        <label class="label_login" for="name">Nombre de usuario</label>
                        <input class="input_login" type="text" name="log_user" required/>
                    </div>
                    <div class="date">
                        <label class="label_login" for="password">Contraseña Google de UniEns</label>
                        <input class="input_login" type="password" name="log_pass" required/>
                    </div>
                    <input class="boton_login" type="submit" value="Enviar" name="login" maxlength="21">
                </form>            
            </div>
        </div>
        <div class="form_botton"></div>
    </div>    
</div>

