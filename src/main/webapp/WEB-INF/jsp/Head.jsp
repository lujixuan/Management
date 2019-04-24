<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- 引入联网JQ和Bootstrap -->
    <%--<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <%--<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>--%>
    <%--<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <%-- 引入本地JQ和Bootstrap --%>
    <script src="/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="/assets/css/bootstrap.css" rel="stylesheet">
    <script src="/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link href="/css/fore/style.css" rel="stylesheet">
    <%-- 引入日期选择控件 --%>
    <script type="text/JavaScript" src="/My97DatePicker/WdatePicker.js"></script>

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
                        <li >
                            <a href="personal">主页</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">项目<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="SearchProjectPage">搜索项目</a>
                                </li>
                                <li>
                                    <a href="CreatProject">创建项目</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="MyProject">我的项目</a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">任务<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="SearchProject">搜索任务</a>
                                </li>
                                <li>
                                    <a href="CreatProject">创建任务</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="MyProject">我的任务</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">${sessionScope.user.userName}<strong class="caret"></strong>&nbsp;&nbsp;&nbsp;&nbsp;</a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">我的信息</a>
                                </li>
                                <li>
                                    <a href="#">我的项目</a>
                                </li>
                                <li>
                                    <a href="#">我的任务</a>
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
<div class="page">
