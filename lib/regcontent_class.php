<?php
require_once "modules_class.php";

class RegContent extends Modules {
	
	public function __construct($db) {
		parent::__construct($db);
	}
	
	protected function getTitle() {
		return "Регистрация на сайте";
	}
	
	protected function getDescription() {
		return "Регистрация на сайте";
	}
	
	protected function getKeyWords() {
		return "регистрация, регистрация на сайте";
	}
	
	protected function getMiddle() {
		$sr["login"] = $_SESSION["login"];
		$sr["email"] = $_SESSION["email"];
		$sr["message"] = $this->getMessage();
		return $this->getReplaceTemplate($sr, "form_reg");
	}
	
}
?>