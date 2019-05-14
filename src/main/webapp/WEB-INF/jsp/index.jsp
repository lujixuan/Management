<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- 引入联网JQ和Bootstrap -->
    <%--<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <%--<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>--%>
    <%--<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <%-- 引入本地JQ和Bootstrap--%>
    <script src="/frame/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="/frame/assets/css/bootstrap.css" rel="stylesheet">
    <script src="/frame/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link href="/frame/css/fore/style.css" rel="stylesheet">
    <link href="/frame/assets/css/docs.min.css" rel="stylesheet">
    <link href="/frame/assets/css/patch.css" rel="stylesheet">

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

<body class="bs-docs-home">
<a id="skippy" class="sr-only sr-only-focusable" href="#content"><div class="container"><span class="skiplink-text">Skip to main content</span></div></a>

<!-- Docs master nav -->
<header class="navbar bs-docs-nav navbar-fixed-top" id="top">
    <div class="container">
        <div class="navbar-header">
            <a href="/user/index" class="navbar-brand">Agile</a>
        </div>
        <nav id="bs-navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li>
                    <a href="/user/index">主页</a>
                </li>

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/user/login" >登录</a></li>
                <li><a href="/user/registerPage" >注册</a></li>
            </ul>
        </nav>
    </div>
</header>


<!-- Page content of course! -->
<main class="bs-docs-masthead" id="content" tabindex="-1">
    <div class="container">
        <h1>欢迎</h1>
        <hr class="half-rule">
        <p class="lead">
            这是一款基于敏捷方法的项目开发管理系统，使用该系统可以更方便的管理项目开发进度。
        </p>
        <p class="lead">
            <a href="/user/login" class="btn btn-outline-inverse btn-lg" >加入</a>
        </p>
    </div>
</main>

<div class="bs-docs-featurette">
    <div class="container">
        <h2 class="bs-docs-featurette-title">什么是敏捷开发管理？</h2>
        <hr class="half-rule">
        <p class="lead"> 敏捷开发以用户的需求进化为核心，采用迭代、循序渐进的方法进行软件开发。在敏捷开发中，软件项目在构建初期被切分成多个子项目，各个子项目的成果都经过测试，具备可视、可集成和可运行使用的特征。换言之，就是把一个大项目分为多个相互联系，但也可独立运行的小项目，并分别完成，在此过程中软件一直处于可使用状态。</p>
        <hr/>
        <hr class="half-rule">

        <div class="row">
            <div class="col-sm-4">
                <h2><span class="glyphicon glyphicon-flash btn-lg" ></span>快速</h2>
                <p>敏捷团队只专注于开发项目中当前最需要的、最具价值的部分。这样能很快地投入开发。另外,较短的迭代周期使团队成员能迅速进入开发状态。</p>
            </div>
            <div class="col-sm-4">
                <h2><span class="glyphicon glyphicon-file btn-lg"></span>变化</h2>

                <p>敏捷方法拥抱需求的变化，利用变化来为客户创造竞争优势，即使到了开发后期也欢迎改变需求 ，这相对于传统方法由很大的优势。</p>
            </div>
            <div class="col-sm-4">
                <h2><span class="glyphicon glyphicon-check btn-lg"></span>质量</h2>

                <p>敏捷方法对每一次迭代周期的质量都有严格要求。在每个任务上线前都要进行测试，这些为敏捷项目的整个开发周期提供了可靠的质量保证。 </p>
            </div>
        </div>

        <hr class="half-rule">

        <a href="/user/login" class="btn btn-outline btn-lg">现在加入 »</a>
    </div>
</div>



<%--<body>--%>
<%--<div class="container">--%>
    <%--<div class="row clearfix">--%>
        <%--<div class="col-md-12 column">--%>
            <%--<nav class="navbar navbar-default navbar-fixed-top" > &lt;%&ndash;role="navigation">&ndash;%&gt;--%>
                <%--<div class="navbar-header">--%>
                    <%--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Agile</a>--%>
                <%--</div>--%>
                <%--<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">--%>
                    <%--<ul class="nav navbar-nav">--%>
                        <%--<li class="active">--%>
                            <%--<a href="#">主页</a>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                    <%--<ul class="nav navbar-nav navbar-right">--%>
                        <%--<li>--%>
                            <%--<a href="/user/login">登录</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="/user/registerPage">注册&nbsp;&nbsp;&nbsp;&nbsp;</a>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</div>--%>
            <%--</nav>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
<%--<div class="page">--%>
<%--<div class="container">--%>
    <%--<div class="row clearfix">--%>
        <%--<div class="col-md-12 column">--%>
            <%--<div class="jumbotron">--%>
                <%--<h1>--%>
                    <%--欢迎!--%>
                <%--</h1>--%>
                <%--<p>--%>
                    <%--欢迎来到项目管理系统，通过该系统你能更好的管理项目开发进度。--%>
                    <%--敏捷开发以用户的需求进化为核心，采用迭代、循序渐进的方法进行软件开发。在敏捷开发中，软件项目在构建初期被切分成多个子项目，各个子项目的成果都经过测试，具备可视、可集成和可运行使用的特征。换言之，就是把一个大项目分为多个相互联系，但也可独立运行的小项目，并分别完成，在此过程中软件一直处于可使用状态。--%>
                <%--</p>--%>
                <%--<p>--%>
                    <%--<a class="btn btn-primary btn-large" href="/user/login">查看更多</a>--%>
                <%--</p>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<div class="row clearfix">--%>
        <%--<div class="col-md-4 column">--%>
            <%--<h2>--%>
                <%--速度--%>
            <%--</h2>--%>
            <%--<p>--%>
                <%--敏捷团队只专注于开发项目中当前最需要的、最具价值的部分。这样能很快地投入开发。另外,较短的迭代周期使团队成员能迅速进入开发状态。--%>
            <%--</p>--%>
            <%--<p>--%>
                <%--<a class="btn" href="/user/login">加入 »</a>--%>
            <%--</p>--%>
        <%--</div>--%>
        <%--<div class="col-md-4 column">--%>
            <%--<h2>--%>
                <%--精确--%>
            <%--</h2>--%>
            <%--<p>--%>
                <%--瀑布模式通常会在产品起点与最终结果之间规划出一条直线,然后沿着直线不断往前走。然而当项目到达终点时,用户通常会发现那已经不是他们想去的地方。而敏捷方法则采用小步快跑,每走完一步再调整并为下一步确定方向,直到真正的终点。--%>
            <%--</p>--%>
            <%--<p>--%>
                <%--<a class="btn" href="/user/login">加入 »</a>--%>
            <%--</p>--%>
        <%--</div>--%>
        <%--<div class="col-md-4 column">--%>
            <%--<h2>--%>
                <%--质量--%>
            <%--</h2>--%>
            <%--<p>--%>
                <%--敏捷方法对每一次迭代周期的质量都有严格要求。一些敏捷方法如极限编程等,甚至使用测试驱动开发(test-driven development),即在正式开发功能代码之前先开发该功能的测试代码。这些都为敏捷项目的整个开发周期提供了可靠的质量保证。--%>
            <%--</p>--%>
            <%--<p>--%>
                <%--<a class="btn" href="/user/login">加入 »</a>--%>
            <%--</p>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<jsp:include page="Footer.jsp" />