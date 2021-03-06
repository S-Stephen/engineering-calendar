% from bottle import request
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html>
	<head>
		<link rel="icon" type="image/png" href="http://cdn.dustball.com/calendar.png">
		<title>{{term.title()}} calendars</title>
		<style type="text/css">
		  html {background-color: #eee; font-family: sans;}
		  body {background-color: #fff; border: 1px solid #ddd;
				padding: 15px; margin: 15px;}
		  pre {background-color: #eee; border: 1px solid #ddd; padding: 5px;}
		</style>
	</head>
	<body>
		<h1>Part {{part.upper()}}, {{term.title()}} lab calendars</h1>
		<ul>
			% urlparts = request.urlparts._replace(scheme='webcal')
			% for name in groups:
				% url = urlparts._replace(path=urlparts.path + '/{}.ics'.format(name)).geturl()
				<li><a href="{{ url }}">{{name}}</a></li>
			% end
		</ul>
		<a href="https://github.com/eric-wieser/engineering-calendar"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_right_orange_ff7600.png" alt="Fork me on GitHub"></a>
	</body>
</html>