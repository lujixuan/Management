<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>个人主页</title>
</head>
<body>
<jsp:include page="Head.jsp" />

<div class="container">
    <div class="row clearfix">
        <div class="col-md-6 column">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="panel panel-default">
                        <div class="panel-body">
                    <h4 class="text-info">
                        总览
                    </h4>
                    <ul class="nav nav-pills">
                        <li class="active">
                            <a href="#"> <span class="badge pull-right">3</span> 我的项目</a>
                        </li>
                        <li class="active">
                            <a href="#"> <span class="badge pull-right">12</span> 未解决问题</a>
                        </li>
                        <li class="active">
                            <a href="#"> <span class="badge pull-right">23</span> 所有问题</a>
                        </li>
                    </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="panel panel-default">
                        <div class="panel-body">
                    <h4 class="text-info">
                        我的未解决问题
                    </h4>
                    <table class="table">
                        <thead>
                        <tr>
                            <th>
                                问题
                            </th>
                            <th>
                                描述
                            </th>
                            <th>
                                截至时间
                            </th>
                            <th>
                                优先级
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                PP-88
                            </td>
                            <td>
                                你好！有任务！
                            </td>
                            <td>
                                2019-05-20
                            </td>
                            <td>
                                高
                            </td>
                        </tr>
                        <tr class="success">
                            <td>
                                DK-124
                            </td>
                            <td>
                                输出表里再加字段
                            </td>
                            <td>
                                2019-04-28
                            </td>
                            <td>
                                高
                            </td>
                        </tr>
                        <tr class="error">
                            <td>
                                DK-145
                            </td>
                            <td>
                                不重要的
                            </td>
                            <td>
                                2019-05-20
                            </td>
                            <td>
                                低
                            </td>
                        </tr>
                        <tr class="warning">
                            <td>
                                IO-12
                            </td>
                            <td>
                                IO项目任务
                            </td>
                            <td>
                                2019-05-20
                            </td>
                            <td>
                                高
                            </td>
                        </tr>
                        </tbody>
                    </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 column">
            <div class="panel panel-default">
                <div class="panel-body">
            <h4 class="text-info">
                项目最新问题
            </h4>
            <table class="table">
                <thead>
                <tr>
                    <th>
                        问题
                    </th>
                    <th>
                        描述
                    </th>
                    <th>
                        截至时间
                    </th>
                    <th>
                        优先级
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr class="error">
                    <td>
                        PP-88
                    </td>
                    <td>
                        你好！有任务！
                    </td>
                    <td>
                        2019-05-20
                    </td>
                    <td>
                        高
                    </td>
                </tr>
                <tr class="success">
                    <td>
                        DK-124
                    </td>
                    <td>
                        输出表里再加字段
                    </td>
                    <td>
                        2019-04-28
                    </td>
                    <td>
                        高
                    </td>
                </tr>
                <tr class="error">
                    <td>
                        DK-145
                    </td>
                    <td>
                        不重要的
                    </td>
                    <td>
                        2019-05-20
                    </td>
                    <td>
                        低
                    </td>
                </tr>
                <tr class="warning">
                    <td>
                        IO-12
                    </td>
                    <td>
                        有项目任务
                    </td>
                    <td>
                        2019-05-20
                    </td>
                    <td>
                        高
                    </td>
                </tr>
                <tr>
                    <td>
                        PP-89
                    </td>
                    <td>
                        任务描述！！
                    </td>
                    <td>
                        2019-05-20
                    </td>
                    <td>
                        高
                    </td>
                </tr>
                <tr class="success">
                    <td>
                        DK-124
                    </td>
                    <td>
                        输出表里再加字段
                    </td>
                    <td>
                        2019-04-28
                    </td>
                    <td>
                        高
                    </td>
                </tr>
                <tr class="error">
                    <td>
                        DK-1450
                    </td>
                    <td>
                        不重要的
                    </td>
                    <td>
                        2019-05-20
                    </td>
                    <td>
                        低
                    </td>
                </tr>
                <tr class="warning">
                    <td>
                        IO-123
                    </td>
                    <td>
                        IO项目任务
                    </td>
                    <td>
                        2019-05-20
                    </td>
                    <td>
                        高
                    </td>
                </tr>
                </tbody>
            </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
