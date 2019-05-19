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
                <div class="panel-body" style=" padding-right: 35px; padding-left: 35px;">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                            <div class="row clearfix">
                                <div class="col-md-8 column">
                                    <h1>
                                        ${projectInfo.projectName}
                                    </h1>
                                </div>
                                <div class="col-md-2 column">
                                    <br/>
                                    <button onclick="editorButtonClick()" style="display: none;background-color: #1cc88a;border-color:#1cc88a" data-toggle="modal" data-target="#applyModal" id="editorProjectUser" type="button" class="btn btn-success btn-block" >
                                        人员管理
                                    </button>
                                </div>
                                <div class="col-md-2 column">
                                    <br/>
                                    <button onclick="editorButtonClick()"  data-toggle="modal" data-target="#applyModal" id="projectDetailButton" type="button" class="btn btn-info btn-block" >
                                        申请加入
                                    </button>
                                </div>
                            </div>
                            <hr/>
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-md-6 column">
                            <div class="row clearfix">
                                <div class="col-md-12 column">
                                    <h4>
                                        项目简介:
                                    </h4>
                                </div>

                                <div class="col-md-12 column">
                                    <h5 style="line-height: 20px;">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${projectInfo.projectDescribe}
                                    </h5>
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

                                    <div class="col-md-5 column" style="padding-left: 27px">
                                        <h5>
                                            创建人:
                                        </h5>
                                        <h5>
                                            项目代号:
                                        </h5>
                                        <h5>
                                            参与人数:
                                        </h5>
                                        <h5>
                                            创建日期:
                                        </h5>
                                        <h5>
                                            最后改动日期:
                                        </h5>
                                        <h5>
                                            项目标签:
                                        </h5>
                                        <h5>
                                            任务标签:
                                        </h5>
                                    </div>
                                    <div class="col-md-7 column" style="margin:0;padding:0;display: inline-block;vertical-align: middle;">
                                        <h5 >
                                            ${projectInfo.userName}
                                        </h5>
                                        <h5 >
                                            ${projectInfo.projectCode}
                                        </h5>
                                        <h5 >
                                            ${projectInfo.projectUserNum}
                                        </h5>
                                        <h5>
                                            ${projectInfo.projectDate}
                                        </h5>
                                        <h5>
                                            ${projectInfo.projectChangeDate}
                                        </h5>
                                        <h5>
                                            <c:forEach items="${projectInfo.projectLabelList}" var="pl">
                                                <span class="label label-primary">${pl.labelValue}</span>
                                            </c:forEach>
                                        </h5>
                                        <h5>
                                            <c:forEach items="${projectInfo.taskLabelList}" var="tl">
                                                <span class="label label-primary">${tl.labelValue}</span>
                                            </c:forEach>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                            <div class="row clearfix">
                                <div class="col-md-12 column">
                                    <hr/>
                                    <h4>
                                        项目文档:
                                    </h4>
                                    <br/>
                                </div>
                            </div>
                            <div class="row clearfix">
                                <div class="col-md-12 column" >
                                    <div id="wangDiv" >
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
        </div>
    </div>
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="editorModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:1100px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel1">
                    编辑项目信息
                </h4>
            </div>
            <form action="editorProject?projectId=${projectInfo.projectId}&loginUserId=${sessionScope.user.userId}" method="post">
            <div class="modal-body" >

                <div class="row clearfix">
                    <div class="col-md-3 column">
                        <div class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">项目名称:</label>
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
                                <label class="col-sm-2 control-label" >项目标签:</label>
                                <div class="col-sm-10">
                                    <input type="text" value="${projectInfo.projectLabelString}" class="form-control" id="projectLabelString" name="projectLabelString"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 column">
                        <div class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-sm-2 control-label" >任务标签:</label>
                                <div class="col-sm-10">
                                    <input type="text" value="${projectInfo.taskLabelString}" class="form-control" id="taskLabelString" name="taskLabelString"/>
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


<!-- 模态框（Modal） -->
<div class="modal fade" id="applyModal" Backdrop=false tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog" style="width:500px">
        <div class="modal-content" >
            <div class="modal-body" >
                <form action="applyToProject" method="post">
                    <h5>请输入申请理由：</h5>
                    <div class="form-group">
                        <textarea type="text" rows="5" class="form-control" id="projectInfoRemark" name="projectInfoRemark" ></textarea>
                    </div>
                    <input type="text" class="form-control" style="display: none" id="projectInfoUserId" name="projectInfoUserId" value="${sessionScope.user.userId}"/>
                    <input type="text" class="form-control" style="display: none" id="projectInfoProjectId" name="projectInfoProjectId" value="${projectInfo.projectId}"/>
                    <input type="text" class="form-control" style="display: none" id="projectInfoType" name="projectInfoType" value="申请中"/>
                    <div class="row clearfix" >
                        <div class="col-md-12 pull-right" style="text-align: right">
                            <button type="button" class="btn btn-default" data-dismiss="modal">
                                关闭
                            </button>
                            <button type="submit" class="btn btn-primary" >
                                确认
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
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
    var $text1 = $('#projectDoc')
    editorProjectDoc.customConfig.onchange = function (html) {
        // 监控变化，同步更新到 textarea
        $text1.val(html)
    }
    editor.create();
    editorProjectDoc.create();

    editor.txt.html('${projectInfo.projectDoc}\n');
    editorProjectDoc.txt.html('${projectInfo.projectDoc}\n');
    $text1.val(editor.txt.html());



    // 改变"申请加入"按钮的文本
    if('${projectInfo.projectInfoType}' != null){
        var projectInfoType = '${projectInfo.projectInfoType}';
        if(projectInfoType == '组长' || projectInfoType == '创建人'){
            document.getElementById("projectDetailButton").innerHTML="编辑信息";
            $("#projectDetailButton").attr("data-target","#editorModal");
        }
        if(projectInfoType == '创建人'){
            document.getElementById("editorProjectUser").style.display=""; // 显示管理人员按钮
        }
        if(projectInfoType == '组员'){
            document.getElementById("projectDetailButton").innerHTML="已加入";
            $("#projectDetailButton").attr("data-target","");
        }
        if(projectInfoType == '申请中'){
            document.getElementById("projectDetailButton").innerHTML="申请中";
            $("#projectDetailButton").attr("data-target","");
        }
    }

    // 编辑项目信息
    function editorButtonClick() {
        document.getElementById("wangDiv").style.display="none";// 隐藏modal，防止显示错误

        $('#editorModal').on('hide.bs.modal', function () {
            document.getElementById("wangDiv").style.display="";// 显示modal
        })
    }

</script>
<jsp:include page="../Footer.jsp"/>