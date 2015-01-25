<?php
require_once "modules_class.php";
require_once "database_class.php";


class VerificationContent extends Modules {

	private $db;
	
	public function __construct($db) {
		parent::__construct($db);
		$this->db = $db;
	}
	
	protected function getTitle() {
		return "Подтверждение email";
	}
	
	protected function getDescription() {
		return "Подтверждение email";
	}
	
	protected function getKeyWords() {
		return "Подтверждение email";
	}
	
	protected function getMiddle() {
		if ($this->db->isExists("users", "verification_code", $_GET["verification_code"])) {
			$sr["title"] = "Активация прошла успешно";
			$sr["text"] = "Активация прошла успешно";
			$this->db->setField("users", "verification_code", "", "verification_code", $_GET["verification_code"]);
		}
		else {
		$sr["title"] = "ошибка";
		$sr["text"] = "ошибка";
		}
		return $this->getReplaceTemplate($sr, "message");
	}
	
}
?>