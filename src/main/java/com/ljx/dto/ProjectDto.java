package com.ljx.dto;

import java.util.List;

public class ProjectDto {
    private Integer projectId; // 项目id
    private String projectName; //项目名
    private String projectCode; //项目代号
    private String projectDate; // 项目创建日期
    private String projectChangeDate; //项目最后改动日期
    private String projectToDate; // 查询时使用：结束时间范围
    private String projectDescribe; // 项目简介
    private String projectInfoType; // 当前用户在项目中角色
    private String projectDoc; //项目文档
    private Integer projectUserNum; //项目参与人数
    private String userId; // 创建人
    private String userName; // 创建人姓名
    private String loginUserId; // 当前用户
    private List<LabelDto> projectLabelList; // 该项目的项目标签
    private List<LabelDto> taskLabelList; // 该项目的任务标签
    private String projectLabelString = ""; // 项目标签字符串
    private String taskLabelString = "";  // 任务标签字符串
    private Integer userUnfinishNum; // 当前用户未完成任务数


    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getProjectCode() {
        return projectCode;
    }

    public void setProjectCode(String projectCode) {
        this.projectCode = projectCode;
    }

    public String getProjectDescribe() {
        return projectDescribe;
    }

    public void setProjectDescribe(String projectDescribe) {
        this.projectDescribe = projectDescribe;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getProjectDate() {
        return projectDate;
    }

    public void setProjectDate(String projectDate) {
        this.projectDate = projectDate;
    }

    public String getProjectToDate() {
        return projectToDate;
    }

    public void setProjectToDate(String projectToDate) {
        this.projectToDate = projectToDate;
    }

    public String getLoginUserId() {
        return loginUserId;
    }

    public void setLoginUserId(String loginUserId) {
        this.loginUserId = loginUserId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer getProjectId() {
        return projectId;
    }

    public void setProjectId(Integer projectId) {
        this.projectId = projectId;
    }

    public String getProjectInfoType() {
        return projectInfoType;
    }

    public void setProjectInfoType(String projectInfoType) {
        this.projectInfoType = projectInfoType;
    }

    public String getProjectDoc() {
        return projectDoc;
    }

    public void setProjectDoc(String projectDoc) {
        this.projectDoc = projectDoc;
    }

    public Integer getProjectUserNum() {
        return projectUserNum;
    }

    public void setProjectUserNum(Integer projectUserNum) {
        this.projectUserNum = projectUserNum;
    }

    public String getProjectChangeDate() {
        return projectChangeDate;
    }

    public void setProjectChangeDate(String projectChangeDate) {
        this.projectChangeDate = projectChangeDate;
    }

    public List<LabelDto> getProjectLabelList() {
        return projectLabelList;
    }

    public void setProjectLabelList(List<LabelDto> projectLabelList) {
        for(LabelDto labelDto : projectLabelList){
            this.projectLabelString += labelDto.getLabelValue() + ";";
        }
        this.projectLabelList = projectLabelList;
    }

    public List<LabelDto> getTaskLabelList() {
        return taskLabelList;
    }

    public void setTaskLabelList(List<LabelDto> taskLabelList) {
        for(LabelDto labelDto : taskLabelList){
            this.taskLabelString += labelDto.getLabelValue() + ";";
        }
        this.taskLabelList = taskLabelList;
    }

    public String getProjectLabelString() {
        return projectLabelString;
    }

    public void setProjectLabelString(String projectLabelString) {
        this.projectLabelString = projectLabelString;
    }

    public String getTaskLabelString() {
        return taskLabelString;
    }

    public void setTaskLabelString(String taskLabelString) {
        this.taskLabelString = taskLabelString;
    }

    public Integer getUserUnfinishNum() {
        return userUnfinishNum;
    }

    public void setUserUnfinishNum(Integer userUnfinishNum) {
        this.userUnfinishNum = userUnfinishNum;
    }
}
