<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>登录</title>
	<style type="text/css">
		.translucent {
			padding: 30px 50px;
			width: 450px;
			background: rgba(255,255,255,0.7);
			height: 310px;
			margin: auto;
			position: absolute;
			top: 0;
			left: 0;
			bottom: 0;
			right: 0;
		}
	</style>
</head>
<body  style="background-image : url('/images/4.jpg'); background-position:center; background-attachment:fixed;">
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-4 column">
				</div>
				<div class="translucent">
				<div class="col-md-12 column">
					<h3>请登录：</h3>
					<form action="checkLogin" method="post">
						<div class="form-group">
							<input type="text" class="form-control" id="userId" name="userId" placeholder="账户"/>
						</div>
					    <div>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="userPwd" name="userPwd" placeholder="密码" />
						</div>
						<div class="checkbox">
							<label><input type="checkbox" />记住我</label>
						</div>
					<div class="row clearfix">
						<div class="col-md-6 column">
							<input type="submit" class="btn btn-default  btn-primary  btn-block" value="登录" />
						</div>
						<div class="col-md-6 column">
							<a type="button" class="btn  btn-primary btn-block btn-danger" href="registerPage">注册</a>
						</div>
					</div>
					</form>
				</div>
				</div>
				<div class="col-md-4 column">
				</div>
			</div>
		</div>
</body>
</html>

