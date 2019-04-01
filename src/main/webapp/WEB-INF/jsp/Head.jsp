<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default" role="navigation">
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
                                    <a href="SearchProject">搜索项目</a>
                                </li>
                                <li>
                                    <a href="CreatProject">创建项目</a>
                                </li>
                                <li class="divider">我的项目
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
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">我的任务</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">${sessionScope.user.userName}<strong class="caret"></strong></a>
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
