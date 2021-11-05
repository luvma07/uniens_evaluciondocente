<div class="body_menu">
    <div class="conteiner_table_menu">
        <div class="menu">

            <div class="importante">

                <h1>Estimado estudiante.</h1> 

                <p>Se le recuerda que la información recaudada con esta pequeña encuesta se utilizará con la intención para poder mejorar nuestros servicios como institución de educación, así como hacer más confortable su estadía en nuestra UNIVERDAD DE ENSENADA. Por esta razón se le solicita que responda de la manera más sincera estos cuestionarios siendo completamente objetivo con sus respuestas y en el comentario final de cada cuestionario.</p>  

                <p>También se le informa que si no cuenta con el tiempo necesario para responder todos los cuestionarios en una exhibición los cuestionarios se pueden enviar de manera individual por lo que se pueden hacer pausas entre cuestionarios. </p> 
                <br>
            </div>

            <table class="tabla_menu" border="1">
                <tr>
                    <th align="center">No. de cuestionario</td>
                    <th class="th-hidden" align="center">Evaluación</td>
                    <th class="th-hidden" align="center">Docente</td>
                    <th align="center">Status</td>
                </tr>

                <?php

                    $no_de_cuestionario = 0;

                    if(isset($_COOKIE["curso_1"])){
                        $no_de_cuestionario = $no_de_cuestionario + 1;
                        $curso_1 = $_COOKIE["curso_1"];
                        $docente_curso_1 = $_COOKIE["docente_curso1"];
                        $status_curso_1 = $_COOKIE["status_curso1"];

                        echo '<tr>
                                <td align="center">'.$no_de_cuestionario.'</td>
                                <td class="th-hidden" align="center">'.$curso_1.'</td>
                                <td class="th-hidden" align="center">'.$docente_curso_1.'</td>';                

                                if ($status_curso_1 == 1) {
                                    echo '<td align="center"><a href="controllers/aviso.controller.php">Respondido</a></td>
                                    </tr>';
                                } else {
                                    echo '<td align="center"><a href="controllers/seleccionar_cuestionario.php">No ha sido respondido</a></td>
                                    </tr>';
                                }                
                    }
                
                    if(isset($_COOKIE["curso_2"])){
                        $no_de_cuestionario = $no_de_cuestionario + 1;
                        $curso_2 = $_COOKIE["curso_2"];
                        $docente_curso_2 = $_COOKIE["docente_curso2"];
                        $status_curso_2 = $_COOKIE["status_curso2"];

                        echo '<tr>
                                <td align="center">'.$no_de_cuestionario.'</td>
                                <td class="th-hidden" align="center">'.$curso_2.'</td>
                                <td class="th-hidden" align="center">'.$docente_curso_2.'</td>';                

                                if ($status_curso_2 == 1) {
                                    echo '<td align="center"><a href="controllers/aviso.controller.php">Respondido</a></td>
                                    </tr>';
                                } else {
                                    echo '<td align="center"><a href="controllers/seleccionar_cuestionario2.php">No ha sido respondido</a></td>
                                    </tr>';
                                }                
                    }

                    if(isset($_COOKIE["curso_3"])){
                        $no_de_cuestionario = $no_de_cuestionario + 1;
                        $curso_3 = $_COOKIE["curso_3"];
                        $docente_curso_3 = $_COOKIE["docente_curso3"];
                        $status_curso_3 = $_COOKIE["status_curso3"];

                        echo '<tr>
                                <td align="center">'.$no_de_cuestionario.'</td>
                                <td class="th-hidden" align="center">'.$curso_3.'</td>
                                <td class="th-hidden" align="center">'.$docente_curso_3.'</td>';                

                                if ($status_curso_3 == 1) {
                                    echo '<td align="center"><a href="controllers/aviso.controller.php">Respondido</a></td>
                                    </tr>';
                                } else {
                                    echo '<td align="center"><a href="controllers/seleccionar_cuestionario3.php">No ha sido respondido</a></td>
                                    </tr>';
                                }                
                    }
                    
                    $no_de_cuestionario = $no_de_cuestionario + 1;
                    $status_servicios = $_COOKIE["status_servicios"];

                    echo '<tr>
                            <td align="center">'.$no_de_cuestionario.'</td>
                            <td class="th-hidden" align="center" colspan="2">Servicios</td>';                

                            if ($status_servicios == 1) {
                                echo '<td align="center"><a href="controllers/aviso.controller.php">Respondido</a></td>
                                </tr>';
                            } else {
                                echo '<td align="center"><a href="controllers/seleccionar_cuestionario4.php">No ha sido respondido</a></td>
                                </tr>';
                            } 

                    $no_de_cuestionario = $no_de_cuestionario + 1;
                    $status_instalaciones = $_COOKIE["status_instalaciones"];

                    echo '<tr>
                            <td align="center">'.$no_de_cuestionario.'</td>
                            <td class="th-hidden" align="center" colspan="2">Instalaciones</td>';                

                            if ($status_instalaciones == 1) {
                                echo '<td align="center"><a href="controllers/aviso.controller.php">Respondido</a></td>
                                </tr>';
                            } else {
                                echo '<td align="center"><a href="controllers/seleccionar_cuestionario5.php">No ha sido respondido</a></td>
                                </tr>';
                            }                    

                ?>

            </table>

            <form class="container_boton_cerrar_sesion" action="controllers/cerrar_sesion.php" method="post">
                <p><input class="boton_cerrar_sesion" type="submit" value="Cerrar Sesión"></p>
            </form>

        </div>
    </div>
</div>
