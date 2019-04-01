<%--
  Created by IntelliJ IDEA.
  User: ljx
  Date: 2019/3/31
  Time: 11:19
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
    <title>创建项目</title>
</head>
<body>
<jsp:include page="Head.jsp" />

<div class="container">
<div class="row clearfix">
    <div class="col-md-12 column">
        <br />
        <br />
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="row clearfix">
                    <div class="col-md-9 column">
                        <div class="row clearfix">
                            <div class="col-md-4 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">项目名:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="userId" name="userId" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">作者:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="userId" name="userId" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">类型:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="userId" name="userId" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-md-4 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">出版社:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="userId" name="userId" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">出版日期:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="userId" name="userId" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">ISBN:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="userId" name="userId" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="row clearfix">
                            <div class="col-md-4 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">库存:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="userId" name="userId" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">价格:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="userId" name="userId" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">上传图片:</label>
                                        <div class="col-sm-8">
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="userId" name="userId" />
                                                <span class="input-group-btn">
                                                            <input id="Button2" type="button" class="btn-default btn" value="浏览" onclick="BrowseFile();" />
                                                        </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-3 column">
                        <div class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">图片预览:</label>
                                <div class="col-sm-7 thumbnail " >
                                    <input type="text" class="form-control" id="userId" name="userId" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-md-1 column">
                        <label class="control-label pull-right">简介:</label>
                    </div>
                    <div class="col-md-11 column">
                        <input type="text" class="form-control" id="userId" name="userId" />
                    </div>
                </div>
                <br />
                <div class="row clearfix">
                    <div class="col-md-10 column">
                    </div>
                    <div class="col-md-2 column">
                        <input type="submit" class="btn btn-default  btn-primary  btn-block" value="创建" />
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
    </div>
</div>
</div>
</body>
</html>
