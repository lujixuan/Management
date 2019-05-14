<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="../Head.jsp" />
<script type="text/javascript">
    // 更改title
    document.getElementsByTagName("title")[0].innerText = '我的项目';
</script>

<div class="container">
    <br/>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="panel panel-default"  >
                    <div class="panel-body">

                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <div class="row clearfix">
                                    <%--<div class="col-md-1 column">--%>
                                    <%--</div>--%>
                                    <div class="col-md-12 column" style="padding-left: 70px; padding-right: 70px">
                                        <div class="row clearfix">
                                            <div class="col-md-9 column">
                                                <h4>
                                                    申请信息:
                                                </h4>
                                            </div>
                                            <div class="col-md-3 column" style="padding-left: 74px;padding-right: 70px;padding-top: 8px">
                                                <a class="btn btn btn-outline btn-info btn-block btn-sm" href="/user/projectInfo?projectId=${p.projectId}">
                                                    同意申请&nbsp;<span class="glyphicon glyphicon-ok"></span>
                                                    <%--&nbsp;&nbsp;&nbsp;»--%>
                                                </a>
                                            </div>

                                            <div class="col-md-12 column" >
                                                <div class="col-md-1 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5>
                                                        申请人:
                                                    </h5>
                                                </div>
                                                <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5 >
                                                        王小明
                                                    </h5>
                                                </div>
                                                <div class="col-md-1 column" style="padding-left: 1px; padding-right: 1px">
                                                    <h5>
                                                        申请账户:
                                                    </h5>
                                                </div>
                                                <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5 >
                                                        xiaoming
                                                    </h5>
                                                </div>
                                                <div class="col-md-1 column" style="padding-left: 1px; padding-right: 1px">
                                                    <h5>
                                                        项目名称:
                                                    </h5>
                                                </div>
                                                <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5 >
                                                        网上书店
                                                    </h5>
                                                </div><div class="col-md-1 column" style="padding-left: 1px; padding-right: 1px">
                                                    <h5>
                                                        邮箱地址:
                                                    </h5>
                                                </div>
                                                <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5 >
                                                        xiaoming@qq.com
                                                    </h5>
                                                </div>
                                            </div>
                                            <div class="col-md-12 column" >
                                                <div class="col-md-1 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5>
                                                        申请理由:
                                                    </h5>
                                                </div>
                                                <div class="col-md-10 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5 >
                                                        我是你们的同学——王小明，我也想加入这个项目，以后可以一起开发.
                                                    </h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="row clearfix">
                            <div class="col-md-1 column">
                            </div>
                            <div class="col-md-9 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                            </div>
                            <div class="col-md-2 column" >
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12 column">
                <div class="panel panel-default"  >
                    <div class="panel-body">

                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <div class="row clearfix">
                                    <%--<div class="col-md-1 column">--%>
                                    <%--</div>--%>
                                    <div class="col-md-12 column" style="padding-left: 70px; padding-right: 70px">
                                        <div class="row clearfix">
                                            <div class="col-md-9 column">
                                                <h4>
                                                    申请信息:
                                                </h4>
                                            </div>
                                            <div class="col-md-3 column" style="padding-left: 74px;padding-right: 70px;padding-top: 8px">
                                                <a class="btn btn btn-outline btn-info btn-block btn-sm" href="/user/projectInfo?projectId=${p.projectId}">
                                                    同意申请&nbsp;<span class="glyphicon glyphicon-ok"></span>
                                                    <%--&nbsp;&nbsp;&nbsp;»--%>
                                                </a>
                                            </div>

                                            <div class="col-md-12 column" >
                                                <div class="col-md-1 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5>
                                                        申请人:
                                                    </h5>
                                                </div>
                                                <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5 >
                                                        李四
                                                    </h5>
                                                </div>
                                                <div class="col-md-1 column" style="padding-left: 1px; padding-right: 1px">
                                                    <h5>
                                                        申请账户:
                                                    </h5>
                                                </div>
                                                <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5 >
                                                        lisi
                                                    </h5>
                                                </div>
                                                <div class="col-md-1 column" style="padding-left: 1px; padding-right: 1px">
                                                    <h5>
                                                        项目名称:
                                                    </h5>
                                                </div>
                                                <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5 >
                                                        网上书店
                                                    </h5>
                                                </div><div class="col-md-1 column" style="padding-left: 1px; padding-right: 1px">
                                                <h5>
                                                    邮箱地址:
                                                </h5>
                                            </div>
                                                <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5 >
                                                        lisi@163.com
                                                    </h5>
                                                </div>
                                            </div>
                                            <div class="col-md-12 column" >
                                                <div class="col-md-1 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5>
                                                        申请理由:
                                                    </h5>
                                                </div>
                                                <div class="col-md-10 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5 >
                                                        我觉得你们项目创意很棒，想加入一起做开发，可以吗？
                                                    </h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="row clearfix">
                            <div class="col-md-1 column">
                            </div>
                            <div class="col-md-9 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                            </div>
                            <div class="col-md-2 column" >
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12 column">
                <div class="panel panel-default"  >
                    <div class="panel-body">

                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <div class="row clearfix">
                                    <%--<div class="col-md-1 column">--%>
                                    <%--</div>--%>
                                    <div class="col-md-12 column" style="padding-left: 70px; padding-right: 70px">
                                        <div class="row clearfix">
                                            <div class="col-md-9 column">
                                                <h4>
                                                    申请信息:
                                                </h4>
                                            </div>
                                            <div class="col-md-3 column" style="padding-left: 74px;padding-right: 70px;padding-top: 8px">
                                                <a class="btn btn btn-outline btn-info btn-block btn-sm" href="/user/projectInfo?projectId=${p.projectId}">
                                                    同意申请&nbsp;<span class="glyphicon glyphicon-ok"></span>
                                                    <%--&nbsp;&nbsp;&nbsp;»--%>
                                                </a>
                                            </div>

                                            <div class="col-md-12 column" >
                                                <div class="col-md-1 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5>
                                                        申请人:
                                                    </h5>
                                                </div>
                                                <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5 >
                                                        卢卢卢
                                                    </h5>
                                                </div>
                                                <div class="col-md-1 column" style="padding-left: 1px; padding-right: 1px">
                                                    <h5>
                                                        申请账户:
                                                    </h5>
                                                </div>
                                                <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5 >
                                                        LuLuLu
                                                    </h5>
                                                </div>
                                                <div class="col-md-1 column" style="padding-left: 1px; padding-right: 1px">
                                                    <h5>
                                                        项目名称:
                                                    </h5>
                                                </div>
                                                <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5 >
                                                        个人网盘
                                                    </h5>
                                                </div><div class="col-md-1 column" style="padding-left: 1px; padding-right: 1px">
                                                <h5>
                                                    邮箱地址:
                                                </h5>
                                            </div>
                                                <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5 >
                                                        lujixuan@163.com
                                                    </h5>
                                                </div>
                                            </div>
                                            <div class="col-md-12 column" >
                                                <div class="col-md-1 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5>
                                                        申请理由:
                                                    </h5>
                                                </div>
                                                <div class="col-md-10 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                    <h5 >
                                                        我是公司的新员工！你好。
                                                    </h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="row clearfix">
                            <div class="col-md-1 column">
                            </div>
                            <div class="col-md-9 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                            </div>
                            <div class="col-md-2 column" >
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
                    <a href="#">下一页</a>
                </li>
            </ul>
        </div>
    </div>
</div>

<jsp:include page="../Footer.jsp"/>