package com.ljx.dao;

import com.ljx.dto.ApplyToProjectDto;
import com.ljx.dto.LabelDto;
import com.ljx.dto.ProjectDto;
import org.apache.ibatis.annotations.Param;

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

    void insertProjectInfo(ProjectDto projectDto);
}
