<?php
	require_once "lib/database_class.php";
	require_once "lib/manage_class.php";
	
	$db = new DataBase();
	$manage = new Manage($db);
	if ($_POST["reg"]) {
		$r = $manage->regUser();  
	}
	elseif ($_POST["auth"]) {
		$r = $manage->login();  
	}
	elseif ($_GET["logout"]) {
		$r = $manage->logout();  
	}
	elseif ($_POST["forgot"]) {
		$r = $manage->forgot(); 
	}
	elseif ($_POST["recovery"]) {
		$r = $manage->recovery(); 
	}
	elseif ($_POST["poll"]) {
		$r = $manage->poll(); 
	}
	elseif ($_POST["addcomment"]) {
		$r = $manage->addcomment(); 
	}
	else exit;
	$manage->redirect($r);
	
	
?>