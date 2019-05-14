<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ljx
  Date: 2019/3/31
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="../Head.jsp" />
<script type="text/javascript">
    // 更改title
    document.getElementsByTagName("title")[0].innerText = '我的项目';
</script>

<div class="container">
    <c:forEach items="${pageInfo.list}" var="p">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="panel panel-default"  >
                    <div class="panel-body">

                        <div class="row clearfix">
                            <div class="col-md-10 column">
                                <h1>
                                        ${p.projectName}<small>项目</small>
                                </h1>
                            </div>

                        </div>
                        <%--<div class="row clearfix">--%>
                            <%--<div class="col-md-9 column">--%>
                                <%--<span class="label label-primary">${p.projectCode}</span>--%>
                                <%--<span class="label label-primary">购物</span>--%>
                                <%--<span class="label label-primary">课设</span>--%>
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
                                        ${p.userId}
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