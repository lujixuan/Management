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
                                            <h2>
                                                DK-1 在搜索页面添加一个删除按钮,用来删除数据
                                            </h2>
                                        </div>
                                        <div class="col-md-2 column">
                                            <br/>
                                            <a class="btn btn btn-outline btn-info btn-block" href="/user/projectInfo?projectId=${p.projectId}">
                                                编辑&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>
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
                                <div class="col-md-11 column">
                                    <div class="row clearfix">
                                        <div class="col-md-12 column">
                                            <h4>
                                                任务信息:
                                            </h4>
                                            <br/>
                                        </div>

                                        <div class="col-md-12 column" >
                                            <div class="col-md-1 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                <h5>
                                                    创建人:
                                                </h5>
                                                <h5>
                                                    优先级:
                                                </h5>
                                                <h5>
                                                    经办人:
                                                </h5>
                                            </div>
                                            <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                <h5 >
                                                    卢轩
                                                </h5>
                                                <h5 >
                                                    普通
                                                </h5>
                                                <h5>
                                                    王小明
                                                </h5>
                                            </div>
                                            <div class="col-md-1 column" style="padding-left: 1px; padding-right: 1px">
                                                <h5>
                                                    任务类型:
                                                </h5>
                                                <h5>
                                                    创建时间:
                                                </h5>
                                                <h5>
                                                    测试人:
                                                </h5>
                                            </div>
                                            <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                <h5 >
                                                    需求
                                                </h5>
                                                <h5 >
                                                    2019-05-01
                                                </h5>
                                                <h5>
                                                    王大明
                                                </h5>
                                            </div>
                                            <div class="col-md-1 column" style="padding-left: 1px; padding-right: 1px">
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
                                            </div><div class="col-md-1 column" style="padding-left: 1px; padding-right: 1px">
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
                                                任务文档:
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
                                                <h3>这是DK-01的任务文档</h3><p>一个简单的任务</p><ol><li>1.更改为默认样式。</li><li>2.点击操作。</li><li>3.最后要测试。</li></ol><p>外观方面采用Bootstrap的默认样式。&nbsp;</p>
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