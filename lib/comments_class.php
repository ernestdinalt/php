<?php
require_once "global_class.php";
require_once "database_class.php";
require_once "modules_class.php";

class Comments extends GlobalClass {
	
	public function __construct($db) {
		parent::__construct("comments", $db);
		$this->db = $db;
	}
	
	public function getComments($id) {
		$comments = $this->db->getAllOnField("comments", "article_id", $id, "", "");
		for ($i = 0; $i < count($comments); $i++) {
			$sr["name"] = $comments[$i]["name"];
			$sr["text"] = $comments[$i]["text"];
			$text .= $this->getReplaceTemplate($sr, "comments");
		}
		$sr["comments"] = $text;
		$sr["id"] = $id;
		return $this->getReplaceTemplate($sr, "form_comments");
		print_r($comments_name);
	}
	
	public function addComment($name, $text, $article_id) {
		return $this->add(array("article_id" => $article_id, "name" => $name, "text" => $text));
	}
	
	protected function getTemplate($name) {
		$text = file_get_contents($this->config->dir_tmpl.$name.".tpl");
		return str_replace("%address%", $this->config->address, $text);
	}
	
	protected function getReplaceTemplate($sr, $template) {
		return $this->getReplaceContent($sr, $this->getTemplate($template));
	}
	
	private function getReplaceContent($sr, $content) {
		$search = array();
		$replace = array();
		$i = 0;
		foreach ($sr as $key => $value) {
			$search[$i] = "%$key%";
			$replace[$i] = $value;
			$i++;
		}
		return str_replace($search, $replace, $content);
	}
}
?>