package com.ljx.dto;

public class TaskChangeDto {
    private Integer taskChangeId;
    private Integer taskChangeTaskId;
    private String taskChangeUserId;
    private String taskChangeUserName;
    private String taskChangeDate;
    private String taskChangeOldValue;
    private String taskChangeNewValue;
    private String taskChangePlace;

    public Integer getTaskChangeId() {
        return taskChangeId;
    }

    public void setTaskChangeId(Integer taskChangeId) {
        this.taskChangeId = taskChangeId;
    }

    public Integer getTaskChangeTaskId() {
        return taskChangeTaskId;
    }

    public void setTaskChangeTaskId(Integer taskChangeTaskId) {
        this.taskChangeTaskId = taskChangeTaskId;
    }

    public String getTaskChangeUserId() {
        return taskChangeUserId;
    }

    public void setTaskChangeUserId(String taskChangeUserId) {
        this.taskChangeUserId = taskChangeUserId;
    }

    public String getTaskChangeUserName() {
        return taskChangeUserName;
    }

    public void setTaskChangeUserName(String taskChangeUserName) {
        this.taskChangeUserName = taskChangeUserName;
    }

    public String getTaskChangeDate() {
        return taskChangeDate;
    }

    public void setTaskChangeDate(String taskChangeDate) {
        this.taskChangeDate = taskChangeDate;
    }

    public String getTaskChangeOldValue() {
        return taskChangeOldValue;
    }

    public void setTaskChangeOldValue(String taskChangeOldValue) {
        this.taskChangeOldValue = taskChangeOldValue;
    }

    public String getTaskChangeNewValue() {
        return taskChangeNewValue;
    }

    public void setTaskChangeNewValue(String taskChangeNewValue) {
        this.taskChangeNewValue = taskChangeNewValue;
    }

    public String getTaskChangePlace() {
        return taskChangePlace;
    }

    public void setTaskChangePlace(String taskChangePlace) {
        this.taskChangePlace = taskChangePlace;
    }
}
