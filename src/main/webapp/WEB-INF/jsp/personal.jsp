<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="Head.jsp" />
<script type="text/javascript">
    // 更改title
    document.getElementsByTagName("title")[0].innerText = '个人主页';
</script>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-6 column">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4 >
                                    总览
                                </h4>
                            </div>
                        </div>
                        <div class="panel-body">
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
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h4 >
                                我的未解决问题
                            </h4>
                        </div>
                        <div class="panel-body">
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
                                    <c:forEach items="${problem}" var="p">
                                        <tr>
                                            <td>
                                                ${p.id}
                                            </td>
                                            <td>
                                                ${p.introduction}
                                            </td>
                                            <td>
                                                ${p.date}
                                            </td>
                                            <td>
                                                ${p.level}
                                            </td>
                                        </tr>
                                    </c:forEach>
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

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 column">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4 >
                        项目最新问题
                    </h4>
                </div>
                <div class="panel-body">
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
                            <c:forEach items="${allProblem}" var="a">
                                <tr>
                                    <td>
                                            ${a.id}
                                    </td>
                                    <td>
                                            ${a.introduction}
                                    </td>
                                    <td>
                                            ${a.date}
                                    </td>
                                    <td>
                                            ${a.level}
                                    </td>
                                </tr>
                            </c:forEach>
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
<jsp:include page="Footer.jsp" />
