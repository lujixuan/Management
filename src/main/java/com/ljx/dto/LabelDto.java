package com.ljx.dto;

public class LabelDto {
    private Integer labelId; // 标签id
    private String labelValue; // 标签值
    private Integer labelProjectId; // 项目id
    private String labelType; // 标签类型：项目、任务

    public Integer getLabelId() {
        return labelId;
    }

    public void setLabelId(Integer labelId) {
        this.labelId = labelId;
    }

    public String getLabelValue() {
        return labelValue;
    }

    public void setLabelValue(String labelValue) {
        this.labelValue = labelValue;
    }

    public Integer getLabelProjectId() {
        return labelProjectId;
    }

    public void setLabelProjectId(Integer labelProjectId) {
        this.labelProjectId = labelProjectId;
    }

    public String getLabelType() {
        return labelType;
    }

    public void setLabelType(String labelType) {
        this.labelType = labelType;
    }
}
