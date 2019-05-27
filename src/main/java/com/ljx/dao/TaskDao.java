package com.ljx.dao;

import com.ljx.dto.LabelDto;
import com.ljx.dto.TaskChangeDto;
import com.ljx.dto.TaskDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TaskDao {
    List<TaskDto> listTask(TaskDto taskDto);

    List<LabelDto> searchTaskLabelList(@Param(value = "taskId")Integer taskId);

    List<LabelDto> searchTaskProjectLabelList(@Param(value = "projectId")Integer projectId);

    TaskDto selectTaskById(@Param(value = "taskId")Integer taskId);

    void updateTaskInfo(@Param(value = "taskInfoTaskId")Integer taskInfoTaskId, @Param(value = "taskInfoUserId")String taskInfoUserId, @Param(value = "taskInfoType")String taskInfoType);

    void updateTask(TaskDto taskDto);

    void insertTaskChangeInfo(@Param(value = "taskId")Integer taskId,@Param(value = "loginUserId")String loginUserId, @Param(value = "oldValue")String oldValue, @Param(value = "newValue")String newValue, @Param(value = "changePlace")String changePlace);

    String findLabelById(@Param(value = "labelId")Integer labelId);

    void updateTaskLabel(@Param(value = "taskId")Integer taskId, @Param(value = "labelId")Integer labelId);

    void insertTask(TaskDto taskDto);

    void insertSubtask(@Param(value = "taskId")Integer taskId, @Param(value = "taskMatherId")Integer taskMatherId);

    void insertLabelInfo(@Param(value = "taskId") int taskId, @Param(value = "labelId") int labelId);

    List<TaskChangeDto> searchTaskChangeByProjectId(@Param(value = "projectId")Integer projectId);

    List<TaskChangeDto> searchTaskChangeByTaskId(@Param(value = "taskId")Integer taskId);

    List<TaskDto> listUnfinishTask(@Param(value = "projectId")Integer projectId);
}
