package com.ljx.service.Impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ljx.dao.ProjectDao;
import com.ljx.dao.TaskDao;
import com.ljx.dao.UserDao;
import com.ljx.dto.*;
import com.ljx.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.SessionScope;

import java.util.List;

@Service
public class TaskServiceImpl implements TaskService {
    @Autowired
    private TaskDao taskDao;

    @Autowired
    private UserDao userDao;

    @Override
    public String searchTask(TaskDto taskDto, @RequestParam(value="pn",defaultValue="1")Integer pn, Model model){
        // 从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        List<TaskDto> tasks = taskDao.listTask(taskDto);
        return searchTaskAbout(tasks, model);
    }

    public  String searchTaskAbout(List<TaskDto> tasks, Model model){
        // 查找人名
        for (TaskDto task1 : tasks) {
            selectName(task1);
        }
        //将用户信息放入PageInfo对象里
        PageInfo page = new PageInfo(tasks,5);
        model.addAttribute("taskList", page);

        return "/task/searchTask";
    }

    @Override
    public String taskDetail(Integer taskId,  Model model){
        TaskDto taskDetail = taskDao.selectTaskById(taskId);
        // 查找人名
        selectName(taskDetail);
        // 查找项目所有人
        taskDetail.setProjectUsers(userDao.listProjectUser(taskDetail.getTaskProjectId()));
        model.addAttribute("taskDetail", taskDetail);
        // 查找任务动态
        List<TaskChangeDto> taskChange = taskDao.searchTaskChangeByTaskId(taskId);
        model.addAttribute("taskChange", taskChange);
        // 查找子任务
        TaskDto taskDto = new TaskDto();
        taskDto.setTaskMatherId(taskId);
        List<TaskDto> sonTask = taskDao.listTask(taskDto);
        model.addAttribute("sonTask", sonTask);

        return "task/taskDetail";
    }

    /**
     * 查找任务相关人员名称和标签
     */
    private void selectName(TaskDto task1){
        task1.setTaskCreateUserName(userDao.findByUserId(task1.getTaskCreateUser()).getUserName());
        task1.setTaskTestUserName(userDao.findByUserId(task1.getTaskTestUser()).getUserName());
        task1.setTaskFinishUserName(userDao.findByUserId(task1.getTaskFinishUser()).getUserName());
        task1.setTaskLabelList(taskDao.searchTaskLabelList(task1.getTaskId()));
        task1.setTaskProjectLabelList(taskDao.searchTaskProjectLabelList(task1.getTaskProjectId()));
    }

