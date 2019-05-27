<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="../Head.jsp" />
<script type="text/javascript">
    // 更改title
    document.getElementsByTagName("title")[0].innerText = '${taskDetail.taskProjectCode}-${taskDetail.taskId}  ${taskDetail.taskName}';
</script>

<br />

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="panel panel-info">
                <div class="panel-body" style=" padding-right: 35px; padding-left: 35px;">
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                            <div class="row clearfix">
                                <div class="col-md-12 column">
                                    <div class="row clearfix">
                                        <div class="col-md-8 column">
                                            <h2>
                                                ${taskDetail.taskProjectCode}-${taskDetail.taskId}  ${taskDetail.taskName}
                                            </h2>
                                        </div>
                                        <div class="col-md-2 column">
                                            <br/>
                                            <a id="createSonTaskButton" name="createSonTaskButton"  href="/user/CreateTaskPage?taskMatherId=${taskDetail.taskId}&projectName=${taskDetail.taskProjectName}&projectId=${taskDetail.taskProjectId}" style="display: none" class="btn btn btn-success btn-block" >
                                                创建子任务
                                            </a>
                                        </div>
                                        <div class="col-md-2 column">
                                            <br/>
                                            <button id="editorTaskButton" name="editorTaskButton" data-toggle="modal" data-target="#editorModal" onclick="editorButtonClick()" href="/user/editorTask?taskId=${taskDetail.taskId}" style="display: none" class="btn btn btn-info btn-block" >
                                                编辑信息
                                            </button>
                                        </div>
                                    </div>
                                    <hr/>
                                </div>
                            </div>
                            <div class="row clearfix">
                                <div class="col-md-12 column">
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
                                                    ${taskDetail.taskCreateUserName}
                                                </h5>
                                                <h5 >
                                                    ${taskDetail.taskPriority}
                                                </h5>
                                                <h5>
                                                    ${taskDetail.taskFinishUserName}
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
                                                    ${taskDetail.taskType}
                                                </h5>
                                                <h5 >
                                                    ${taskDetail.taskStartDate}
                                                </h5>
                                                <h5>
                                                    ${taskDetail.taskTestUserName}
                                                </h5>
                                            </div>
                                            <div class="col-md-1 column" style="padding-left: 1px; padding-right: 1px">
                                                <h5>
                                                    所属版本:
                                                </h5>
                                                <h5>
                                                    最后更新:
                                                </h5>
                                                <h5>
                                                    任务标签:
                                                </h5>
                                            </div>
                                            <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                <h5 >
                                                    ${taskDetail.taskVersion}
                                                </h5>
                                                <h5 >
                                                    ${taskDetail.taskChangeDate}
                                                </h5>
                                                <h5 >
                                                    <c:forEach items="${taskDetail.taskLabelList}" var="tl">
                                                        <span class="label label-primary">${tl.labelValue}</span>
                                                    </c:forEach>
                                                </h5>
                                            </div><div class="col-md-1 column" style="padding-left: 1px; padding-right: 1px">
                                            <h5>
                                                任务状态:
                                            </h5>
                                            <h5>
                                                截止日期:
                                            </h5>
                                        </div>
                                            <div class="col-md-2 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                                <h5 >
                                                    ${taskDetail.taskState}
                                                </h5>
                                                <h5 >
                                                    ${taskDetail.taskEndDate}
                                                </h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row clearfix">
                                <div class="col-md-12 column">
                                    <div class="row clearfix">
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
                                        <div class="col-md-12 column">
                                            <div id="wangDiv">
                                            </div>
                                            <br/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>


            <div class="panel panel-info">
                <div class="panel-heading">
                    <i class="fa fa-bar-chart-o fa-fw"></i> 子任务
                    <div class="pull-right">
                        <div class="btn-group">
                        </div>
                    </div>
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body" style=" padding-right: 35px; padding-left: 35px;">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-striped">
                                    <thead>
                                    <tr>
                                        <th>子任务</th>
                                        <th>经办人</th>
                                        <th>测试人</th>
                                        <th>创建日期</th>
                                        <th>截止日期</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${sonTask}" var="st" >
                                        <tr>
                                            <td>
                                                <a href="/user/TaskDetail?taskId=${st.taskId}&loginUserId=${sessionScope.user.userId}">
                                                        ${st.taskProjectCode}-${st.taskId} ${st.taskName}
                                                </a>
                                            </td>
                                            <td>${st.taskFinishUser}</td>
                                            <td>${st.taskTestUser}</td>
                                            <td>${st.taskStartDate}</td>
                                            <td>${st.taskEndDate}</td>

                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.panel-body -->
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">
                    <i class="fa fa-bar-chart-o fa-fw"></i> 任务动态
                    <div class="pull-right">
                        <div class="btn-group">
                        </div>
                    </div>
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body" style=" padding-right: 35px; padding-left: 35px;">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-striped">
                                    <thead>
                                    <tr>
                                        <th>修改人</th>
                                        <th>修改日期</th>
                                        <th>位置</th>
                                        <th>旧值</th>
                                        <th>新值</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${taskChange}" var="pc" end="10">
                                        <tr>
                                            <td>${pc.taskChangeUserName}</td>
                                            <td>${pc.taskChangeDate}</td>
                                            <td>${pc.taskChangePlace}</td>
                                            <td>${pc.taskChangeOldValue}</td>
                                            <td>${pc.taskChangeNewValue}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.panel-body -->
            </div>


        </div>
    </div>
