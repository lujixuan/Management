package com.ljx.dto;

public class ApplyToProjectDto {
    private Integer projectInfoProjectId; // 项目id
    private String projectInfoUserId; // 当前用户
    private String projectInfoType; // 用户在项目中角色
    private String projectInfoRemark; // 申请备注

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
