<nav class="navbar fixed-top header-conteiner">
        <div class="container-fluid">

            <a class="navbar-brand" href="../www/index.php">
                <?php
                    $prepa = false;
                    if ($prepa) {
                        echo '<img class="logo" src="../www/views/resources/images/logo_ITECI.svg" alt="">';
                    } else {
                        echo '<img class="logo" src="../www/views/resources/images/logo_UNIENS.svg" alt="">';
                    }
                ?>  
            </a>

            <button class="navbar-toggler-custom d-block d-sm-block d-md-none " type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                <?php
                    include '../www/views/resources/icons/menu_movil.svg';
                ?>
            </button>

            <?php
                echo '<div class="app_name">Sistema de Evaluación Docente</div>';
            ?>   
             
            <button class="navbar-toggler-custom d-none d-sm-none d-md-block " type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                <?php
                    include '../www/views/resources/icons/menu_movil.svg';
                ?>
            </button>

            <div class="offcanvas offcanvas-end " tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">

                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasNavbarLabel">
                        <?php
                            echo 'Universidad de Ensenada';
                        ?>
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>

                <div class="offcanvas-body">
                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                    <!--
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Web ITECI</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Web UNIENS</a>
                    </li>
                    -->
                    <li class="nav-item">
                        <a class="nav-link" href="../www/controllers/logout.php">Cerrar Sesión</a>
                    </li>
                </div>
            </div>
        </div>
    </nav>