</div>



<!-- 模态框（Modal）编辑任务信息 -->
<div class="modal fade" id="editorModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:1100px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel1">
                    编辑任务信息
                </h4>
            </div>
            <form action="EditorTask?taskId=${taskDetail.taskId}&loginUserId=${sessionScope.user.userId}" method="post">
                <div class="modal-body" >

                    <div class="row clearfix">
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
                                    <label class="col-sm-4 control-label" >任务标签:</label>
                                    <div class="col-sm-8">
                                        <select type="text"  class="form-control" id="taskLabelId" name="taskLabelId">
                                            <option value="${taskDetail.taskLabelId}">${taskDetail.taskLabelString}</option>
                                            <c:forEach items="${taskDetail.taskProjectLabelList}" var="tpl">
                                                <option value="${tpl.labelId}">${tpl.labelValue}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 column">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">截止日期:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="taskEndDate" name="taskEndDate" value="${taskDetail.taskEndDate}"/>
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
                                        <input type="text" class="form-control" id="taskVersion" name="taskVersion" value="${taskDetail.taskVersion}"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 column">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">优先级:</label>
                                    <div class="col-sm-8">
                                        <select type="text" class="form-control" id="taskPriority" name="taskPriority" value="${taskDetail.taskPriority}">
                                            <option>${taskDetail.taskPriority}</option>
                                            <option>紧急</option>
                                            <option>高</option>
                                            <option>普通</option>
                                            <option>低</option>
                                        </select>
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
                                            <option value="${taskDetail.taskFinishUser}">${taskDetail.taskFinishUserName}</option>
                                            <c:forEach items="${taskDetail.projectUsers}" var="pu">
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
                                            <option value="${taskDetail.taskTestUser}">${taskDetail.taskTestUserName}</option>
                                            <c:forEach items="${taskDetail.projectUsers}" var="pu">
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
                                    <label class="col-sm-4 control-label">任务状态:</label>
                                    <div class="col-sm-8">
                                        <select type="text" class="form-control" id="taskState" name="taskState" value="${taskDetail.taskState}">
                                            <option>${taskDetail.taskState}</option>
                                            <option>新建</option>
                                            <option>开始</option>
                                            <option>解决</option>
                                            <option>测试</option>
                                            <option>完成</option>
                                            <option>关闭</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 column">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">任务类型:</label>
                                    <div class="col-sm-8">
                                        <select type="text" class="form-control" id="taskType" name="taskType" value="${taskDetail.taskType}">
                                            <option>${taskDetail.taskType}</option>
                                            <option>需求</option>
                                            <option>缺陷</option>
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
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消
                    </button>
                    <button type="submit" class="btn btn-primary" onclick="submitButtonClick()">
                        提交
                    </button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
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

    // 如果当前登录用户为该任务相关人，则可看到编辑按钮
    if('${sessionScope.user.userId}' == '${taskDetail.taskCreateUser}' || '${sessionScope.user.userId}' == '${taskDetail.taskTestUser}' || '${sessionScope.user.userId}' == '${taskDetail.taskFinishUser}'){
        document.getElementById("editorTaskButton").style.display=""; // 显示管理人员按钮
        document.getElementById("createSonTaskButton").style.display=""; // 显示创建子任务按钮
    }

    // 编辑任务信息
    function editorButtonClick() {
        document.getElementById("wangDiv").style.display="none";// 隐藏modal，防止显示错误

        $('#editorModal').on('hide.bs.modal', function () {
            document.getElementById("wangDiv").style.display="";// 显示modal
        })
    }
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