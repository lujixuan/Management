package com.sy.service;

import com.sy.dto.ProjectDto;
import org.springframework.ui.Model;

import java.util.List;

public interface ProjectService {
    List<ProjectDto> searchProject(ProjectDto projectDto);

    ProjectDto searchProjectDetail(Integer projectId);
}
