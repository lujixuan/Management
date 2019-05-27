<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- 引入联网JQ和Bootstrap -->
    <%--<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <%--<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>--%>
    <%--<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <%-- 引入本地JQ和Bootstrap --%>
    <script src="/frame/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="/frame/assets/css/bootstrap.css" rel="stylesheet">
    <script src="/frame/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link href="/frame/css/fore/style.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/frame/js/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/frame/js/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="/frame/js/vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/frame/js/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/frame/js/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="/frame/js/vendor/raphael/raphael.min.js"></script>
    <script src="/frame/js/vendor/morrisjs/morris.min.js"></script>
    <%--<script src="/frame/js/data/morris-data.js"></script>--%>

    <!-- Custom Theme JavaScript -->
    <script src="/frame/js/dist/js/sb-admin-2.js"></script>

    <!-- 引用wangEditor js -->
    <script type="text/javascript" src="/frame/js/wangEditor/wangEditor.js"></script>

    <%-- 引入日期选择控件 --%>
    <link href="/frame/datetimepicker/css/datetimepicker.css" rel="stylesheet" media="screen">

    <title>敏捷开发管理系统</title>
    <style>
        .bs-docs-footer {
            padding-top: 25px;
            padding-bottom: 16px;
            text-align: center;
            color: #99979c;
            background-color: #2a2730;
            margin-top: -90px;
        }
        .bs-docs-footer a {
            color: #FFF;
        }
        .bs-docs-footer-links {
            padding-left: 0;
            margin-bottom: 10px;
        }
        .bs-docs-footer-links li {
            display: inline-block;
        }
        .bs-docs-footer-links li + li {
            margin-left: 10px;
        }
        body {
            padding-top: 60px;
        }
        .page{
            box-sizing: border-box;/*为元素指定的任何内边距和边框都将在已设定的宽度和高度内进行绘制*/
            min-height: 100%;
            padding-bottom: 100px;
        }

    </style>
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default navbar-fixed-top" > <%--role="navigation">--%>
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="personal">Agile</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">总览：${sessionScope.nowProjectName}<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <c:forEach items="${sessionScope.loginUserProjectList}" var="lp">
                                    <li>
                                        <a href="/user/personal?projectId=${lp.projectId}&loginUserId=${sessionScope.user.userId}">${lp.projectName}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">项目<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="SearchProjectPage">搜索项目</a>
                                </li>
                                <li>
                                    <a href="CreatProjectPage">创建项目</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="MyProject?loginUserId=${sessionScope.user.userId}">我的项目</a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">任务<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="/user/SearchTask?loginUserId=${sessionScope.user.userId}">搜索任务</a>
                                </li>
                                <li>
                                    <a data-toggle="modal" data-target="#createTaskModal">创建任务</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="/user/MyTaskPage">我的任务</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">${sessionScope.user.userName}<strong class="caret"></strong>&nbsp;&nbsp;&nbsp;&nbsp;</a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a data-toggle="modal" data-target="#changePwdModal">修改密码</a>
                                </li>
                                <li>
                                    <a href="/user/userMessagePage?loginUserId=${sessionScope.user.userId}">申请消息</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="/user/outLogin">退出</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</div>

<!-- 模态框（Modal）创建任务 -->
<div class="modal fade" id="createTaskModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:400px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    请选择任务所属项目
                </h4>
            </div>
            <div class="modal-body">
                <c:forEach items="${loginUserProjectList}" var="lp">
                        <a href="/user/CreateTaskPage?projectId=${lp.projectId}&projectName=${lp.projectName}" class="btn btn-default  btn-primary  btn-block ">${lp.projectName}</a>
                </c:forEach>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<!-- 模态框（Modal）修改密码 -->
<div class="modal fade" id="changePwdModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:400px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabe2">
                    修改密码
                </h4>
            </div>
            <form action="/user/ChangePwd" method="post">
                <div class="modal-body">
                    <br/>
                    <div class="form-group">
                        <input type="password" class="form-control" id="userOldPwd" name="userOldPwd" placeholder="旧密码" />
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="userPwd" name="userPwd" placeholder="新密码" />
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="userPwdConfirm" name="userPwdConfirm" placeholder="确认密码" />
                    </div>
                    <div class="form-group">
                        <input type="text" value="${sessionScope.user.userId}" class="form-control" id="userId" name="userId" style="display: none"/>
                    </div>
                </div>
                <div class="modal-footer" style="margin-top: 5px">
                    <div class="row clearfix">
                        <div class="col-md-6 column">
                            <button type="button" class="btn btn-default btn-block" data-dismiss="modal">取消
                            </button>
                        </div>
                        <div class="col-md-6 column">
                            <input type="submit" class="btn btn-default  btn-primary  btn-block" value="修改">
                        </div>
                    </div>
                </div>
            </form>

        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<div class="page">
