package com.ljx.controller;

import com.ljx.dto.ProjectDto;
import com.ljx.dto.TaskDto;
import com.ljx.service.ProjectService;
import com.ljx.service.TaskService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;


@Controller
@RequestMapping("/user")
@SessionAttributes("task")
public class TaskController {
    @Autowired
    private TaskService taskServivce;

    @RequestMapping("/SearchTask")
    public String searchTask(TaskDto taskDto, String loginUserId, @RequestParam(value="pn",defaultValue="1")Integer pn, Model model){
        taskDto.setLoginUserId(loginUserId);
        return taskServivce.searchTask(taskDto, pn, model);
    }

    @RequestMapping("/CreateTaskPage")
    public String createTaskPage(@Param(value = "projectId")Integer projectId, Model model){
        return taskServivce.createTaskPage(projectId, model);
    }

    @RequestMapping("/CreateTask")
    public String createTask(TaskDto taskDto, @Param(value = "loginUserId")String loginUserId, Model model){
        return taskServivce.createTask(taskDto, loginUserId, model);
    }

    @RequestMapping("/MyTaskPage")
    public String myTask(TaskDto taskDto, String loginUserId, @RequestParam(value="pn",defaultValue="1")Integer pn, Model model){
        taskDto.setLoginUserId(loginUserId);
        taskDto.setTaskCreateUser(loginUserId);
        taskDto.setTaskTestUser(loginUserId);
        taskDto.setTaskFinishUser(loginUserId);
        taskServivce.searchTask(taskDto, pn, model);
        return "/task/myTask";
    }

    @RequestMapping("/TaskDetailPage")
    public String taskDetailPage(){
        return "/task/taskDetail";
    }

    @RequestMapping("/TaskDetail")
    public String taskDetail(@Param(value = "taskId")Integer taskId, @Param(value = "loginUserId")String loginUserId, Model model){
        return taskServivce.taskDetail(taskId,  model);
    }

    @RequestMapping("/EditorTask")
    public String editorTask(TaskDto taskDto, @Param(value = "taskId")Integer taskId, @Param(value = "loginUserId")String loginUserId, Model model){
        return taskServivce.editorTask(taskDto, taskId, loginUserId, model);
    }

    /**
     * 项目未完成任务
     */
    @RequestMapping("/UnfinishTaskPage")
    public String unfinishTaskPage(Integer projectId,@RequestParam(value="pn",defaultValue="1")Integer pn, Model model){
        return taskServivce.unfinishTaskPage(projectId, pn, model);
    }

}
