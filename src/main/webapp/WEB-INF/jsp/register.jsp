<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Bootstrap -->
    <%--<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <%--<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>--%>
    <%--<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <script src="/frame/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="/frame/assets/css/bootstrap.css" rel="stylesheet">
    <script src="/frame/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link href="/frame/css/fore/style.css" rel="stylesheet">
    <title>注册</title>
    <style type="text/css">
        .translucent {
            padding: 30px 50px;
            width: 440px;
            background: rgba(255,255,255,0.7);
            height: 380px;
            margin: auto;
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
        }
    </style>
    <script type="text/javascript">
        $(function(){

            <c:if test="${!empty error}">
            $("span.errorMessage").html("${error}");
            $("div.loginErrorMessageDiv").show();
            </c:if>

            $("form input").keyup(function(){
                $("div.loginErrorMessageDiv").hide();
            });
        })
    </script>
</head>
<body  style="background-image : url('/images/4.jpg');background-position:center; background-attachment:fixed;">
<div class="container">
    <div class="loginErrorMessageDiv" style="display: none;">
        <div class="alert alert-danger alert-dismissable" style="width:500px;text-align: center;margin: 0 auto">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                &times;
            </button>
            <span class="errorMessage"></span>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-4 column">
        </div>
        <div class="translucent">
            <div class="col-md-12 column">
                <h3>注册：</h3>
                <form action="register" method="post">
                    <div class="form-group">
                        <input type="text" class="form-control" id="userId" name="userId" placeholder="账户"/>
                    </div>
                    <div>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="userName" name="userName" placeholder="姓名"/>
                    </div>
                    <div>
                    </div>
                    <%--<div class="form-group">--%>
                        <%--<input type="text" class="form-control" id="userEmail" name="userEmail" placeholder="邮箱"/>--%>
                    <%--</div>--%>
                    <%--<div>--%>
                    <%--</div>--%>
                    <div class="form-group">
                        <input type="password" class="form-control" id="userPwd" name="userPwd" placeholder="密码" />
                    </div>
                    <div>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="userPwdConfirm" name="userPwdConfirm" placeholder="确认密码" />
                    </div>
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                            <input type="submit" class="btn btn-default  btn-primary  btn-block" value="注册"></input>
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
