<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Colorful Code</title>
		<link type="text/css" rel="stylesheet" href="/static/style.css" />
		<link type="text/css" rel="stylesheet" href="/static/jquery-ui-1.8.18.custom.css">
		<script type="text/javascript" src="/static/jquery-1.7.1.min.js" charset="utf-8"></script>
		<script type="text/javascript" src="/static/jquery-ui-1.8.18.custom.min.js"></script>
		<script type="text/javascript" src="http://malsup.github.com/jquery.form.js" charset="utf-8"></script>
		<script type="text/javascript" src="/static/main.js" charset="utf-8"></script>
	</head>
	<body>
		<h1>代码之美</h1>
		<div class="colorfulcode">
			<div id="tabs">
			<ul>
				<li id=highlight><a href="#tabs-1">高亮</a></li>
				<li id=share><a href="#tabs-2">分享</a></li>
				<li id=onlinecompile><a href="#tabs-3">在线编译</a></li>
			</ul>
			<div id="tabs-1">
				<div id="formforcolor">
				<p>
				<form id="codetocolor" enctype="multipart/form-data" action="#" method="post">
					<textarea id="pastecode" rows="10" cols="45" name="code"></textarea><br />
					或者上传代码:<br />
					<input id="uploadcodefile" type="file" name="codefile" /><br /><br />
					语言:<select name="lang">
					%for lang in langtypes:
						<option value="{{lang}}">{{lang}}</option>
					%end
					</select>
					风格:<select name="style">
					%for style in styles:
						<option value="{{style}}">{{style}}</option>
					%end
					</select>
					保存？<input id="saveornot" type="checkbox" name="save">
					<input id="codeupload" type="submit" value="提交" />
				</form>
				</p>
				HTML代码:<br />
				<textarea id="resulthtmlcode" rows="10" cols="45"></textarea><br />
			</div>
				<div id="codecolored"> 
				</div>
			</div>
			<div id="tabs-2">
				<div id="codefilelist">
				</div>
				<div id="codefilecontent">
				</div>
			</div>
			<div id="tabs-3">
				<div id="sourcecode">
					输入程序：
					<p>
					<form id="compilecode" action="/compilesourcecode" method="post"> 
						<textarea id="sourcecodehere" rows="20" cols="45" name="code2compile"></textarea><br />
						<select id="selectlangtype" name="selectLangtype">
							<option value="c">c</option>
							<option value="c++">c++</option>
							<option value="python">python</option>
							<option value="ruby">ruby</option>
						</select>
						<input type="submit" value="(编译)运行">
					</form>
					</p>
				</div>
				<div id="resultOfcompile">
					输出：<br />
					<p>
					</p>
				</div>
			</div>
		</div>
	</div>
	</body>
</html>
