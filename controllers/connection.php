<?php

//class Connection{

	//public function connect(){

		$servername = "localhost";
		$username = "root";
		$password = "";

		$dbname = "evaluacion_docente";

		try {

			$conectar = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);

			// set the PDO error mode to exception
			$conectar->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

			//echo "<h2>Conexión Exitosa</h2>";

			return $conectar;

		} catch(PDOException $e) {

			echo "<h2>Connection failed: </h2>" . $e->getMessage();

		}

	//}
//}



