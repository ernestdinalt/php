<?php
require_once "database_class.php";
require_once "user_class.php";
require_once "config_class.php";


class Mail {
	
	private $db;
	private $config;
	private $user;
	
	public function __construct($db) {
		$this->db = new DataBase();
		$this->config = new Config();
		$this->user = new User($db);
	}

	public function sendEmail($user_email, $verification_code) {
		$verification_link = $this->config->address."?view=verification&verification_code=".$verification_code;
		$email = $user_email;
		$message = "To confirm your registration please click this link (if link is not clickable, copy and paste it to your browser):\n$verification_link";
		$to = "$email";
		$subject = "Confirm your registration";
		$headers = 'From: no-reply' . "\r\n" . 'Reply-To: no-reply' . "\r\n" . 'X-Mailer: PHP/' . phpversion();
		mail($to, $subject, $message, $headers);
	}
	
	public function sendRecoveryEmail($user_email, $recovery_code) {
		$recovery_link = $this->config->address."?view=recovery&recovery_code=".$recovery_code;
		$email = $user_email;
		$message = "To continue the recovery password, click on this link (if link is not clickable, copy and paste it to your browser):\n$recovery_link";
		$to = "$email";
		$subject = "Recovery password";
		$headers = 'From: no-reply' . "\r\n" . 'Reply-To: no-reply' . "\r\n" . 'X-Mailer: PHP/' . phpversion();
		mail($to, $subject, $message, $headers);
		return true;
	}
}
?>