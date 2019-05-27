<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<jsp:include page="../Head.jsp" />
<script type="text/javascript">
    // 更改title
    document.getElementsByTagName("title")[0].innerText = '我的任务';
</script>

<div class="container">

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
                    <li><a href="${path}/user/MyTaskPage?pn=1">首页</a></li>
                    <c:if test="${taskList.hasPreviousPage }">
                        <li>
                            <a href="${path}/user/MyTaskPage?pn=${taskList.pageNum-1}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>

                    <c:forEach items="${taskList.navigatepageNums }" var="page_Num">
                        <c:if test="${page_Num == taskList.pageNum }">
                            <li class="active"><a href="#">${ page_Num}</a></li>
                        </c:if>
                        <c:if test="${page_Num != taskList.pageNum }">
                            <li><a href="${path}/user/MyTaskPage?pn=${ page_Num}">${ page_Num}</a></li>
                        </c:if>
                    </c:forEach>
                    <c:if test="${taskList.hasNextPage }">
                        <li>
                            <a href="${path}/user/MyTaskPage?pn=${taskList.pageNum+1}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>
                    <li><a href="${path}/user/MyTaskPage?pn=${taskList.pages}">末页</a></li>
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