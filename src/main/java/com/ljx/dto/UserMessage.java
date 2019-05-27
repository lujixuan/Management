package com.ljx.dto;

public class UserMessage {
    private String userName;

    private String userId;

    private String projectInfoRemark;

    private Integer projectId;

    private String projectName;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getProjectInfoRemark() {
        return projectInfoRemark;
    }

    public void setProjectInfoRemark(String projectInfoRemark) {
        this.projectInfoRemark = projectInfoRemark;
    }

    public Integer getProjectId() {
        return projectId;
    }

    public void setProjectId(Integer projectId) {
        this.projectId = projectId;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }
}
