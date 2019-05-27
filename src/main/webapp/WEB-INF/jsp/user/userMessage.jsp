<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="../Head.jsp" />
<script type="text/javascript">
    // 更改title
    document.getElementsByTagName("title")[0].innerText = '我的项目';
</script>

<div class="container">
    <br/>
    <c:forEach items="${userMessage.list}" var="um">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="panel panel-default"  >
                    <div class="panel-body" style="padding-left: 40px">

                            <div class="row clearfix">
                                <div class="col-md-10 column">
                                    <div class="row clearfix">
                                        <div class="col-md-4 column">
                                            <div class="row clearfix">
                                                <div class="col-md-4 column" style="padding-right: 0px;width:80px">
                                                    <h5>
                                                        申请人:
                                                    </h5>
                                                </div>
                                                <div class="col-md-8 column">
                                                    <h5 >
                                                        ${um.userName}
                                                    </h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 column">
                                            <div class="row clearfix">
                                                <div class="col-md-4 column" style="padding-right: 0px;width:80px">
                                                    <h5>
                                                        申请账户:
                                                    </h5>
                                                </div>
                                                <div class="col-md-8 column">
                                                    <h5 >
                                                        ${um.userId}
                                                    </h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 column">
                                            <div class="row clearfix">
                                                <div class="col-md-4 column" style="padding-right: 0px;width:80px">
                                                    <h5>
                                                        项目名称:
                                                    </h5>
                                                </div>
                                                <div class="col-md-8 column">
                                                    <h5 >
                                                        ${um.projectName}
                                                    </h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-md-12 column">
                                            <div class="row clearfix">
                                                <div class="col-md-1 column" style="padding-right: 0px;width:80px">
                                                    <h5>
                                                        申请理由:
                                                    </h5>
                                                </div>
                                                <div class="col-md-10 column">
                                                    <h5 >
                                                       ${um.projectInfoRemark}
                                                    </h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="col-md-2 column">
                                    <div class="row clearfix">
                                        <div class="col-md-6 column" style="padding-top: 9px">
                                            <a href="/user/cancelApply?userId=${um.userId}&projectId=${um.projectId}" type="button" class="btn btn-danger btn-circle btn-lg"><i class="fa fa-times"></i>
                                            </a>
                                        </div>
                                        <div class="col-md-6 column"style="padding-top: 9px;padding-left: 0px">
                                            <a href="/user/agreeApply?userId=${um.userId}&projectId=${um.projectId}&type=组员" type="button" class="btn btn-info btn-circle btn-lg"><i class="fa fa-check"></i>
                                            </a>
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
                    <li><a href="${path}/user/userMessagePage?loginUserId=${sessionScope.user.userId}&pn=1">首页</a></li>
                    <c:if test="${userMessage.hasPreviousPage }">
                        <li>
                            <a href="${path}/user/userMessagePage?loginUserId=${sessionScope.user.userId}&pn=${userMessage.pageNum-1}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>

                    <c:forEach items="${userMessage.navigatepageNums }" var="page_Num">
                        <c:if test="${page_Num == userMessage.pageNum }">
                            <li class="active"><a href="#">${ page_Num}</a></li>
                        </c:if>
                        <c:if test="${page_Num != userMessage.pageNum }">
                            <li><a href="${path}/user/userMessagePage?loginUserId=${sessionScope.user.userId}&?pn=${ page_Num}">${ page_Num}</a></li>
                        </c:if>
                    </c:forEach>
                    <c:if test="${userMessage.hasNextPage }">
                        <li>
                            <a href="${path}/user/userMessagePage?loginUserId=${sessionScope.user.userId}&pn=${userMessage.pageNum+1}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>
                    <li><a href="${path}/user/userMessagePage?loginUserId=${sessionScope.user.userId}&pn=${userMessage.pages}">末页</a></li>
                </ul>
            </nav>
        </div>
    </div>



</div>

<jsp:include page="../Footer.jsp"/>