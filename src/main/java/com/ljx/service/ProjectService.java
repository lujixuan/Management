package com.ljx.service;

import com.ljx.dto.ProjectDto;
import com.ljx.dto.ApplyToProjectDto;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

public interface ProjectService {
    void searchProject(ProjectDto projectDto, @RequestParam(value="pn",defaultValue="1")Integer pn, Model model);

    String searchProjectDetail(Model model, String loginUserId, Integer projectId);

    String applyToProject(Model model, ApplyToProjectDto applyToProjectDto);

    String editorProject(Model model, ProjectDto projectDto, String loginUserId, Integer projectId);

    String createProject(Model model, ProjectDto projectDto, String loginUserId);

}
