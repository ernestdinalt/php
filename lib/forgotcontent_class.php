<?php
require_once "modules_class.php";

class ForgotContent extends Modules {
	
	public function __construct($db) {
		parent::__construct($db);
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
		$sr["message"] = $this->getMessage();
		return $this->getReplaceTemplate($sr, "form_forgot");
	}
	
}
?>