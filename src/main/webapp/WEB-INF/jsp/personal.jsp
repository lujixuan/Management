<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="Head.jsp" />
<script type="text/javascript">
    // 更改title
    document.getElementsByTagName("title")[0].innerText = '个人主页';
</script>




<div class="container">
    <div class="row">
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-comments fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">${userMessageNum}</div>
                            <div>申请消息</div>
                        </div>
                    </div>
                </div>
                <a href="/user/userMessagePage?loginUserId=${sessionScope.user.userId}">
                    <div class="panel-footer">
                        <span class="pull-left">查看</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-green">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-tasks fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">${unfinishTaskNum}</div>
                            <div>项目未完成任务</div>
                        </div>
                    </div>
                </div>
                <a href="/user/UnfinishTaskPage?projectId=${sessionScope.nowProjectId}">
                    <div class="panel-footer">
                        <span class="pull-left">查看</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-yellow">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-folder fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">${recentTaskChangeNum}</div>
                            <div>最近任务动态</div>
                        </div>
                    </div>
                </div>
                <a href="/user/projectInfo?projectId=${sessionScope.nowProjectId}&loginUserId=${sessionScope.user.userId}">
                    <div class="panel-footer">
                        <span class="pull-left">查看</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-red">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-support fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">${recentProjectChangeNum}</div>
                            <div>最近项目动态</div>
                        </div>
                    </div>
                </div>
                <a href="/user/projectInfo?projectId=${sessionScope.nowProjectId}&loginUserId=${sessionScope.user.userId}">
                    <div class="panel-footer">
                        <span class="pull-left">查看</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-8">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <i class="fa fa-bar-chart-o fa-fw"></i> 任务燃尽图
                    <div class="pull-right">
                        <div class="btn-group">
                            <%--<button type="button" class="btn btn-default btn-xs dropdown-toggle">--%>
                                <%--查看--%>
                            <%--</button>--%>
                        </div>
                    </div>
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <input type="hidden" id="userJson" value='${userJson}'>
                    <%--<div id="morris-area-chart"></div>--%>
                    <div id="bathroom-chart"></div>

                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
            <div class="panel panel-info">
                <div class="panel-heading">
                    <i class="fa fa-bar-chart-o fa-fw"></i> 项目动态
                    <div class="pull-right">
                        <div class="btn-group">
                            <a type="button" href="/user/projectInfo?projectId=${projectChange[0].projectChangeProjectId}&loginUserId=${sessionScope.user.userId}" class="btn btn-default btn-xs " >
                                查看更多
                            </a>
                        </div>
                    </div>
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-striped">
                                    <thead>
                                    <tr>
                                        <th>修改人</th>
                                        <th>修改日期</th>
                                        <th>位置</th>
                                        <th>旧值</th>
                                        <th>新值</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${projectChange}" var="pc" end="10">
                                        <tr>
                                            <td>${pc.projectChangeUserName}</td>
                                            <td>${pc.projectChangeDate}</td>
                                            <td>${pc.projectChangePlace}</td>
                                            <td>${pc.projectChangeOldValue}</td>
                                            <td>${pc.projectChangeNewValue}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.col-lg-4 (nested) -->
                        <%--  条形图  --------------------------------------------------------%>
                        <%--<div class="col-lg-8">--%>
                            <%--<div id="morris-bar-chart"></div>--%>
                        <%--</div>--%>
                        <!-- /.col-lg-8 (nested) -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.panel-body -->
            </div>
            <div class="panel panel-info">
                <div class="panel-heading">
                    <i class="fa fa-bar-chart-o fa-fw"></i> 任务动态
                    <div class="pull-right">
                        <div class="btn-group">
                        </div>
                    </div>
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-striped">
                                    <thead>
                                    <tr>
                                        <th>修改人</th>
                                        <th>修改日期</th>
                                        <th>位置</th>
                                        <th>旧值</th>
                                        <th>新值</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${taskChange}" var="pc" end="10">
                                        <tr>
                                            <td>${pc.taskChangeUserName}</td>
                                            <td>${pc.taskChangeDate}</td>
                                            <td>${pc.taskChangePlace}</td>
                                            <td>${pc.taskChangeOldValue}</td>
                                            <td>${pc.taskChangeNewValue}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.panel-body -->
            </div>
        </div>
        <!-- /.col-lg-8 -->
        <div class="col-lg-4">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <i class="fa fa-bar-chart-o fa-fw"></i> 任务分配图
                </div>
                <div class="panel-body">
                    <div id="morris-donut-chart"></div>
                    <a href="/user/SearchTask?loginUserId=${sessionScope.user.userId}" class="btn btn-default btn-block">查看</a>
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
            <div class="panel panel-info">
                <div class="panel-heading">
                    <i class="fa fa-bell fa-fw"></i> 我的未完成任务
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="list-group">
                        <c:forEach items="${sessionScope.loginUserProjectList}" var="lp">
                            <a href="/user/personal?projectId=${lp.projectId}&loginUserId=${sessionScope.user.userId}" class="list-group-item">
                                <i class="fa fa-comment fa-fw"></i> ${lp.projectName}
                                <span class="pull-right text-muted small"><em>${lp.userUnfinishNum} </em>
                                    </span>
                            </a>
                        </c:forEach>
                    </div>
                    <!-- /.list-group -->
                    <a href="/user/MyTaskPage" class="btn btn-default btn-block">查看我的任务</a>
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->


        </div>
        <!-- /.col-lg-4 -->
    </div>
    <!-- /.row -->
</div>
<!-- /#page-wrapper -->


<script type="text/javascript">
    // 燃尽图数据
    var areaDate = new Array();
    function areaDateObject(taskDateString,taskFinishNum,taskUnfinishNum){
        this.taskDateString=taskDateString;
        this.taskFinishNum=taskFinishNum;
        this.taskUnfinishNum=taskUnfinishNum;
    }
    <c:forEach items="${areaData}" var="ad">
        var areaDateOne = new areaDateObject('${ad.taskDateString}',${ad.taskFinishNum},${ad.taskUnfinishNum});
        areaDate.push(areaDateOne);
    </c:forEach>

    // 任务分配图数据
    var dountDate = new Array();
    function dountDateObject(label,value){
        this.label=label;
        this.value=value;
    }
    <c:forEach items="${dountData}" var="dd">
        var dountDateOne = new dountDateObject('${dd.userName}',${dd.taskNum});
        dountDate.push(dountDateOne);
    </c:forEach>


    Morris.Area({
        element: "bathroom-chart",
        data: areaDate,
        xkey: 'taskDateString',
        ykeys: ['taskFinishNum', 'taskUnfinishNum'],
        labels: ['已完成',  '未完成'],
        pointSize: 2,
        hideHover: 'auto',
        resize: true
    });

    Morris.Donut({
        element: 'morris-donut-chart',
        data: dountDate,
        resize: true
    });
</script>

<jsp:include page="Footer.jsp" />
