
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
                                    <label class="col-sm-4 control-label">创建人:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="userId" name="userId"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 column">
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
                            <input type="submit" class="btn btn-default  btn-primary  btn-block" value="搜索" />
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">

        </div>
    </div>

    <c:forEach items="${pageInfo.list}" var="p">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="panel panel-default"  style="background: #f7f7f7">
                    <div class="panel-body">
                        <div class="page-header">
                            <h1>
                                ${p.projectName}<small>项目</small>
                            </h1>
                        </div>
                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <span class="label label-default">${p.projectCode}</span>
                                <span class="label label-default">购物</span>
                                <span class="label label-default">课设</span>
                            </div>
                        </div>
                        <h3>
                            简介：
                        </h3>
                        <p>
                            ${p.projectDescribe}
                        </p>
                        <p>
                            <a class="btn" href="/project?projectId=${p.projectId}">查看更多 »</a>
                        </p>
                    </div>
                </div>
            </div>
            <hr />
        </div>
    </c:forEach>

        <%--<div class="product">
            <div class="product-iWrap">
                <div class="productImg-wrap">
                    <a class="productImg" href="/showProduct?product_id=${p.id}">
                        <img src="/img/product/${p.id}/1.jpg">
                    </a>
                </div>
                <div style="clear: both;"></div>
                <p class="productPrice">
                    <em title="${p.price}">
                        <b>￥</b>${p.price}
                    </em>
                </p>
                <div style="clear: both;"></div>
                <p class="productTitle">
                    <a href="/showProduct?product_id=${p.id}">${p.name}</a>
                </p>
                <p class="productStatus">
                    <span>销量<em>${p.sale}</em></span>
                    <span>评价<a href="#nowhere">${p.reviewCount}</a></span>
                    <span class="ww-light"><a></a></span>
                </p>
            </div>
        </div>--%>



    <hr />
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