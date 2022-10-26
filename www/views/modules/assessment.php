
<div class="conteiner-assessment">
    <div class="row g-0">
        <div class="col-xxl-8 offset-xxl-2 col-xl-12 col-lg-12 col-sm-12 col-12 five" >
            
            <form action="../www/controllers/tabla_docentes.php" method="post">

                <div class="row g-0 card-datos">
                    <div class="card g-0">

                        <?php

                            $num = $_GET['num'];
                            $docente = $_GET['docente'];
                            $curso = $_GET['curso'];
                            $turno = $_GET['turno'];
                            $grupo = $_GET['grupo'];

                            echo '<h4><b>Curso: </b>'.$curso.'</h4>
                                    <h4><b>Docente: </b>'.$docente.'</h4>
                                    <h4><b>Turno: </b>'.$turno.'</h4>
                                    <h4><b>Grupo: </b>'.$grupo.'</h4>

                                    <input type="hidden" value="'.$docente.'" name="docente">
                                    <input type="hidden" value="'.$curso.'" name="curso">
                                    <input type="hidden" value="'.$num.'" name="num">
                                '; 
                        ?>
                        
                    </div>
                </div>

                <?php
                $cuestionario = @file_get_contents("../www/views/json/preguntas.json");
                $preguntas = json_decode($cuestionario, true);

                echo '<br><br>';

                foreach ($preguntas as $pregunta=> $pregunta_contenido) {
                    
                    echo'<div class="row g-0">
                            <div class="card g-0">
                                <div class="card-body">
                                    <p class="card-text" style="text-align: center;">
                                        '.$pregunta_contenido.'
                                    </p>
                                    <div class="options d-flex">
                                        <input type="radio" class="btn-check " name="'.$pregunta.'" value="nunca" id="option1-'.$pregunta.'" autocomplete="off" required>
                                        <label class="btn btn-secondary d-flex btn-options" for="option1-'.$pregunta.'">Nunca</label>
                                        
                                        <input type="radio" class="btn-check" name="'.$pregunta.'" value="algunas veces" id="option2-'.$pregunta.'" autocomplete="off" required>
                                        <label class="btn btn-secondary d-flex btn-options" for="option2-'.$pregunta.'">Algunas veces</label>

                                        <input type="radio" class="btn-check" name="'.$pregunta.'" value="casi siempre" id="option3-'.$pregunta.'" autocomplete="off" required>
                                        <label class="btn btn-secondary d-flex btn-options" for="option3-'.$pregunta.'">Casi siempre</label>

                                        <input type="radio" class="btn-check" name="'.$pregunta.'" value="siempre" id="option4-'.$pregunta.'" autocomplete="off" required>
                                        <label class="btn btn-secondary d-flex btn-options" for="option4-'.$pregunta.'">Siempre</label>
                                    </div>
                                </div>
                            </div>
                        </div>';
                }
                ?>

                <div class="row g-0">
                    <div class="card g-0">
                        <div class="card-body">

                            <div class="form-floating asdf">
                                <p class="comment-tittle">Usa este espacio para agregar algún comentarios si así lo deseas:</p> 
                                <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" cols="70" style="height: 250px" name="comentarios"></textarea>
                            </div>
            

                        </div>
                    </div>
                </div>
                
                <div class="row g-0">
                    <div class="card g-0">
                        <div class="card-body d-flex justify-content-end">
                            <!--
                            <button class="btn btn-danger btn-lg asdf" type="button">
                                <a href="../www/index.php">
                                    Cancelar
                                </a>
                            </button>
                            -->
                            <button class="btn btn-success" style="transform: scale(1.75);;" type="summit">Enviar</button>
                        </div>
                    </div>
                </div>
            </form>      
        </div>        
    </div>
</div>
    