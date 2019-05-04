package com.sy.dao;

import com.sy.dto.ProjectDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProjectDao {

    List<ProjectDto> listProject(ProjectDto projectDto);

    ProjectDto searchProjectDetail(@Param(value = "projectId")Integer projectId);
}
