<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		.container{
			padding: 15px;
			border-radius: 20px;
			background: #eee;
			text-align: center;
		}
	</style>
</head>
<body>
	<div class="container">
		<h1>Mail From <b>{{ env('APP_NAME') }}</b></h1>
		<p>{{ $body }}</p>
	</div>
</body>
</html>