<?php
require_once "controllers/db.php";
require_once "controllers/template.php";

include_once 'controllers/user.php';
include_once 'controllers/user_session.php';


$template = new TemplateController();
$template -> template();