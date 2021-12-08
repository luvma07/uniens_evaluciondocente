<?php

//class Connection{

	//public function connect(){

		try {

			$conectar = new PDO("mysql:host=" . getenv('DB_HOST') . ";dbname=" . getenv('DB_DB'), getenv('DB_USER'), getenv('DB_PASS'));

			// set the PDO error mode to exception
			$conectar->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

			//echo "<h2>Conexión Exitosa</h2>";

			return $conectar;

		} catch(PDOException $e) {

			echo "<h2>Connection failed: </h2>" . $e->getMessage();

		}

	//}
//}



