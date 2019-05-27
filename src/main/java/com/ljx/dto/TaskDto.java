package com.ljx.dto;

import java.util.List;

public class TaskDto {
    private Integer taskId; // 任务id
    private Integer taskProjectId; // 所属项目id
    private Integer taskMatherId; // 母任务号
    private String taskProjectName; // 所属项目名称
    private String taskProjectCode; // 所属项目代号
    private String taskType; // 任务类型
    private String taskPriority; // 任务优先级
    private String taskStartDate; // 任务创建时间
    private String taskEndDate = ""; // 任务截止时间
    private String taskChangeDate; // 任务最后修改时间
    private String taskFinishDate = ""; // 任务完成时间
    private String taskName; // 任务名称
    private String taskDoc; // 任务文档
    private String taskVersion; // 任务所属版本
    private String taskState; // 任务状态
    private String taskStartFromDate; //
    private String taskEndFromDate;
    private String taskStartToDate;
    private String taskEndToDate;
    private String taskCreateUser; // 任务创建人
    private String taskTestUser; // 任务测试人
    private String taskFinishUser; // 任务经办人
    private String taskCreateUserName;
    private String taskTestUserName;
    private String taskFinishUserName;
    private String taskLabelString = ""; // 任务标签字符串
    private List<LabelDto> taskLabelList; // 任务标签
    private List<LabelDto> taskProjectLabelList; // 项目所有的任务标签
    private String taskLabelValue;
    private Integer taskLabelId;
    private String loginUserId; //当前登录用户
    private List<UserDto> projectUsers; // 当前项目所有人员

    public Integer getTaskId() {
        return taskId;
    }

    public void setTaskId(Integer taskId) {
        this.taskId = taskId;
    }

    public Integer getTaskProjectId() {
        return taskProjectId;
    }

    public void setTaskProjectId(Integer taskProjectId) {
        this.taskProjectId = taskProjectId;
    }

    public String getTaskType() {
        return taskType;
    }

    public void setTaskType(String taskType) {
        this.taskType = taskType;
    }

    public String getTaskPriority() {
        return taskPriority;
    }

    public void setTaskPriority(String taskPriority) {
        this.taskPriority = taskPriority;
    }

    public String getTaskStartDate() {
        return taskStartDate;
    }

    public void setTaskStartDate(String taskStartDate) {
        this.taskStartDate = taskStartDate;
    }

    public String getTaskEndDate() {
        return taskEndDate;
    }

    public void setTaskEndDate(String taskEndDate) {
        this.taskEndDate = taskEndDate;
    }

    public String getTaskChangeDate() {
        return taskChangeDate;
    }

    public void setTaskChangeDate(String taskChangeDate) {
        this.taskChangeDate = taskChangeDate;
    }

    public String getTaskFinishDate() {
        return taskFinishDate;
    }

    public void setTaskFinishDate(String taskFinishDate) {
        this.taskFinishDate = taskFinishDate;
    }

    public String getTaskDoc() {
        return taskDoc;
    }

    public void setTaskDoc(String taskDoc) {
        this.taskDoc = taskDoc;
    }

    public String getTaskVersion() {
        return taskVersion;
    }

    public void setTaskVersion(String taskVersion) {
        this.taskVersion = taskVersion;
    }

    public String getTaskState() {
        return taskState;
    }

    public void setTaskState(String taskState) {
        this.taskState = taskState;
    }

    public String getTaskStartFromDate() {
        return taskStartFromDate;
    }

    public void setTaskStartFromDate(String taskStartFromDate) {
        this.taskStartFromDate = taskStartFromDate;
    }

    public String getTaskEndFromDate() {
        return taskEndFromDate;
    }

    public void setTaskEndFromDate(String taskEndFromDate) {
        this.taskEndFromDate = taskEndFromDate;
    }

    public String getTaskStartToDate() {
        return taskStartToDate;
    }

    public void setTaskStartToDate(String taskStartToDate) {
        this.taskStartToDate = taskStartToDate;
    }

    public String getTaskEndToDate() {
        return taskEndToDate;
    }

    public void setTaskEndToDate(String taskEndToDate) {
        this.taskEndToDate = taskEndToDate;
    }

    public String getTaskCreateUser() {
        return taskCreateUser;
    }

    public void setTaskCreateUser(String taskCreateUser) {
        this.taskCreateUser = taskCreateUser;
    }

    public String getTaskTestUser() {
        return taskTestUser;
    }

    public void setTaskTestUser(String taskTestUser) {
        this.taskTestUser = taskTestUser;
    }

    public String getTaskCreateUserName() {
        return taskCreateUserName;
    }

    public void setTaskCreateUserName(String taskCreateUserName) {
        this.taskCreateUserName = taskCreateUserName;
    }

    public String getTaskTestUserName() {
        return taskTestUserName;
    }

    public void setTaskTestUserName(String taskTestUserName) {
        this.taskTestUserName = taskTestUserName;
    }

    public String getTaskLabelString() {
        return taskLabelString;
    }

    public void setTaskLabelString(String taskLabelString) {
        this.taskLabelString = taskLabelString;
    }


    public String getTaskProjectName() {
        return taskProjectName;
    }

    public void setTaskProjectName(String taskProjectName) {
        this.taskProjectName = taskProjectName;
    }

    public String getTaskProjectCode() {
        return taskProjectCode;
    }

    public void setTaskProjectCode(String taskProjectCode) {
        this.taskProjectCode = taskProjectCode;
    }

    public String getLoginUserId() {
        return loginUserId;
    }

    public void setLoginUserId(String loginUserId) {
        this.loginUserId = loginUserId;
    }

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public List<LabelDto> getTaskLabelList() {
        return taskLabelList;
    }

    public void setTaskLabelList(List<LabelDto> taskLabelList) {
        for(LabelDto labelDto : taskLabelList){
            this.taskLabelString = labelDto.getLabelValue();
            this.taskLabelId = labelDto.getLabelId();
        }
        this.taskLabelList = taskLabelList;
    }

    public String getTaskFinishUser() {
        return taskFinishUser;
    }

    public void setTaskFinishUser(String taskFinishUser) {
        this.taskFinishUser = taskFinishUser;
    }

    public String getTaskFinishUserName() {
        return taskFinishUserName;
    }

    public void setTaskFinishUserName(String taskFinishUserName) {
        this.taskFinishUserName = taskFinishUserName;
    }

    public List<UserDto> getProjectUsers() {
        return projectUsers;
    }

    public void setProjectUsers(List<UserDto> projectUsers) {
        this.projectUsers = projectUsers;
    }

    public List<LabelDto> getTaskProjectLabelList() {
        return taskProjectLabelList;
    }

    public void setTaskProjectLabelList(List<LabelDto> taskProjectLabelList) {
        this.taskProjectLabelList = taskProjectLabelList;
    }

    public String getTaskLabelValue() {
        return taskLabelValue;
    }

    public void setTaskLabelValue(String taskLabelValue) {
        this.taskLabelValue = taskLabelValue;
    }

    public Integer getTaskLabelId() {
        return taskLabelId;
    }

    public void setTaskLabelId(Integer taskLabelId) {
        this.taskLabelId = taskLabelId;
    }

    public Integer getTaskMatherId() {
        return taskMatherId;
    }

    public void setTaskMatherId(Integer taskMatherId) {
        this.taskMatherId = taskMatherId;
    }
}
