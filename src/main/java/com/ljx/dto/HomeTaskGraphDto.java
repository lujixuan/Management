package com.ljx.dto;

import java.util.Date;

public class HomeTaskGraphDto {
    private Integer projectId; // 项目id
    private Date taskDate;
    private Integer teskFinishNum;
    private Integer taskUnfinishNum;

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

    public Integer getTeskFinishNum() {
        return teskFinishNum;
    }

    public void setTeskFinishNum(Integer teskFinishNum) {
        this.teskFinishNum = teskFinishNum;
    }

    public Integer getTaskUnfinishNum() {
        return taskUnfinishNum;
    }

    public void setTaskUnfinishNum(Integer taskUnfinishNum) {
        this.taskUnfinishNum = taskUnfinishNum;
    }
}
