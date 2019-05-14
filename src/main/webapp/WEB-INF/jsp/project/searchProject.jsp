
<%--
  Created by IntelliJ IDEA.
  User: ljx
  Date: 2019/3/30
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<jsp:include page="../Head.jsp" />
<script type="text/javascript">
    // 更改title
    document.getElementsByTagName("title")[0].innerText = '搜索项目';
</script>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form action="/user/searchProject" method="post">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row clearfix">
                        <div class="col-md-3 column">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">项目名称:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="projectName" name="projectName" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 column">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">项目代号:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="projectCode" name="projectCode" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 column">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">创建人姓名:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="userName" name="userName"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 column">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">创建人账户:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="userId" name="userId"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row clearfix">
                        <div class="col-md-4 column">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">创建时间:</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" id="projectDate" name="projectDate" onclick="WdatePicker({startDate:'2019-01-01 00:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss'})" />
                                    </div>
                                    <label class="col-sm-1 control-label">~</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" id="projectToDate" name="projectToDate" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd HH:mm:ss'})" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 column">
                        </div>
                        <div class="col-md-3 column">
                        </div>
                        <div class="col-md-2 column">
                            <button type="submit" class="btn btn-default  btn-primary  btn-block " value="搜索" style="text-shadow: black 5px 3px 3px;">搜索&nbsp;&nbsp;<span class="glyphicon glyphicon-search"></span></button>
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>

    <c:forEach items="${pageInfo.list}" var="p">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="panel panel-default"  >
                    <div class="panel-body">

                        <div class="row clearfix">
                            <div class="col-md-10 column">
                                <h1>
                                    ${p.projectName}<small>&nbsp;项目</small>
                                </h1>
                            </div>

                        </div>
                        <%--<div class="row clearfix">--%>
                            <%--<div class="col-md-9 column">--%>
                                <%--<span class="label label-primary">${p.projectCode}</span>--%>
                                <%--<span class="label label-primary">Java</span>--%>
                                <%--<span class="label label-primary">develop</span>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <div class="row clearfix">
                            <div class="col-md-1 column">
                                <h5>
                                    创建人:
                                </h5>
                                <h5>
                                    创建时间:
                                </h5>
                                <h5>
                                    项目简介:
                                </h5>
                            </div>
                            <div class="col-md-9 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                <h5 >
                                    ${p.userName}
                                </h5>
                                <h5 >
                                    ${p.projectDate}
                                </h5>
                                <h5 >
                                    ${p.projectDescribe}
                                </h5>
                            </div>
                            <div class="col-md-2 column" >
                                <br/>
                                <br/>
                                <br/>
                                <p>
                                    <a class="btn btn btn-outline btn-info btn-block" href="/user/projectInfo?projectId=${p.projectId}">
                                        查看更多&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>
                                        <%--&nbsp;&nbsp;&nbsp;»--%>
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr />
        </div>
    </c:forEach>


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
<jsp:include page="../Footer.jsp"/>









<c:forEach items="${pageInfo.list}" var="p">
    ……
    <h1>
            ${p.projectName}<small>&nbsp;项目</small>
    </h1>
    ……
    <div class="col-md-9 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
        <h5 >
            创建人: ${p.userName}
        </h5>
        <h5 >
            创建时间:   ${p.projectDate}
        </h5>
        <h5 >
            项目简介:   ${p.projectDescribe}
        </h5>
    </div>
    ……
</c:forEach>