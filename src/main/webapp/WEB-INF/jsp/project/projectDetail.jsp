<%--
  Created by IntelliJ IDEA.
  User: ljx
  Date: 2019/5/3
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="../Head.jsp" />
<script type="text/javascript">
    // 更改title
    document.getElementsByTagName("title")[0].innerText = '${projectInfo.projectName}';
</script>

<br />

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="panel panel-default">
                <div class="panel-body">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="row clearfix">
                        <div class="col-md-1 column">
                        </div>
                        <div class="col-md-10 column">
                            <div class="row clearfix">
                                <div class="col-md-10 column">
                                    <h1>
                                        ${projectInfo.projectName}
                                    </h1>
                                </div>
                                <div class="col-md-2 column">
                                    <br/>
                                    <a class="btn btn btn-outline btn-info btn-block" href="/user/projectInfo?projectId=${p.projectId}">
                                        申请加入&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>
                                        <%--&nbsp;&nbsp;&nbsp;»--%>
                                    </a>
                                </div>
                            </div>
                            <hr/>
                        </div>
                        <div class="col-md-1 column">
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-md-1 column">
                        </div>
                        <div class="col-md-5 column">
                            <div class="row clearfix">
                                <div class="col-md-12 column">
                                    <h4>
                                        项目简介:
                                    </h4>
                                    <br/>
                                </div>

                                <div class="col-md-12 column">
                                    <p >
                                        ${projectInfo.projectDescribe}
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 column">
                            <div class="row clearfix">
                                <div class="col-md-1 column">
                                </div>
                                <div class="col-md-11 column">
                                    <div class="col-md-12 column">
                                        <h4>
                                            详细信息:
                                        </h4>
                                    </div>

                                    <div class="col-md-3 column">
                                        <h5>
                                            创建人:
                                        </h5>
                                        <h5>
                                            项目代号:
                                        </h5>
                                        <h5>
                                            创建日期:
                                        </h5>
                                        <h5>
                                            标签:
                                        </h5>
                                        <h5>
                                            参与人数:
                                        </h5>
                                    </div>
                                    <div class="col-md-9 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                        <h5 >
                                            ${projectInfo.userId}
                                        </h5>
                                        <h5 >
                                            ${projectInfo.projectCode}
                                        </h5>
                                        <h5 >
                                            ${projectInfo.projectDate}
                                        </h5>
                                        <h5>
                                            <span class="label label-primary">${projectInfo.projectCode}</span>
                                            <span class="label label-primary">购物</span>
                                            <span class="label label-primary">课设</span>
                                        </h5>
                                        <h5>
                                            4
                                        </h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                            <div class="row clearfix">
                                <div class="col-md-1 column">
                                </div>
                                <div class="col-md-10 column">
                                    <hr/>
                                    <h4>
                                        项目文档:
                                    </h4>
                                    <br/>
                                </div>
                                <div class="col-md-1 column">
                                </div>
                            </div>
                            <div class="row clearfix">
                                <div class="col-md-1 column">
                                </div>
                                <div class="col-md-10 column">
                                    <div id="wangDiv">
                                        <h2>网上书店项目文档</h2><p>一个简单的网上书店项目，有许多功能。我们设计的网上书店系统具有：</p><ol><li>外观简洁美观。</li><li>操作简单。</li><li>数据覆盖广。</li></ol><p>外观方面采用Bootstrap框架，开发时比较注重风格统一、界面简洁。其它方面，通过结合自身网购体验，及大多数人的操作逻辑，开发出注重用户体验的网上书店系统。数据库中数据覆盖广，可以较好地满足网站客户与管理员的需求。&nbsp;</p>
                                    </div>
                                    <br/>
                                </div>
                                <div class="col-md-1 column">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    var E = window.wangEditor
    var editor = new E('#wangDiv')
    // 自定义菜单配置
    editor.customConfig.menus = [
        'head',  // 标题
        'bold',  // 粗体
        'fontSize',  // 字号
        'fontName',  // 字体
        'italic',  // 斜体
        'underline',  // 下划线
        'strikeThrough',  // 删除线
        'foreColor',  // 文字颜色
        'backColor',  // 背景颜色
        'link',  // 插入链接
        'list',  // 列表
        'justify',  // 对齐方式
        'quote',  // 引用
        'table',  // 表格
        'code',  // 插入代码
        'undo',  // 撤销
        'redo'  // 重复
    ]
    editor.create()
</script>
<jsp:include page="../Footer.jsp"/>