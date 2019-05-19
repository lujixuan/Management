package com.ljx.service.Impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ljx.dao.ProjectDao;
import com.ljx.dto.ProjectDto;
import com.ljx.dto.ApplyToProjectDto;
import com.ljx.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Service
public class ProjectServiceImpl implements ProjectService {

    @Autowired
    private ProjectDao projectDao;

    @Override
    public void searchProject(ProjectDto projectDto, @RequestParam(value="pn",defaultValue="1")Integer pn, Model model){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        List<ProjectDto> projects = projectDao.listProject(projectDto);
        for (ProjectDto projectDto1 : projects) {
            projectDto1.setProjectUserNum(projectDao.searchProjectUserNum(projectDto1.getProjectId()));
            projectDto1.setProjectLabelList(projectDao.searchProjectLabelList(projectDto1.getProjectId()));
        }
        //将用户信息放入PageInfo对象里
        PageInfo page = new PageInfo(projects,5);
        model.addAttribute("pageInfo", page);
    }

    @Override
    public String searchProjectDetail(Model model, String loginUserId, Integer projectId){
        ProjectDto projectInfo = searchProjectInfo(loginUserId, projectId);
        model.addAttribute("projectInfo", projectInfo);
        return "project/projectDetail";
    }

    public ProjectDto searchProjectInfo(String loginUserId, Integer projectId){
        ProjectDto projectInfo = projectDao.searchProjectDetail(projectId);
        projectInfo.setProjectUserNum(projectDao.searchProjectUserNum(projectId));
        projectInfo.setProjectInfoType(projectDao.searchProjectInfoType(projectId, loginUserId));
        projectInfo.setProjectLabelList(projectDao.searchProjectLabelList(projectId));
        projectInfo.setTaskLabelList(projectDao.searchTaskLabelList(projectId));
        return projectInfo;
    }

    @Override
    public String applyToProject(Model model, ApplyToProjectDto applyToProjectDto){
        Integer projectId = applyToProjectDto.getProjectInfoProjectId();
        String loginUserId = applyToProjectDto.getProjectInfoUserId();
        projectDao.applyToProject(applyToProjectDto);
        searchProjectDetail(model, loginUserId,  projectId);
        return "project/projectDetail";
    }

    @Override
    public String editorProject(Model model, ProjectDto projectDto, String loginUserId, Integer projectId){
        ProjectDto oldProjectInfo = searchProjectInfo(loginUserId, projectId);
        projectDto.setProjectId(projectId);
        // 更新项目动态
        if(!oldProjectInfo.getProjectName().equals(projectDto.getProjectName())){
            projectDao.insertProjectChangeInfo(projectId, loginUserId, oldProjectInfo.getProjectName(), projectDto.getProjectName(), "项目名称");
        }
        if(!oldProjectInfo.getProjectCode().equals(projectDto.getProjectCode())){
            projectDao.insertProjectChangeInfo(projectId, loginUserId, oldProjectInfo.getProjectCode(), projectDto.getProjectCode(), "项目代号");
        }
        if(!oldProjectInfo.getProjectDescribe().equals(projectDto.getProjectDescribe())){
            projectDao.insertProjectChangeInfo(projectId, loginUserId, "", "", "项目简介");
        }
        if(!oldProjectInfo.getProjectDoc().equals(projectDto.getProjectDoc())){
            projectDao.insertProjectChangeInfo(projectId, loginUserId, "", "", "项目文档");
            projectDto.setProjectDoc(projectDto.getProjectDoc().replaceAll("\\r\\n", "<br>"));
        }
        if(!oldProjectInfo.getTaskLabelString().equals(projectDto.getTaskLabelString())){
            projectDao.insertProjectChangeInfo(projectId, loginUserId, oldProjectInfo.getTaskLabelString(), projectDto.getTaskLabelString(), "任务标签");
            editorLabel(projectDto.getTaskLabelString(), projectId, "任务");
        }
        if(!oldProjectInfo.getProjectLabelString().equals(projectDto.getProjectLabelString())){
            projectDao.insertProjectChangeInfo(projectId, loginUserId, oldProjectInfo.getProjectLabelString(), projectDto.getProjectLabelString(), "项目标签");
            editorLabel(projectDto.getProjectLabelString(), projectId, "项目");
        }
        // 更新项目信息
        projectDao.updateProjectInfo(projectDto);
        // 返回最新界面
//        return searchProjectDetail(model, loginUserId, projectId);
        return searchProjectDetail(model, loginUserId, projectId);
    }

    /**
     * 更改标签
     */
    private void editorLabel(String labelString, Integer labelProjectId, String labelType){
        projectDao.deleteLabel(labelProjectId, labelType);
        String[] labelList = labelString.split(";");
        for(String labelValue : labelList){
            if(labelValue != null && labelValue != ""){
                projectDao.insertLabel(labelValue, labelProjectId, labelType);
            }
        }
    }


    /**
     * 创建新项目
     */
    @Override
    public String createProject(Model model, ProjectDto projectDto, String loginUserId){
        projectDto.setProjectDoc(projectDto.getProjectDoc().replaceAll("\\r\\n", "<br>"));
        projectDao.insertProject(projectDto);
        projectDao.updateProjectInfo(projectDto);
        projectDao.insertProjectInfo(projectDto);
        if(projectDto.getProjectLabelString() != null && projectDto.getProjectLabelString() != ""){
            editorLabel(projectDto.getProjectLabelString(), projectDto.getProjectId(), "项目");
        }
        if(projectDto.getTaskLabelString() != null && projectDto.getTaskLabelString() != ""){
            editorLabel(projectDto.getTaskLabelString(), projectDto.getProjectId(), "任务");
        }
        return searchProjectDetail(model, loginUserId, projectDto.getProjectId());
    }
}
