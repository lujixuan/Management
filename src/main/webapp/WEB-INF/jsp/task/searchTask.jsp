<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<jsp:include page="../Head.jsp" />
<script type="text/javascript">
    // 更改title
    document.getElementsByTagName("title")[0].innerText = '搜索任务';
</script>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form action="/user/SearchTask?loginUserId=${sessionScope.user.userId}" method="post">
                <div class="panel panel-info">
                    <div class="panel-body" style="padding-right: 30px; padding-left: 30px">
                        <div class="row clearfix">
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">任务名称:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="taskName" name="taskName" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">任务号:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="taskId" name="taskId" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">项目名称:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="taskProjectName" name="taskProjectName"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">项目代号:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="taskProjectCode" name="taskProjectCode">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row clearfix">
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">母任务号:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="taskMatherId" name="taskMatherId" >
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">优先级:</label>
                                        <div class="col-sm-8">
                                            <select type="text" class="form-control" id="taskPriority" name="taskPriority" >
                                                <option></option>
                                                <option value="good">紧急</option>
                                                <option>高</option>
                                                <option>普通</option>
                                                <option>低</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">任务类型:</label>
                                        <div class="col-sm-8">
                                            <select type="text" class="form-control" id="taskType" name="taskType" >
                                                <option></option>
                                                <option>需求</option>
                                                <option>缺陷</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">任务状态:</label>
                                        <div class="col-sm-8">
                                            <select type="text" class="form-control" id="taskState" name="taskState">
                                                <option></option>
                                                <option>新建</option>
                                                <option>开始</option>
                                                <option>解决</option>
                                                <option>测试</option>
                                                <option>完成</option>
                                                <option>关闭</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row clearfix">
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">所属版本:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="taskVersion" name="taskVersion" >
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-9 column">
                                <div class="row clearfix">

                                    <div class="col-md-6 column">
                                        <div class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label" >创建时间:</label>
                                                <div class="col-sm-4" style="padding-left: 3px;padding-right: 3px">
                                                    <input type="text" class="form-control" id="taskStartFromDate" name="taskStartFromDate" />
                                                </div>
                                                <label class="col-sm-1 control-label" >~</label>
                                                <div class="col-sm-4" style="padding-left: 3px;padding-right: 3px">
                                                    <input type="text" class="form-control" id="taskStartToDate" name="taskStartToDate"  />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 column">
                                        <div class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">截止时间:</label>
                                                <div class="col-sm-4" style="padding-left: 3px;padding-right: 3px">
                                                    <input type="text" class="form-control" id="taskEndFromDate" name="taskEndFromDate"  />
                                                </div>
                                                <label class="col-sm-1 control-label">~</label>
                                                <div class="col-sm-4" style="padding-left: 3px">
                                                    <input type="text" class="form-control" id="taskEndToDate" name="taskEndToDate" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="row clearfix">
                            <div class="col-md-10 column">
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

<c:forEach items="${taskList.list}" var="t">
<div class="panel panel-default"  >
    <div class="panel-body" style="padding-top: 10px; padding-right: 30px; padding-left: 30px">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <div class="row clearfix">
                            <div class="col-md-10 column" style="padding-top: 1px;padding-bottom: 3px">
                                <h3 style="display: inline-block; ">
                                       ${t.taskProjectCode}-${t.taskId}  ${t.taskName}
                                </h3>
                                <div style="margin-left: 20px; display: inline-block; ">
                                    <c:forEach items="${t.taskLabelList}" var="tl">
                                        <span class="label label-primary">${tl.labelValue}</span>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="col-md-2 column">
                                <br/>
                                <a class="btn btn btn-outline btn-info btn-block" href="/user/TaskDetail?taskId=${t.taskId}&loginUserId=${sessionScope.user.userId}">
                                    查看更多&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>
                                        <%--&nbsp;&nbsp;&nbsp;»--%>
                                </a>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-md-1 column">
                                <h5>
                                    创建人:
                                </h5>
                                <h5>
                                    优先级:
                                </h5>
                            </div>
                            <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                <h5 >
                                    ${t.taskCreateUserName}
                                </h5>
                                <h5 >
                                    ${t.taskPriority}
                                </h5>
                            </div>
                            <div class="col-md-1 column">
                                <h5>
                                    任务类型:
                                </h5>
                                <h5>
                                    创建时间:
                                </h5>
                            </div>
                            <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                <h5 >
                                     ${t.taskType}
                                </h5>
                                <h5 >
                                    ${t.taskStartDate}
                                </h5>
                            </div>
                            <div class="col-md-1 column">
                                <h5>
                                    版本:
                                </h5>
                                <h5>
                                    截止时间:
                                </h5>
                            </div>
                            <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                <h5 >
                                     ${t.taskVersion}
                                </h5>
                                <h5 >
                                   ${t.taskEndDate}
                                </h5>
                            </div><div class="col-md-1 column">
                                <h5>
                                    状态:
                                </h5>
                                <h5>
                                    最后更新:
                                </h5>
                            </div>
                            <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                <h5 >
                                     ${t.taskState}
                                </h5>
                                <h5 >
                                      ${t.taskChangeDate}
                                </h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</c:forEach>



    <!-- 分页信息 -->
    <div class="row clearfix">
        <!-- 分页条 -->
        <div class="col-md-12">
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <li><a href="${path}/user/SearchTask?pn=1">首页</a></li>
                    <c:if test="${taskList.hasPreviousPage }">
                        <li>
                            <a href="${path}/user/SearchTask?pn=${taskList.pageNum-1}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>

                    <c:forEach items="${taskList.navigatepageNums }" var="page_Num">
                        <c:if test="${page_Num == taskList.pageNum }">
                            <li class="active"><a href="#">${ page_Num}</a></li>
                        </c:if>
                        <c:if test="${page_Num != taskList.pageNum }">
                            <li><a href="${path}/user/SearchTask?pn=${ page_Num}">${ page_Num}</a></li>
                        </c:if>
                    </c:forEach>
                    <c:if test="${taskList.hasNextPage }">
                        <li>
                            <a href="${path}/user/SearchTask?pn=${taskList.pageNum+1}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>
                    <li><a href="${path}/user/SearchTask?pn=${taskList.pages}">末页</a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>

<script src="/frame/layDate-v5.0.9/laydate/laydate.js"></script>
<script>
    //日期选择控件
    laydate.render({
        elem: '#taskStartFromDate' //指定元素
        ,type: 'datetime'
    });
    laydate.render({
        elem: '#taskStartToDate'
        ,type: 'datetime'
    });
    laydate.render({
        elem: '#taskEndFromDate'
        ,type: 'datetime'
    });
    laydate.render({
        elem: '#taskEndToDate'
        ,type: 'datetime'
    });
</script>

<jsp:include page="../Footer.jsp"/>