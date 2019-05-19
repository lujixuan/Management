package com.ljx.controller;

import com.ljx.dto.ProjectDto;
import com.ljx.dto.ApplyToProjectDto;
import com.ljx.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/user")
@SessionAttributes("project")
public class ProjectController {
    @Autowired
    private ProjectService projectServivce;

    /**
     * 搜索项目列表
     * @param projectDto
     * @return
     */
    @RequestMapping("/searchProject")
    public String searchProject(ProjectDto projectDto,@RequestParam(value="pn",defaultValue="1")Integer pn, Model model){
        projectServivce.searchProject(projectDto, pn, model);
        return "project/searchProject";
    }

    @RequestMapping("/SearchProjectPage")
    public String searchProjectPage(ProjectDto projectDto,@RequestParam(value="pn",defaultValue="1")Integer pn, Model model){
        projectServivce.searchProject(projectDto, pn, model);
        return "project/searchProject";
    }

    @RequestMapping("/CreatProjectPage")
    public String creatProjectPage(){
        return "project/creatProject";
    }

    @RequestMapping("/MyProject")
    public String myProject(Model model, String loginUserId, @RequestParam(value="pn",defaultValue="1")Integer pn){
        ProjectDto projectDto = new ProjectDto();
        projectDto.setLoginUserId(loginUserId);
        projectServivce.searchProject(projectDto, pn, model);
        return "project/myProject";
    }

    @RequestMapping("/projectInfo")
    public String projectInfo(Model model, String loginUserId, Integer projectId){
        return projectServivce.searchProjectDetail(model, loginUserId,  projectId);
    }

    @RequestMapping("/applyToProject")
    public String applyToProject(ApplyToProjectDto applyToProjectDto, Model model){
        return projectServivce.applyToProject(model, applyToProjectDto);
    }

    /**
     * 编辑项目信息
     */
    @RequestMapping("/editorProject")
    public String editorProject(ProjectDto projectDto, Model model, String loginUserId, Integer projectId){
        return projectServivce.editorProject(model, projectDto, loginUserId, projectId);
    }

    /**
     * 创建项目
     */
    @RequestMapping("/createProject")
    public String createProject(ProjectDto projectDto, Model model, String loginUserId){
        return projectServivce.createProject(model, projectDto, loginUserId);
    }

}
