<div class="conteiner-menu">
    <div class="row g-0">

        <div class="col-xxl-10 offset-xxl-1 col-xl-10 offset-xl-1 col-lg-10 offset-lg-1 col-sm-10 offset-sm-1 col-12" >

            <div class="row g-0 box-menu">
                <div class="card g-0  card-menu">

                    <h1>Estimado estudiante <?php echo $user->getNombre() ?></h1> 
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <p>Este ejercicio se realiza con la intención de mejorar nuestros servicios como institución de educación. 
                        Por esta razón se le solicita que responda de la manera más sincera estos cuestionarios siendo completamente 
                        objetivos con la evaluación de cad auno de sus docentes.</p>
                    <!--  
                    <p>También se le informa que si no cuenta con el tiempo necesario para responder todos los cuestionarios 
                        en una exhibición los cuestionarios se pueden enviar de manera individual por lo que se pueden hacer 
                        pausas entre cuestionarios. </p>    
                    -->

                    <?php 
                        $turn = $user->getTurno(); 
                        $grup = $user->getGrupo(); 
                        $curse1 = $user->getIdcurso1(); 
                        $curse2 = $user->getIdcurso2(); 
                        $curse3 = $user->getIdcurso3(); 

                        $curso1 = new user;
                        $curso1->setCurse($curse1,$turn,$grup);
     
                        $curso2 = new user;
                        $curso2->setCurse($curse2,$turn,$grup);

                        $curso3 = new user;
                        $curso3->setCurse($curse3,$turn,$grup);
                    ?>
                    
                    <div class="card g-0  card-table">
                        <?php
                            echo '<div style="margin-botton: 5em;">Turno: '.$turn.'</div>';
                            echo '<div style="margin-botton: 5em;">Grupo: '.$grup.'</div>';
                        ?>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <table class="table table-bordered border-secondary">
                            <thead>
                                <tr>
                                    <th scope="col">Curso</th>
                                    <th scope="col">Docente</th>
                                    <th scope="col">Estatus</th>
                                </tr>
                            </thead>
                            <tbody class="table-group-divider">
                                <tr>
                                    <?php
                                        if($user->getIdcurso1() != ''){
                                            echo '<td>'.$curso1->getCurso().'</td>';
                                            echo '<td>'.$curso1->getDocente().'</td>';
                                            echo '<td>';
                                            if($user->getStatus1() == '1') {
                                                echo '<button type="summit" class="btn btn-success">Respondido</button>';
                                            } else {
                                                echo '<form action="" method="get">
                                                        <input type="hidden" value="curso1" name="num">
                                                        <input type="hidden" value="'.$curso1->getCurso().'" name="curso">
                                                        <input type="hidden" value="'.$curso1->getDocente().'" name="docente">
                                                        <input type="hidden" value="'.$turn.'" name="turno">
                                                        <input type="hidden" value="'.$grup.'" name="grupo">
                                                        <button type="summit" class="btn btn-danger">Sin responder</button>
                                                    </form>
                                                ';
                                            }
                                            echo '</td>';
                                        } 
                                    ?>  
                                </tr>
                                <tr>
                                <tr>
                                    <?php
                                        if($user->getIdcurso2() != ''){
                                            echo '<td>'.$curso2->getCurso().'</td>';
                                            echo '<td>'.$curso2->getDocente().'</td>';
                                            echo '<td>';
                                            if($user->getStatus2() == '1') {
                                                echo '<button type="summit" class="btn btn-success">Respondido</button>';
                                            } else {
                                                echo '<form action="" method="get">
                                                        <input type="hidden" value="curso2" name="num">
                                                        <input type="hidden" value="'.$curso2->getCurso().'" name="curso">
                                                        <input type="hidden" value="'.$curso2->getDocente().'" name="docente">
                                                        <input type="hidden" value="'.$turn.'" name="turno">
                                                        <input type="hidden" value="'.$grup.'" name="grupo">
                                                        <button type="summit" class="btn btn-danger">Sin responder</button>
                                                    </form>
                                                ';
                                            }
                                            echo '</td>';
                                        } 
                                    ?> 
                                </tr>
                                <tr>
                                    <?php
                                        if($user->getIdcurso3() != ''){
                                            echo '<td>'.$curso3->getCurso().'</td>';
                                            echo '<td>'.$curso3->getDocente().'</td>';
                                            echo '<td>';
                                            if($user->getStatus3() == '1') {
                                                echo '<button type="summit" class="btn btn-success">Respondido</button>';
                                            } else {
                                                echo '<form action="" method="get">
                                                        <input type="hidden" value="curso3" name="num">
                                                        <input type="hidden" value="'.$curso3->getCurso().'" name="curso">
                                                        <input type="hidden" value="'.$curso3->getDocente().'" name="docente">
                                                        <input type="hidden" value="'.$turn.'" name="turno">
                                                        <input type="hidden" value="'.$grup.'" name="grupo">
                                                        <button type="summit" class="btn btn-danger">Sin responder</button>
                                                    </form>
                                                ';
                                            }
                                            echo '</td>';
                                        } 
                                    ?>   
                                </tr>
                            </tbody>

                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
    