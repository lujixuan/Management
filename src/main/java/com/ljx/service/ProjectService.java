package com.ljx.service;

import com.ljx.dto.ProjectDto;

import java.util.List;

public interface ProjectService {
    List<ProjectDto> searchProject(ProjectDto projectDto);

    ProjectDto searchProjectDetail(Integer projectId);
}
