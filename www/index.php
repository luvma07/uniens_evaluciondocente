<?php
require_once "controllers/connection.php";
//require_once "controllers/scrip_EncodeDecode.php"
//require_once "models/login_user.php";

require_once "controllers/template.controller.php";
require_once "controllers/login_user.controller.php";

$plantilla = new TemplateController();
$plantilla -> template();