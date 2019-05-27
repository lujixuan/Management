package com.ljx.dto;

public class ProjectInfoDto {
    private Integer projectInfoProjectId;
    private String projectInfoUserId;
    private String projectInfoUserName;
    private String projectInfoType;
    private String projectInfoRemark;

    public Integer getProjectInfoProjectId() {
        return projectInfoProjectId;
    }

    public void setProjectInfoProjectId(Integer projectInfoProjectId) {
        this.projectInfoProjectId = projectInfoProjectId;
    }

    public String getProjectInfoUserId() {
        return projectInfoUserId;
    }

    public void setProjectInfoUserId(String projectInfoUserId) {
        this.projectInfoUserId = projectInfoUserId;
    }

    public String getProjectInfoUserName() {
        return projectInfoUserName;
    }

    public void setProjectInfoUserName(String projectInfoUserName) {
        this.projectInfoUserName = projectInfoUserName;
    }

    public String getProjectInfoType() {
        return projectInfoType;
    }

    public void setProjectInfoType(String projectInfoType) {
        this.projectInfoType = projectInfoType;
    }

    public String getProjectInfoRemark() {
        return projectInfoRemark;
    }

    public void setProjectInfoRemark(String projectInfoRemark) {
        this.projectInfoRemark = projectInfoRemark;
    }
}
