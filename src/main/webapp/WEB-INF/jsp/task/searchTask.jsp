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
            <form action="/user/searchProject" method="post">
                <div class="panel panel-default">
                    <div class="panel-body" style="padding-right: 30px; padding-left: 30px">
                        <div class="row clearfix">
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">任务名称:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="projectName" name="projectName" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">任务号:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="projectCode" name="projectCode" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">任务主题:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="userName" name="userName"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">任务类型:</label>
                                        <div class="col-sm-8">
                                            <select type="text" class="form-control" id="usdsdsId" name="userId" >
                                                <option></option>
                                                <option>需求</option>
                                                <option>缺陷</option>
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
                                        <label class="col-sm-4 control-label">优先级:</label>
                                        <div class="col-sm-8">
                                            <select type="text" class="form-control" id="projectdsdse" name="projectName" ></select>
                                            <option></option>
                                            <option>紧急</option>
                                            <option>高</option>
                                            <option>普通</option>
                                            <option>低</option>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">版本:</label>
                                        <div class="col-sm-8">
                                            <select type="text" class="form-control" id="psddstCode" name="projectCode" ></select>
                                            <option></option>
                                            <c:forEach>
                                                <option>紧急</option>
                                                <option>高</option>
                                                <option>普通</option>
                                                <option>低</option>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">项目名称:</label>
                                        <div class="col-sm-8">
                                            <select type="text" class="form-control" id="dsdsame" name="userName"></select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">任务状态:</label>
                                        <div class="col-sm-8">
                                            <select type="text" class="form-control" id="udsdsrId" name="userId"></select>
                                            <option></option>
                                            <option>新建</option>
                                            <option>开始</option>
                                            <option>解决</option>
                                            <option>测试</option>
                                            <option>完成</option>
                                            <option>关闭</option>
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
                                            <input type="text" class="form-control" id="projectDate" name="projectDate" />
                                        </div>
                                        <label class="col-sm-1 control-label" >~</label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" id="projectToDate" name="projectToDate"  />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">截止时间:</label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" id="projectDate" name="projectDate"  />
                                        </div>
                                        <label class="col-sm-1 control-label">~</label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" id="projectToDate" name="projectToDate" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-1 column">
                            </div>
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">排序方式:</label>
                                        <div class="col-sm-8">
                                            <select type="text" class="form-control" id="udsdsrId" name="userId"></select>
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
    <div class="panel panel-default"  >
        <div class="panel-body" style="padding-top: 10px; padding-right: 30px; padding-left: 30px">
        <div class="row clearfix">
            <div class="col-md-12 column">


                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <div class="row clearfix">
                            <div class="col-md-10 column">
                                <h3>
                                        DK-1 在搜索页面添加一个删除按钮,用来删除数据
                                </h3>
                            </div>
                            <div class="col-md-2 column">
                                <br/>
                                <a class="btn btn btn-outline btn-info btn-block" href="/user/projectInfo?projectId=${p.projectId}">
                                    查看更多&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>
                                        <%--&nbsp;&nbsp;&nbsp;»--%>
                                </a>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-md-9 column">
                                <span class="label label-primary">${p.projectCode}</span>
                                <span class="label label-primary">Java</span>
                                <span class="label label-primary">develop</span>
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
                                        卢轩
                                </h5>
                                <h5 >
                                    普通
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
                                        需求
                                </h5>
                                <h5 >
                                    2019-05-01
                                </h5>
                            </div>
                            <div class="col-md-1 column">
                                <h5>
                                    版本:
                                </h5>
                                <h5>
                                    最后更新:
                                </h5>
                            </div>
                            <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                <h5 >
                                        1.0.1
                                </h5>
                                <h5 >
                                    2019-06-07
                                </h5>
                            </div><div class="col-md-1 column">
                                <h5>
                                    状态:
                                </h5>
                                <h5>
                                    到期日:
                                </h5>
                            </div>
                            <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                <h5 >
                                        开始
                                </h5>
                                <h5 >
                                       2019-05-05
                                </h5>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <hr style="margin-top: 10px; margin-bottom: 10px"/>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <div class="row clearfix">
                            <div class="col-md-10 column">
                                <h3>
                                    DK-2 前端代码需要优化.加载太慢，需要重构一下代码
                                </h3>
                            </div>
                            <div class="col-md-2 column">
                                <br/>
                                <a class="btn btn btn-outline btn-info btn-block" href="/user/projectInfo?projectId=${p.projectId}">
                                    查看更多&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>
                                    <%--&nbsp;&nbsp;&nbsp;»--%>
                                </a>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-md-9 column">
                                <span class="label label-primary">DK</span>
                                <span class="label label-primary">Java</span>
                                <span class="label label-primary">hotfix</span>
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
                                    卢轩
                                </h5>
                                <h5 >
                                    紧急
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
                                    缺陷
                                </h5>
                                <h5 >
                                    2019-03-03
                                </h5>
                            </div><div class="col-md-1 column">
                            <h5>
                                版本:
                            </h5>
                            <h5>
                                最后更新:
                            </h5>
                        </div>
                            <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                <h5 >
                                    1.0.2
                                </h5>
                                <h5 >
                                    2019-06-07
                                </h5>
                            </div><div class="col-md-1 column">
                            <h5>
                                状态:
                            </h5>
                            <h5>
                                到期日:
                            </h5>
                        </div>
                            <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                <h5 >
                                    开始
                                </h5>
                                <h5 >
                                    2019-05-05
                                </h5>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <hr style="margin-top: 10px; margin-bottom: 10px"/>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <div class="row clearfix">
                            <div class="col-md-10 column">
                                <h3>
                                    DK-4 换一个新logo
                                </h3>
                            </div>
                            <div class="col-md-2 column">
                                <br/>
                                <a class="btn btn btn-outline btn-info btn-block" href="/user/projectInfo?projectId=${p.projectId}">
                                    查看更多&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>
                                    <%--&nbsp;&nbsp;&nbsp;»--%>
                                </a>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-md-9 column">
                                <span class="label label-primary">DK</span>
                                <span class="label label-primary">Java</span>
                                <span class="label label-primary">develop</span>
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
                                    xiaoming
                                </h5>
                                <h5 >
                                    低
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
                                    需求
                                </h5>
                                <h5 >
                                    2019-04-01
                                </h5>
                            </div><div class="col-md-1 column">
                            <h5>
                                版本:
                            </h5>
                            <h5>
                                最后更新:
                            </h5>
                        </div>
                            <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                <h5 >
                                    1.0.1
                                </h5>
                                <h5 >
                                    2019-06-07
                                </h5>
                            </div><div class="col-md-1 column">
                            <h5>
                                状态:
                            </h5>
                            <h5>
                                到期日:
                            </h5>
                        </div>
                            <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                <h5 >
                                    开始
                                </h5>
                                <h5 >
                                    2019-05-05
                                </h5>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <hr style="margin-top: 10px; margin-bottom: 10px"/>
                            </div>
                        </div>
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