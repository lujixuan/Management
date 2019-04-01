<%--
  Created by IntelliJ IDEA.
  User: ljx
  Date: 2019/3/30
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>搜索项目</title>
</head>
<body>
<jsp:include page="Head.jsp" />

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row clearfix">
                        <div class="col-md-3 column">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">名称:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="userId" name="userId" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 column">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">创建人:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="userId" name="userId" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 column">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">书名:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="userId" name="userId" placeholder="账户"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 column">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">大小:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="userId" name="userId" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row clearfix">

                        <div class="col-md-3 column">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">参与人数:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="userId" name="userId" placeholder="账户"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 column">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">类型:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="userId" name="userId" placeholder="账户"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 column">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">创建时间:</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" id="userId" name="userId" placeholder="账户"/>
                                    </div>
                                    <label class="col-sm-1 control-label">~</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" id="userId" name="userId" placeholder="账户"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 column">
                            <input type="submit" class="btn btn-default  btn-primary  btn-block" value="搜索" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">

        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="page-header">
                        <h1>
                            网上书店 <small>这是一个Java语言编写的网上书店项目。</small>
                        </h1>
                    </div>
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                            <span class="label label-default">Java</span>
                            <span class="label label-default">购物</span>
                            <span class="label label-default">课设</span>
                        </div>
                    </div>
                    <h3>
                        简介：
                    </h3>
                    <p>
                        这是一个Java项目，可以网上购物等，很好的项目！
                        欢迎加入
                    </p>
                    <p>
                        <a class="btn" href="#">查看更多 »</a>
                    </p>
                </div>
            </div>
        </div>
        <hr />
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="page-header">
                        <h1>
                            购物网站 <small>这是一个C#语言编写的网上购物项目。</small>
                        </h1>
                    </div>
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                            <span class="label label-default">C#</span>
                            <span class="label label-default">购物</span>
                            <span class="label label-default">课设</span>
                        </div>
                    </div>
                    <h3>
                        简介：
                    </h3>
                    <p>
                        这是一个C#项目，可以网上购物等，很好的项目！
                        欢迎加入
                    </p>
                    <p>
                        <a class="btn" href="#">查看更多 »</a>
                    </p>
                </div>
            </div>
        </div>
        <hr />
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="page-header">
                        <h1>
                            图书馆管理系统 <small>这是一个Python语言编写的项目。</small>
                        </h1>
                    </div>
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                            <span class="label label-default">Python</span>
                            <span class="label label-success">管理</span>
                            <span class="label label-info">课设</span>
                        </div>
                    </div>
                    <h3>
                        简介：
                    </h3>
                    <p>
                        这是一个Python项目，可以网上购物等，很好的项目！
                        欢迎加入
                    </p>
                    <p>
                        <a class="btn" href="#">查看更多 »</a>
                    </p>
                </div>
            </div>
        </div>
        <hr />
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <ul class="pagination">
                <li>
                    <a href="#">首页</a>
                </li>
                <li>
                    <a href="#">1</a>
                </li>
                <li>
                    <a href="#">2</a>
                </li>
                <li>
                    <a href="#">3</a>
                </li>
                <li>
                    <a href="#">4</a>
                </li>
                <li>
                    <a href="#">5</a>
                </li>
                <li>
                    <a href="#">下一页</a>
                </li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