    @Override
    public String editorTask(TaskDto taskDto, Integer taskId, String loginUserId, Model model){
        taskDto.setTaskId(taskId);
        TaskDto oldTaskDto = taskDao.selectTaskById(taskId);
        selectName(oldTaskDto);
        if(!oldTaskDto.getTaskName().equals(taskDto.getTaskName())){
            taskDao.insertTaskChangeInfo(taskId, loginUserId, oldTaskDto.getTaskName(), taskDto.getTaskName(), "任务名称");
        }
        if(!oldTaskDto.getTaskVersion().equals(taskDto.getTaskVersion())){
            taskDao.insertTaskChangeInfo(taskId, loginUserId, oldTaskDto.getTaskVersion(), taskDto.getTaskVersion(), "所属版本");
        }
        if(!oldTaskDto.getTaskPriority().equals(taskDto.getTaskPriority())){
            taskDao.insertTaskChangeInfo(taskId, loginUserId, oldTaskDto.getTaskPriority(), taskDto.getTaskPriority(), "优先级");
        }
        if(!oldTaskDto.getTaskFinishUser().equals(taskDto.getTaskFinishUser())){
            taskDao.insertTaskChangeInfo(taskId, loginUserId, oldTaskDto.getTaskFinishUser(), taskDto.getTaskFinishUser(), "经办人");
            taskDao.updateTaskInfo(taskId, taskDto.getTaskFinishUser(), "经办人");
        }
        if(!oldTaskDto.getTaskTestUser().equals(taskDto.getTaskTestUser())){
            taskDao.insertTaskChangeInfo(taskId, loginUserId, oldTaskDto.getTaskTestUser(), taskDto.getTaskTestUser(), "测试人");
            taskDao.updateTaskInfo(taskId, taskDto.getTaskTestUser(), "测试人");
        }
        if(!oldTaskDto.getTaskState().equals(taskDto.getTaskState())){
            taskDao.insertTaskChangeInfo(taskId, loginUserId, oldTaskDto.getTaskState(), taskDto.getTaskState(), "任务状态");
        }
        if(!oldTaskDto.getTaskType().equals(taskDto.getTaskType())){
            taskDao.insertTaskChangeInfo(taskId, loginUserId, oldTaskDto.getTaskType(), taskDto.getTaskType(), "任务类型");
        }
        if(!oldTaskDto.getTaskEndDate().equals(taskDto.getTaskEndDate())){
            taskDao.insertTaskChangeInfo(taskId, loginUserId, oldTaskDto.getTaskEndDate(), taskDto.getTaskEndDate(), "截止日期");
        }
        if(!oldTaskDto.getTaskDoc().equals(taskDto.getTaskDoc())){
            taskDao.insertTaskChangeInfo(taskId, loginUserId, "文档", "文档", "任务文档");
            taskDto.setTaskDoc(taskDto.getTaskDoc().replaceAll("\\r\\n", "<br>"));
        }
        if(!oldTaskDto.getTaskLabelId().equals(taskDto.getTaskLabelId())){
            taskDao.insertTaskChangeInfo(taskId, loginUserId, oldTaskDto.getTaskLabelString(), taskDao.findLabelById(taskDto.getTaskLabelId()), "任务标签");
            taskDao.updateTaskLabel(taskId, taskDto.getTaskLabelId());
        }
        taskDao.updateTask(taskDto);

        return taskDetail(taskId, model);
    }

    @Override
    public String createTaskPage(Integer projectId, Model model){
        List<UserDto> projectUserList = userDao.listProjectUser(projectId);
        List<LabelDto> projectTaskLabelList = taskDao.searchTaskProjectLabelList(projectId);
        model.addAttribute("projectUserList",projectUserList);
        model.addAttribute("projectTaskLabelList",projectTaskLabelList);
        return "/task/createTask";
    }

    @Override
    public String createTask(TaskDto taskDto, String loginUserId, Model model){
        taskDto.setTaskDoc(taskDto.getTaskDoc().replaceAll("\\r\\n", "<br>"));
        taskDto.setTaskCreateUser(loginUserId);
        taskDao.insertTask(taskDto);
        taskDao.updateTask(taskDto);
        taskDao.insertLabelInfo(taskDto.getTaskId().intValue(), taskDto.getTaskLabelId().intValue());
        taskDao.updateTaskInfo(taskDto.getTaskId(), taskDto.getTaskFinishUser(), "经办人");
        taskDao.updateTaskInfo(taskDto.getTaskId(), taskDto.getTaskTestUser(), "测试人");
        taskDao.updateTaskInfo(taskDto.getTaskId(), taskDto.getTaskCreateUser(), "创建人");
        if(null != taskDto.getTaskMatherId() && "".equals(taskDto.getTaskId())){
            taskDao.insertSubtask(taskDto.getTaskId(), taskDto.getTaskMatherId());
        }

        return taskDetail(taskDto.getTaskId(), model);
    }

    /**
     * 项目未完成任务
     */
    @Override
    public String unfinishTaskPage(Integer projectId,@RequestParam(value="pn",defaultValue="1")Integer pn, Model model){

        // 从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        List<TaskDto> tasks = taskDao.listUnfinishTask(projectId);
        return searchTaskAbout(tasks, model);
    }

}
