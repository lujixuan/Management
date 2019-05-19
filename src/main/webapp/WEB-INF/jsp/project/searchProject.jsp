
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
                <div class="panel-body" style=" padding-right: 25px; padding-left: 15px; padding-bottom: 5px">
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
                                    <label class="col-sm-4 control-label" style="padding-right: 5px">创建人姓名:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="userName" name="userName"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 column">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label" style="padding-right: 5px">创建人账户:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="userId" name="userId"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row clearfix">
                        <div class="col-md-6 column">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">创建时间:</label>
                                    <div class="col-sm-4">
                                        <input type="text" class=" form-control" id="projectDate" name="projectDate" />
                                    </div>
                                    <label class="col-sm-1 control-label">~</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" id="projectToDate" name="projectToDate"  />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 column">
                        </div>
                        <div class="col-md-2 column">
                            <button type="submit" id="searchButton" class="btn btn-default  btn-primary  btn-block " value="搜索" style="text-shadow: black 5px 3px 3px;">搜索&nbsp;&nbsp;<span class="glyphicon glyphicon-search"></span></button>
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
                <div class="panel-body" style=" padding-right: 25px; padding-left: 25px; padding-top: 3px;padding-bottom: 14px">

            <div class="row clearfix">
                <div class="col-md-10 column" style="padding-top: 1px;padding-bottom: 3px">
                    <h1 style="display: inline-block; ">
                            ${p.projectName}
                    </h1>
                    <div  style="margin-left: 20px; display: inline-block; ">
                        <c:forEach items="${p.projectLabelList}" var="pl">
                            <span class="label label-primary">${pl.labelValue}</span>
                        </c:forEach>
                    </div>
                </div>
                <div class="col-md-2 column">
                    <br/>
                    <a class="btn btn btn-outline btn-info btn-block" href="/user/projectInfo?projectId=${p.projectId}&loginUserId=${sessionScope.user.userId}" style="margin-top: 5px">
                        查看更多&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>
                        <%--&nbsp;&nbsp;&nbsp;»--%>
                    </a>
                </div>
            </div>
                <hr style="margin-top: 5px; margin-bottom: 10px"/>
            <div class="row clearfix">
                <div class="col-md-1 column">
                    <h5>
                        创建人:
                    </h5>
                </div>
                <div class="col-md-1 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                    <h5 >
                            ${p.userName}
                    </h5>
                </div>
                <div class="col-md-1 column">
                    <h5>
                        参与人数:
                    </h5>
                </div>
                <div class="col-md-1 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                    <h5 >
                            ${p.projectUserNum}
                    </h5>
                </div>
                <div class="col-md-1 column">
                    <h5>
                        创建日期:
                    </h5>
                </div>
                <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                    <h5 >
                            ${p.projectDate}
                    </h5>
                </div>
                <div class="col-md-2 column" style="width: 125px; height: 30px;">
                    <h5>
                        最后改动日期:
                    </h5>
                </div>
                <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                    <h5 >
                            ${p.projectChangeDate}
                    </h5>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-1 column">
                    <h5>
                        项目简介:
                    </h5>
                </div>
                <div class="col-md-11 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;padding-right: 20px; ">
                    <h5 >
                            ${p.projectDescribe}
                    </h5>
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
                    <li><a href="${path}/user/searchProject?pn=1">首页</a></li>
                    <c:if test="${pageInfo.hasPreviousPage }">
                        <li>
                            <a href="${path}/user/searchProject?pn=${pageInfo.pageNum-1}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>

                    <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
                        <c:if test="${page_Num == pageInfo.pageNum }">
                            <li class="active"><a href="#">${ page_Num}</a></li>
                        </c:if>
                        <c:if test="${page_Num != pageInfo.pageNum }">
                            <li><a href="${path}/user/searchProject?pn=${ page_Num}">${ page_Num}</a></li>
                        </c:if>
                    </c:forEach>
                    <c:if test="${pageInfo.hasNextPage }">
                        <li>
                            <a href="${path}/user/searchProject?pn=${pageInfo.pageNum+1}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>
                    <li><a href="${path}/user/searchProject?pn=${pageInfo.pages}">末页</a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>

<script src="/frame/layDate-v5.0.9/laydate/laydate.js"></script> <!-- 改成你的路径 -->
<script>
    //日期选择控件
    laydate.render({
        elem: '#projectDate' //指定元素
        ,type: 'datetime'
    });
    laydate.render({
        elem: '#projectToDate' //指定元素
        ,type: 'datetime'
    });
</script>

<jsp:include page="../Footer.jsp"/>





