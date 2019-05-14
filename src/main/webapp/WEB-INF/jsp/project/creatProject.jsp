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
    <div class="row clearfix">
        <div class="col-md-12 column">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="row clearfix">

                    <div class="col-md-12 column" >
                        <div class="row clearfix">
                <div class="col-md-1 column">
                </div>
                <div class="col-md-10 column" style="padding-left: 1px; padding-right: 1px">
        <div class="col-md-12 column">
            <h4>
                项目信息：
            </h4>
        </div>
        <div class="col-md-3 column" >
            <div class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-sm-4 control-label" style="padding-left: 10px; padding-right: 10px">项目名称:</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="userId" name="userId" />
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 column">
            <div class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-sm-4 control-label" style="padding-left: 10px; padding-right: 10px">项目代号:</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="userId" name="userId" />
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 column">
            <div class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-sm-2 control-label" style="padding-left: 10px; padding-right: 10px">任务标签:</label>
                    <div class="col-sm-10">
                        <div class="input-group">
                            <label type="text" class="form-control" id="userId" name="userId" >
                                <span class="label label-primary"></span>
                            </label>
                            <span class="input-group-btn">
                                <input id="Button2" type="button" class="btn-default btn" value="添加" onclick="BrowseFile();" />
                            </span>
                        </div>
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
            <textarea type="text" rows="5" class="form-control" id="userId" name="userId" ></textarea>
        </div>

        <div class="col-md-12 column">
            <hr/>
            <h4>
                项目文档：
            </h4>
        </div>
        <div class="col-md-12 column">
            <div id="wangDiv">
                <p>编辑项目文档</p>
            </div>
            <br/>
        </div>
        <div class="col-md-10 column">
        </div>
        <div class="col-md-2 column">
            <input type="submit" class="btn btn-default  btn-primary  btn-block" value="创建" />
        </div>
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