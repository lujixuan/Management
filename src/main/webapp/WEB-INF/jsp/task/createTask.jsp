<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="../Head.jsp" />
<script type="text/javascript">
    // 更改title
    document.getElementsByTagName("title")[0].innerText = '创建任务';
</script>

<div class="container">
    <form action="CreateTask?loginUserId=${sessionScope.user.userId}" method="post">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="panel panel-info">
                    <div class="panel-body" style=" padding-right: 35px; padding-left: 35px;">
                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <h4>
                                    填写任务信息：
                                </h4>
                                <hr/>
                            </div>
                            <div class="col-md-6 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">任务名称:</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="taskName" name="taskName" value="${taskDetail.taskName}"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label" >所属项目:</label>
                                        <div class="col-sm-8">
                                            <input readonly value="" type="text" class="form-control" id="taskProjectName" name="taskProjectName"/>
                                            <input style="display: none" value="" type="text" class="form-control" id="taskProjectId" name="taskProjectId"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">任务状态:</label>
                                        <div class="col-sm-8">
                                            <input type="text" value="新建" readonly class="form-control" id="taskState" name="taskState" >
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row clearfix">
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">任务版本:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="taskVersion" name="taskVersion" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">母任务号:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="taskMatherId" name="taskMatherId"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">经办人:</label>
                                        <div class="col-sm-8">
                                            <select type="text" class="form-control" id="taskFinishUser" name="taskFinishUser" >
                                                <c:forEach items="${projectUserList}" var="pu">
                                                    <option value="${pu.userId}">${pu.userName}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 column">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">测试人:</label>
                                        <div class="col-sm-8">
                                            <select type="text" class="form-control" id="taskTestUser" name="taskTestUser" >
                                                <c:forEach items="${projectUserList}" var="pu">
                                                    <option value="${pu.userId}">${pu.userName}</option>
                                                </c:forEach>
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
                                        <label class="col-sm-4 control-label">截止日期:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="taskEndDate" name="taskEndDate"/>
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
                                        <label class="col-sm-4 control-label" >任务标签:</label>
                                        <div class="col-sm-8">
                                            <select type="text"  class="form-control" id="taskLabelId" name="taskLabelId">
                                                <c:forEach items="${projectTaskLabelList}" var="ptl">
                                                    <option value="${ptl.labelId}">${ptl.labelValue}</option>
                                                </c:forEach>
                                            </select>
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
                                                <option>紧急</option>
                                                <option>高</option>
                                                <option>普通</option>
                                                <option>低</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>



                            <div class="col-md-12 column">
                                <textarea type="text" style="display: none" rows="5"  class="form-control" id="taskDoc" name="taskDoc" ></textarea>
                            </div>

                            <div class="col-md-12 column">
                                <hr/>
                                <h4>
                                    任务文档：
                                </h4>
                            </div>
                            <div class="col-md-12 column">
                                <div id="editorTaskDoc">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="row clearfix">
                            <div class="col-md-10 column">
                            </div>
                            <div class="col-md-2 column" style=" padding-right: 30px;">
                                <button type="submit" class="btn btn-primary" onclick="submitButtonClick()">
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
    var editorTaskDoc = new E('#editorTaskDoc');
    // 自定义菜单配置
    editor.customConfig.menus = [
    ]
    editorTaskDoc.customConfig.menus = [
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
    var $text1 = $('#taskDoc')
    editorTaskDoc.customConfig.onchange = function (html) {
        // 监控变化，同步更新到 textarea
        $text1.val(html)
    }
    // 创建编辑器
    editor.create();
    editorTaskDoc.create();
    // 初始化编辑器文本
    editor.txt.html('${taskDetail.taskDoc}\n');
    editorTaskDoc.txt.html('${taskDetail.taskDoc}\n');
    $text1.val(editorTaskDoc.txt.html());

    // 得到url中参数值
    function getURLParameter(name) {
        return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search)||[,""])[1].replace(/\+/g, '%20'))||null;
    }
    var taskMatherId = getURLParameter("taskMatherId");
    var projectId = getURLParameter("projectId");
    var projectName = getURLParameter("projectName");

    $("#taskMatherId").attr("value",taskMatherId);
    $("#taskProjectName").attr("value",projectName);
    $("#taskProjectId").attr("value",projectId);


</script>

<script src="/frame/layDate-v5.0.9/laydate/laydate.js"></script>
<script>
    //日期选择控件
    laydate.render({
        elem: '#taskEndDate' //指定元素
        ,type: 'date'
    });
</script>
<jsp:include page="../Footer.jsp"/>