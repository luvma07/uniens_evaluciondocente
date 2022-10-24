<?php
//include 'db.php';

class User extends DB{
    private $nombre;
    private $username;


    public function userExists($user, $pass){
        //$md5pass = md5($pass);
        $md5pass = $pass;
        //$query = $this->connect()->prepare('SELECT * FROM usuarios WHERE username = :user AND password = :pass');
        $query = $this->connect()->prepare('SELECT * FROM estudiantes WHERE usuario = :user AND password = :pass');
        $query->execute(['user' => $user, 'pass' => $md5pass]);

        if($query->rowCount()){
            return true;
        }else{
            return false;
        }
    }

    public function setUser($user){
        //$query = $this->connect()->prepare('SELECT * FROM usuarios WHERE username = :user');
        $query = $this->connect()->prepare('SELECT * FROM estudiantes WHERE usuario = :user');
        $query->execute(['user' => $user]);
        
        foreach ($query as $currentUser) {
            $this->usuario = $currentUser['usuario'];
            $this->nombre_completo = $currentUser['nombre_completo'];
            $this->turno = $currentUser['turno'];
            $this->grupo = $currentUser['grupo'];
            

            $this->status_curso1 = $currentUser['status_curso1'];
            $this->id_curso_1 = $currentUser['id_curso_1'];

            $this->status_curso2 = $currentUser['status_curso2'];
            $this->id_curso_2 = $currentUser['id_curso_2'];

            $this->status_curso3 = $currentUser['status_curso3'];
            $this->id_curso_3 = $currentUser['id_curso_3'];
        }
    }

    public function setCurse($curse, $turn, $grup){
        $query = $this->connect()->prepare('SELECT * FROM cursos WHERE clave_curso = :curse AND turno = :turn AND grupo = :grup');
        $query->execute(['curse' => $curse, 'turn' => $turn, 'grup' => $grup]);
        
        foreach ($query as $currentUser) {
            $this->curso = $currentUser['curso'];
            $this->docente = $currentUser['docente'];
        }
    }

    public function getCurso(){
        return $this->curso;
    }

    public function getDocente(){
        return $this->docente;
    }

    /*---------------------------*/ 
    public function getUsuario(){
        return $this->usuario;
    }

    public function getNombre(){
        return $this->nombre_completo;
    }

    public function getPassword(){
        return $this->password;
    }

    public function getTurno(){
        return $this->turno;
    }

    public function getGrupo(){
        return $this->grupo;
    }

    public function getStatus1(){
        return $this->status_curso1;
    }

    public function getIdcurso1(){
        return $this->id_curso_1;
    }

    public function getStatus2(){
        return $this->status_curso2;
    }

    public function getIdcurso2(){
        return $this->id_curso_2;
    }

    public function getStatus3(){
        return $this->status_curso3;
    }

    public function getIdcurso3(){
        return $this->id_curso_3;
    }
}

