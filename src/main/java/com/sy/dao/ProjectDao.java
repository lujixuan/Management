package com.sy.dao;

import com.sy.dto.ProjectDto;

import java.util.List;

public interface ProjectDao {

    List<ProjectDto> listProject(ProjectDto projectDto);
}
