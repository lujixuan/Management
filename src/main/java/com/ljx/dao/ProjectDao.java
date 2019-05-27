package com.ljx.dao;

import com.ljx.dto.*;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface ProjectDao {

    List<ProjectDto> listProject(ProjectDto projectDto);

    ProjectDto searchProjectDetail(@Param(value = "projectId")Integer projectId);

    String searchProjectInfoType(@Param(value = "projectId")Integer projectId, @Param(value = "loginUserId")String loginUserId);

    Integer searchProjectUserNum(@Param(value = "projectId")Integer projectId);

    List<LabelDto> searchProjectLabelList(@Param(value = "projectId")Integer projectId);

    List<LabelDto> searchTaskLabelList(@Param(value = "projectId")Integer projectId);

    void applyToProject(ApplyToProjectDto applyToProjectDto);

    void deleteLabel(@Param(value = "labelProjectId")Integer labelProjectId, @Param(value = "labelType") String labelType);

    void insertLabel(@Param(value = "labelValue")String labelValue, @Param(value = "labelProjectId")Integer labelProjectId, @Param(value = "labelType") String labelType);

    void updateProjectInfo(ProjectDto projectDto);

    void insertProjectChangeInfo(@Param(value = "projectChangeProjectid")Integer projectChangeProjectid, @Param(value = "projectChangeUserId")String projectChangeUserId, @Param(value = "projectChangeOldValue")String projectChangeOldValue, @Param(value = "projectChangeNewValue")String projectChangeNewValue, @Param(value = "projectChangeType")String projectChangeType);

    void insertProject(ProjectDto projectDto);

    void insertProjectInfo(ProjectDto projectDto, @Param(value = "createId")String createId);

    List<ProjectDto> findProjectListByUserId(@Param(value = "userId")String userId);

    List<ProjectInfoDto> searchProjectUserInfoList(@Param(value = "projectId")Integer projectId);

    List<ProjectChangeDto> searchProjectChangeList(@Param(value = "projectId")Integer projectId);

    int searchUnfinishTaskNum(@Param(value = "projectId")Integer projectId);

    String searchProjectNameById(@Param(value = "projectId")Integer projectId);

    int countProjectChangeNum(@Param(value = "projectId") int projectId, @Param(value = "date") Date date);

    int countTaskChangeNum(@Param(value = "projectId") int projectId, @Param(value = "date") Date date);


}
