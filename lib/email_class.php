<?php
require_once "globalmessage_class.php";

class Email extends GlobalMessege {
	
	private $data;
	
	public function __construct() {
		parent::__construct("emails");
	}
	
}

?>