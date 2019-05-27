package com.ljx.service;

import com.ljx.dto.TaskDto;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

public interface TaskService {
    String searchTask(TaskDto taskDto, @RequestParam(value="pn",defaultValue="1")Integer pn, Model model);

    String taskDetail(Integer taskId,  Model model);

    String editorTask(TaskDto taskDto, Integer taskId, String loginUserId, Model model);

    String createTaskPage(Integer projectId, Model model);

    String createTask(TaskDto taskDto, String loginUserId, Model model);

    String unfinishTaskPage(Integer projectId,@RequestParam(value="pn",defaultValue="1")Integer pn, Model model);


}
