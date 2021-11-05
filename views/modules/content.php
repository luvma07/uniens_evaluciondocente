<div class="body_cuestionario"> 
    <div class="container_cuestionario">
        <div class="content_cuestionario">
            
            <form action="controllers/regresar_menu.php" method="post">
                <p><input class="boton_regresar_menu" type="submit" value="Regresar al menu"></p>
            </form>

            <!--
            <form action="controllers/enviar_db_alumno_docente.php" method="post">
            -->

                <?php

                    $select_cuestionario = $_COOKIE["cuestionario"];
                    
                    if ($select_cuestionario == 0) {

                        $select_curso = $_COOKIE["cuestionario_docente"];

                        switch ($select_curso) {
                            case 1:
                                $docente = $_COOKIE["docente_curso1"];
                                $curso = $_COOKIE["curso_1"];
                                break;
                            case 2:
                                $docente = $_COOKIE["docente_curso2"];
                                $curso = $_COOKIE["curso_2"];
                                break;
                            case 3:
                                $docente = $_COOKIE["docente_curso3"];
                                $curso = $_COOKIE["curso_3"];
                                break;
                            default:
                                # code...
                                break;
                        }    

                        echo '<form action="controllers/enviar_db_alumno_docente.php" method="post">';

                        echo '<input type="hidden" name="docente" value="'.$docente.'">';
                        echo '<input type="hidden" name="curso" value="'.$curso.'">';
                        
                    }

                    switch ($select_cuestionario) {
                        case 0:
                            echo '<h1>Evaluacion Alumno-Docente</h1>';
                            echo '<b>Docente a evaluar:</b> '.$docente.'';
                            echo '<br>';
                            echo '<b>Curso impartido:</b> '.$curso.'';
                            $cuestionario = @file_get_contents("Cuestionario_AlumnoDocente.json");
                            echo '<form class="cuestionario" action="controllers/enviar_db_alumno_docente.php" method="post">';
                            break;
                        case 1:
                            echo '<h1>Evaluacion Servicio al cliente</h1>';
                            $cuestionario = @file_get_contents("Cuestionario_Servicio.json");
                            echo '<form class="cuestionario" action="controllers/enviar_db_servicios.php" method="post">';
                            break;
                        case 2:
                            echo '<h1>Evaluacion Administrativos-Docente</h1>';
                            $cuestionario = @file_get_contents("Cuestionario_AdministrativosDocente.json");
                            echo '<form class="cuestionario" action="controllers/enviar_db_instalaciones.php" method="post">';
                            break; 
                    }
                    
                    
                    $preguntas = json_decode($cuestionario, true);

                    echo '<br><br>';

                    foreach ($preguntas as $pregunta=> $pregunta_contenido) {
                        
                        echo'<p>
                            <b>'.$pregunta.':</b> '.$pregunta_contenido.' <br>

                            <label><input type="radio" name="'.$pregunta.'" value="MI" required>Muy insatisfechos</label><br>
                            <label><input type="radio" name="'.$pregunta.'" value="I" required>Insatisfechos</label><br>
                            <label><input type="radio" name="'.$pregunta.'" value="S" required>Satisfechos</label><br>
                            <label><input type="radio" name="'.$pregunta.'" value="MS" required>Muy satisfechos</label><br>
                        </p>';

                    }

                    echo '<p>Escriba algun comentario: <br>
                            <label><textarea class="area_text" name="comentarios" rows="10" cols="100">Escribe aquí tus comentarios. (Recuerda borrar este texto antes de escribir tu comentario)</textarea><br>
                            </p>';

                ?>

                <p><input class="boton_enviar_cuestionario" type="submit" value="Enviar Cuestionario"></p>
            </form>
        </div>
    </div>
</div>
