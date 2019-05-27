package com.ljx.dto;

import java.util.Date;

public class HomeTaskGraphDto {
    private Integer projectId; // 项目id
    private Date taskDate;
    private Integer taskFinishNum;
    private Integer taskUnfinishNum;
    private String taskDateString;

    public Integer getProjectId() {
        return projectId;
    }

    public void setProjectId(Integer projectId) {
        this.projectId = projectId;
    }

    public Date getTaskDate() {
        return taskDate;
    }

    public void setTaskDate(Date taskDate) {
        this.taskDate = taskDate;
    }

    public Integer getTaskUnfinishNum() {
        return taskUnfinishNum;
    }

    public void setTaskUnfinishNum(Integer taskUnfinishNum) {
        this.taskUnfinishNum = taskUnfinishNum;
    }

    public Integer getTaskFinishNum() {
        return taskFinishNum;
    }

    public void setTaskFinishNum(Integer taskFinishNum) {
        this.taskFinishNum = taskFinishNum;
    }

    public String getTaskDateString() {
        return taskDateString;
    }

    public void setTaskDateString(String taskDateString) {
        this.taskDateString = taskDateString;
    }
}
