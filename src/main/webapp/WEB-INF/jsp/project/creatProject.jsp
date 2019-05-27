<%--
  Created by IntelliJ IDEA.
  User: ljx
  Date: 2019/3/31
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="../Head.jsp" />
<script type="text/javascript">
    // 更改title
    document.getElementsByTagName("title")[0].innerText = '创建项目';
</script>

<div class="container">
    <form action="createProject?loginUserId=${sessionScope.user.userId}" method="post">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="panel panel-info">
                    <div class="panel-body" style=" padding-right: 35px; padding-left: 35px;">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <h4>
                        填写项目信息：
                    </h4>
                    <hr/>
                </div>
                <div class="col-md-3 column">
                    <div class="form-horizontal" role="form">
                        <div class="form-group">
                            <label class="col-sm-4 control-label" style="text-align: left">项目名称:</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="projectName" name="projectName" value="${projectInfo.projectName}"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 column">
                    <div class="form-horizontal" role="form">
                        <div class="form-group">
                            <label class="col-sm-4 control-label">项目代号:</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="projectCode" name="projectCode" value="${projectInfo.projectCode}"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-6 column">
                    <div class="form-horizontal" role="form">
                        <div class="form-group">
                            <label class="col-sm-2 control-label" style="text-align: left">项目标签:</label>
                            <div class="col-sm-10">
                                <input type="text" value="${projectInfo.projectLabelString}" class="form-control" id="projectLabelString" name="projectLabelString" placeholder="标签请用英文“;”号分隔"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 column">
                    <div class="form-horizontal" role="form">
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >任务标签:</label>
                            <div class="col-sm-10">
                                <input type="text" value="${projectInfo.taskLabelString}" class="form-control" id="taskLabelString" name="taskLabelString" placeholder="标签请用英文“;”号分隔"/>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 column">
                    <hr/>
                    <h4>
                        项目简介：
                    </h4>
                </div>
                <div class="col-md-12 column">
                    <textarea type="text" rows="5" class="form-control" id="projectDescribe" name="projectDescribe" >${projectInfo.projectDescribe}</textarea>
                </div>
                <div class="col-md-12 column">
                    <textarea type="text" style="display: none" rows="5"  class="form-control" id="projectDoc" name="projectDoc" ></textarea>
                </div>

                <div class="col-md-12 column">
                    <hr/>
                    <h4>
                        项目文档：
                    </h4>
                </div>
                <div class="col-md-12 column">
                    <div id="editorProjectDoc">
                    </div>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <div class="row clearfix">
                <div class="col-md-10 column">
                </div>
                <div class="col-md-2 column" style=" padding-right: 30px;">
                    <button type="submit" class="btn btn btn-info btn-block" onclick="submitButtonClick()">
                        创建
                    </button>
                </div>
            </div>
        </div>
                </div>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
    // 初始化富文本编辑器
    var E = window.wangEditor;
    var editor = new E('#wangDiv');
    var editorProjectDoc = new E('#editorProjectDoc');
    // 自定义菜单配置
    editor.customConfig.menus = [
    ]
    editorProjectDoc.customConfig.menus = [
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
    ];
    var $text1 = $('#projectDoc');
    editorProjectDoc.customConfig.onchange = function (html) {
        // 监控变化，同步更新到 textarea
        $text1.val(html)
    }
    editor.create();
    editorProjectDoc.create();

    editor.txt.html('${projectInfo.projectDoc}\n');
    editorProjectDoc.txt.html('${projectInfo.projectDoc}\n');
    $text1.val(editor.txt.html());
</script>
<jsp:include page="../Footer.jsp"/>