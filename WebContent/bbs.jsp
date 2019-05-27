<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@  page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/bootstrap.css">
		<title>JSP掲示板ウェブサイト </title>
	</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
	%>
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
				<li class="active"><a href="bbs.jsp">掲示板</a></li>
			</ul>
			<%
				if(userID == null){
			%>
				<ul class="nav navnar-nav navbar-right">
	 		<li class="dropdown">
	 			<a href="#" class="dropdown-toggle"
	 				data-toggle="dropdown" role="button" aria-haspopup="true"
	 				aria-expanded="false">接続する<span class="caret"></span></a>
	 			<ul class="dropdown-menu">
	 				<li><a href="login.jsp">ログイン</a></li>
	 				<li><a href="join.jsp">会員登録</a></li>
	 				</ul>
	 			</li>
	 		</ul>
			<%
				} else {
			%>
				<ul class="nav navnar-nav navbar-right">
			 		<li class="dropdown">
			 			<a href="#" class="dropdown-toggle"
			 				data-toggle="dropdown" role="button" aria-haspopup="true"
			 				aria-expanded="false">員登管理<span class="caret"></span></a>
			 			<ul class="dropdown-menu">
			 				<li><a href="logoutAction.jsp">ログアウト</a></li>
			 				</ul>
			 			</li>
			 		</ul>
			<%
	 		}
			 %>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="txt-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">番号</th>
						<th style="background-color: #eeeeee; text-align: center;">タイトル</th>
						<th style="background-color: #eeeeee; text-align: center;">作成者</th>
						<th style="background-color: #eeeeee; text-align: center;">作成日</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table> 
			<a href="write.sjp" class="btn btn-primary pull-right">作成</a>
		</div>
	</div>
	

<script src="js/bootstrap.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>