<?php
require_once "config_class.php";
require_once "user_class.php";
require_once "mail_class.php";
require_once "database_class.php";
require_once "poll_class.php";
require_once "pollvariant_class.php";
require_once "comments_class.php";
	
class Manage {
	
	private $config;
	private $user;
	private $mail;
	private $data;
	protected $comments;
	
	public function __construct($db) {
		session_start();
		$this->config = new Config();
		$this->user = new User($db);
		$this->mail = new Mail($db);
		$this->poll = new Poll($db);
		$this->comments = new Comments($db);
		$this->poll_variant = new PollVariant($db);
		$this->data = $this->secureData(array_merge($_POST, $_GET));
		$this->db = $db;
	}
	
	private function secureData($data) {
		foreach($data as $key => $value) {
			if (is_array($value)) $this->secureData($value);
			else $data[$key] = htmlspecialchars($value);
		}
		return $data;
	}
	
	public function redirect($link) {
		header("Location: $link");
		exit;
	}
	
	public function regUser() {
		$link_reg = $this->config->address."?view=reg";
		$captcha = $this->data["captcha"];
		if (($_SESSION["rand"] != $captcha) && ($_SESSION["rand"] != "")) {
			return $this->returnMessage("ERROR_CAPTCHA", $link_reg);
		}
		$login = $this->data["login"];
		if ($this->user->isExistsUser($login)) return $this->returnMessage("EXISTS_LOGIN", $link_reg);
		$password = $this->data["password"];
		if ($password == "") return $this->unknownError($link_reg);
		$password = $this->hashPassword($password);
		$email = $this->data["email"];
		$verification_code = md5($login.$this->config->secret);
		$this->mail->sendEmail($email, $verification_code);
		$result = $this->user->addUser($login, $password, $email, time());
		if ($result) return $this->returnPageMessage("SUCCESS_REG", $this->config->address."?view=message");
		else return $this->unknownError($link_reg);
	}
	
	public function addcomment() {
		$name = $this->data["addcomment_name"];
		$text = $this->data["addcomment_text"];
		$article_id = $this->data["article_id"];
		$link = $this->config->address."?view=article&id=".$article_id;
		if ($name == "") return false;
		if ($text == "") return false;
		if ($article_id == "") return false;
		$result = $this->comments->addComment($name, $text, $article_id);
		if ($result) return $link;
		else return false;
	}
	
	public function login() {
		$login = $this->data["login"];
		$password = $this->data["password"];
		$password = $this->hashPassword($password);
		$verification_code = $this->db->getField("users", "verification_code", "login", $login);
		$r = $_SERVER["HTTP_REFERER"];
		if (($this->user->checkUser($login, $password))&&($verification_code == "")) {
			$_SESSION["login"] = $login;
			$_SESSION["password"] = $password;
			return $r;
		}
		elseif ($this->user->checkUser($login, $password)) {
			$_SESSION["error_auth"] = 2;
			return $r;
		}
		else {
			$_SESSION["error_auth"] = 1;
			return $r;
		}
	}
	
	public function logout() {
		unset($_SESSION["login"]);
		unset($_SESSION["password"]);
		return $_SERVER["HTTP_REFERER"];
	}
	
	public function poll() {
		$id = $this->data["variant"];
		$variant = $this->poll_variant->get($id);
		$poll_id = $variant["poll_id"];
		$this->poll_variant->setVotes($id, $variant["votes"] + 1);
		return $this->config->address."?view=poll&id=$poll_id";
	}
	
	public function forgot() {
		$link_forgot = $this->config->address."?view=forgot";
		$email = $this->data["email"];
		if (!($this->db->isExists("users", "email", $email))) return $this->returnMessage("NOT_EXISTS_EMAIL", $link_forgot);
		$recovery_code = md5($email.$this->config->secret);
		$this->db->setField("users", "recovery_code", $recovery_code, "email", $email);
		$result = $this->mail->sendRecoveryEmail($email, $recovery_code);
		if ($result) return $this->returnPageMessage("SUCCESS_FORGOT", $this->config->address."?view=message");
		else return $this->unknownError($link_reg);
	}
	
	public function recovery() {
		$link_recovery = $this->config->address."?view=recovery";
		$email = $this->db->getField("users", "email", "recovery_code", $_SESSION["recovery_code"]);
		$password = $this->data["password"];
		if ($password == "") return $this->unknownError($link_recovery);
		if ($email == "") return $this->unknownError($link_recovery);
		$password = $this->hashPassword($password);
		$result = $this->db->setField("users", "password", $password, "email", $email);
		if ($result) {
		$this->db->setField("users", "recovery_code", "", "recovery_code", $_SESSION["recovery_code"]);
		unset($_SESSION["recovery_code"]);
		return $this->returnPageMessage("SUCCESS_RECOVERY", $this->config->address."?view=message");
		}
		else return $this->unknownError($link_recovery);
	}
	
	private function hashPassword($password) {
		return md5($password.$this->config->secret);
	} 
	
	private function unknownError($r) {
		return $this->returnMessage("UNKNOWN_ERROR", $r);
	}
	
	private function returnMessage($message, $r) {
		$_SESSION["message"] = $message;
		return $r;
	}
	
	private function returnPageMessage($message, $r) {
		$_SESSION["page_message"] = $message;
		return $r;
	}
	
}
?>