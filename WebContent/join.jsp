<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/custom.css">
		<title>JSP掲示板ウェブサイト </title>
	</head>
<body>
	<nav class="navbar navbar-default">
	 	<div class="navbar-header">
	 		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
	 				data-target="#bs-example-navbar-collapse-1"	aria-expanded="false">
	 			<span class="icon-bar"></span>
	 			<span class="icon-bar"></span>
	 			<span class="icon-bar"></span>
	 		</button>
	 		<a class="navbar-brand" href="main.jsp">JSP掲示板ウェブサイト</a>
	 	</div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	 	<ul class="nav navbar-nav">
				<li><a href="main.jsp">main</a></li>
				<li><a href="bbs.jsp">掲示板</a></li>
			</ul>
	 	<ul class="nav navnar-nav navbar-right">
	 		<li class="dropdown">
	 			<a href="#" class="dropdown-toggle"
	 				data-toggle="dropdown" role="button" aria-haspopup="true"
	 				aria-expanded="false">接続する<span class="caret"></span></a>
	 			<ul class="dropdown-menu">
	 				<li><a href="login.jsp">ログイン</a></li>
	 				<li class="active"><a href="join.jsp">会員登録</a></li>
	 				</ul>
	 			</li>
	 		</ul>
		</div>
	</nav>
		<div class="container">
		<div class="col-lg=4"></div>
		<div class="col-lg=4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="joinAction.jsp">
					<h3 style="text-align: center;">会員登録画面</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="ID" name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="暗証番号" name="userPassword" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="名前" name="userName" maxlength="20">
					</div>
					<div class="form-group" style="text-align: center;">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active">
								<input type="radio" name="userGender" autocomplete="off" value="man" checked>男性
							</label>
							<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary">
								<input type="radio" name="userGender" autocomplete="off" value="girl" checked>女性
								</label>
							</div>
						</div>
						<div class="form-group">
						<input type="email" class="form-control" placeholder="メールアドレス" name="userEmail" maxlength="50">
						</div>
					</div>
					<input type="submit" class="btn btn-promary form-control" value="登録">
				</form>
			</div>	
		</div>
		<div class="col-lg-4"></div>
	 	</div>

<script src="js/bootstrap.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>