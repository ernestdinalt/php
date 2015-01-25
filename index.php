<?php
	mb_internal_encoding("UTF-8");
	require_once "lib/database_class.php";
	require_once "lib/frontpagecontent_class.php";
	require_once "lib/sectioncontent_class.php";
	require_once "lib/articlecontent_class.php";
	require_once "lib/regcontent_class.php";
	require_once "lib/messagecontent_class.php";
	require_once "lib/verificationcontent_class.php";
	require_once "lib/forgotcontent_class.php";
	require_once "lib/recoverycontent_class.php";
	require_once "lib/searchcontent_class.php";
	require_once "lib/notfoundcontent_class.php";
	require_once "lib/pollcontent_class.php";

	$db = new DataBase();
	$view = $_GET["view"];
	switch ($view) {
		case "":
			$content = new FrontPageContent($db);
			break;
		case "section":
			$content = new SectionContent($db);
			break;
		case "article":
			$content = new ArticleContent($db);
			break;
		case "reg":
			$content = new RegContent($db);
			break;
		case "message":
			$content = new MessageContent($db);
			break;
		case "verification":
			$content = new VerificationContent($db);
			break;
		case "forgot":
			$content = new ForgotContent($db);
			break;
		case "recovery":
			$content = new RecoveryContent($db);
			break;
		case "search":
			$content = new SearchContent($db);
			break;
		case "poll":
			$content = new PollContent($db);
			break;
		default: $content = new NotFoundContent($db);
	}

	echo $content->getContent();
	echo "<!-- START OF HIT COUNTER CODE -->
<br><script language='JavaScript' src='http://www.counter160.com/js.js?img=6'></script><br><a href='http://www.000webhost.com'><img src='http://www.counter160.com/images/6/left.png' alt='Free web hosting' border='0' align='texttop'></a><a href='http://www.hosting24.com'><img alt='Web hosting' src='http://www.counter160.com/images/6/right.png' border='0' align='texttop'></a>
<!-- END OF HIT COUNTER CODE -->
";
?>