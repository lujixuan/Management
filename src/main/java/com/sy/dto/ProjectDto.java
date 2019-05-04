package com.sy.dto;

import java.util.Date;

public class ProjectDto {
    private Integer projectId; // 项目id
    private String projectName; //项目名
    private String projectCode; //项目代号
    private String projectDate; // 项目创建日期
    private String projectToDate; // 查询时使用：结束时间范围
    private String projectDescribe; // 项目简介
    private String userId; // 创建人
    private String userName; // 创建人姓名
    private String loginUserId; // 当前用户


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
}
