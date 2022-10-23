<div class="conteiner-login">
    <div class="row g-0">        

        <div class="col-xxl-6 offset-xxl-3 col-xl-6 offset-xl-3 col-lg-8 offset-lg-2 col-sm-8 offset-sm-2 col-10 offset-1" >

            <div class="row g-0 box-login">
                <div class="card g-0  card-login">

                    <div class="row d-flexs justify-content-center align-items-center">

                        <div class="col d-none d-sm-none d-xxl-block d-xl-block d-lg-block d-lg-block">
                            <img class="logo-vertical" src="views/resources/images/logo_UNIENS2.svg" alt="">
                        </div>

                        <div class="col d-flex flex-column">
                            <!--
                            <img class="logo-vertical d-block d-xxl-none d-xl-none d-lg-none" src="views/resources/images/logo_ITECI_vertical.jpg" alt="">
                            -->
                            <img class="logo-vertical d-block d-xxl-none d-xl-none d-lg-none" src="views/resources/images/logo_UNIENS2.svg" alt="">
                            <form class="d-flex flex-column" action="" method="POST">
                                <?php
                                    if(isset($errorLogin)){
                                        echo '<div class="errorLogin">'.$errorLogin.'</div>';
                                    }
                                ?>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">
                                        Usuario
                                    </label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="username">
                                    <div id="emailHelp" class="form-text">
                                        Utiliza tu número de control para ingresar al sistema.
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">
                                        Contraseña
                                    </label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" name="password">
                                </div>
                                <button type="submit" class="btn btn-secondary">Ingresar</button>
                            </form>
                        </div>
                    </div>
                        
                </div>
            </div>
        </div>

    </div>
</div>
