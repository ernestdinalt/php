<!DOCTYPE html1 PUBLIC "//-W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>%title%</title>
	<meta http-equiv="Content-type" content="twxt/html"; charset=utf-8" />
	<meta name="description" content="%meta_desc%" />
	<meta name="keywords" content="%meta_key%" />
	<link rel="stylesheet" href="%address%css/main.css" type="text/css" />
</head>
<body> 
	<div id="content">
		<div id="header">
			<img src="img/cloud.jpg" alt="cloud" height="100" width="282">
		</div>
	</div>
	<hr />
	<div id="main_content">
		<div id="left">
			<h2>Меню</h2>
			<ul>%menu%</ul>
			%auth_user%
		</div>
		<div id="right">
			<form name="search" action="%address%" method="get">
				<p>
					Поиск: <input type="text" name="words" />
				</p>
				<p>
					<input type="hidden" name="view" value="search" />
					<input type="submit" name="search" value="Искать" />
				</p>
			</form>
			<h2>Реклама</h2>
				<!-- START OF HIT COUNTER CODE -->
				<br><script language="JavaScript" src="http://www.counter160.com/js.js?img=6"></script><br><a href="http://www.000webhost.com"><img src="http://www.counter160.com/images/6/left.png" alt="Free web hosting" border="0" align="texttop"></a><a href="http://www.hosting24.com"><img alt="Web hosting" src="http://www.counter160.com/images/6/right.png" border="0" align="texttop"></a>
				<!-- END OF HIT COUNTER CODE -->
			%poll%
		</div>
		<div id="center">
			%top%
			%middle%
			%bottom%
		</div>
		<div class="clear"></div>
		<hr />
		<div id="footer">
			<p>Все права защищены &copy; 2014</p>
		</div>
	</div>
</body>
</html>