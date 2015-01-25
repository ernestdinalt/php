<?php
require_once "modules_class.php";
require_once "database_class.php";


class RecoveryContent extends Modules {

	private $db;
	
	public function __construct($db) {
		parent::__construct($db);
		$this->db = $db;
	}
	
	protected function getTitle() {
		return "Востановление пароля";
	}
	
	protected function getDescription() {
		return "Востановление пароля";
	}
	
	protected function getKeyWords() {
		return "Востановление пароля";
	}
	
	protected function getMiddle() {
		if ($this->db->isExists("users", "recovery_code", $_GET["recovery_code"])) {
			$_SESSION["recovery_code"] = $_GET["recovery_code"];
			$sr["message"] = "";
			return $this->getReplaceTemplate($sr, "form_recovery");
		}
		else {
		$sr["title"] = "Ошибка";
		$sr["text"] = "Ошибка";
		return $this->getReplaceTemplate($sr, "message");
		}
	}
	
}
?>