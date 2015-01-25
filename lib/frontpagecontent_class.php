<?php
require_once "modules_class.php";

class FrontPageContent extends Modules {

	private $articles;
	private $page;
	
	public function __construct($db) {
		parent::__construct($db);
		$this->articles = $this->article->getAllSortDate();
		$this->page = (isset($this->data["page"]))? $this->data["page"]: 1;
		if ($this->page <= 0) $this->notFound();
		$this->count_pages = ceil(count($this->articles) / $this->config->count_blog);
		if ($this->page > $this->count_pages) $this->notFound();
	}
	
	protected function getTitle() {
		if ($this->page > 1) return "Фоторесурс - Страница".$this->page;
		else return "Фоторесурс";
	}
	
	protected function getDescription() {
		return "Фоторесурс";
	}
	
	protected function getKeyWords() {
		return "Фоторесурс, фото, фотография";
	}
	
	protected function getTop() {
		return $this->getTemplate("main_article");
	}
	
	protected function getMiddle() {
		return $this->getBlogArticles($this->articles, $this->page);
	}
	
	protected function getBottom() {
		return $this->getPagination(count($this->articles), $this->config->count_blog, $this->config->address);
	}
	
}
?>