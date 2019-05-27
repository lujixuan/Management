package com.ljx.service.Impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ljx.dao.ProjectDao;
import com.ljx.dao.TaskDao;
import com.ljx.dto.*;
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

    @Autowired
    private TaskDao taskDao;

    /**
     * 项目列表
     */
    @Override
    public void searchProject(ProjectDto projectDto, @RequestParam(value="pn",defaultValue="1")Integer pn, Model model){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        List<ProjectDto> projects = projectDao.listProject(projectDto);
        searchProjectAbout(projects, model);
    }

    /**
     * 搜索项目相关信息
     */
    public void searchProjectAbout(List<ProjectDto> projects, Model model){
        for (ProjectDto projectDto1 : projects) {
            projectDto1.setProjectUserNum(projectDao.searchProjectUserNum(projectDto1.getProjectId()));
            projectDto1.setProjectLabelList(projectDao.searchProjectLabelList(projectDto1.getProjectId()));
        }
        //将用户信息放入PageInfo对象里
        PageInfo page = new PageInfo(projects,5);
        model.addAttribute("pageInfo", page);
    }

    /**
     * 项目详情
     */
    @Override
    public String searchProjectDetail(Model model, String loginUserId, Integer projectId){
        ProjectDto projectInfo = searchProjectInfo(loginUserId, projectId);
        List<ProjectInfoDto> projectUserInfoList = projectDao.searchProjectUserInfoList(projectId);
        // 查找项目动态
        List<ProjectChangeDto> projectChange = projectDao.searchProjectChangeList(projectId);
        // 查找任务动态
        List<TaskChangeDto> taskChange = taskDao.searchTaskChangeByProjectId(projectId);
        // 查找子任务
        TaskDto taskDto = new TaskDto();
        taskDto.setTaskProjectId(projectId);
        List<TaskDto> sonTask = taskDao.listTask(taskDto);
        model.addAttribute("sonTask", sonTask);
        model.addAttribute("projectInfo", projectInfo);
        model.addAttribute("projectUserInfoList",projectUserInfoList);
        model.addAttribute("projectChange", projectChange);
        model.addAttribute("taskChange", taskChange);

        return "project/projectDetail";
    }

    /**
     * 搜索项目的一些信息
     */
    public ProjectDto searchProjectInfo(String loginUserId, Integer projectId){
        ProjectDto projectInfo = projectDao.searchProjectDetail(projectId);
        projectInfo.setProjectUserNum(projectDao.searchProjectUserNum(projectId));
        projectInfo.setProjectInfoType(projectDao.searchProjectInfoType(projectId, loginUserId));
        projectInfo.setProjectLabelList(projectDao.searchProjectLabelList(projectId));
        projectInfo.setTaskLabelList(projectDao.searchTaskLabelList(projectId));
        return projectInfo;
    }

    /**
     * 申请加入
     */
    @Override
    public String applyToProject(Model model, ApplyToProjectDto applyToProjectDto){
        Integer projectId = applyToProjectDto.getProjectInfoProjectId();
        String loginUserId = applyToProjectDto.getProjectInfoUserId();
        projectDao.applyToProject(applyToProjectDto);
        searchProjectDetail(model, loginUserId,  projectId);
        return "project/projectDetail";
    }

    /**
     * 编辑项目
     */
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
            projectDao.insertProjectChangeInfo(projectId, loginUserId, "简介", "简介", "项目简介");
        }
        if(!oldProjectInfo.getProjectDoc().equals(projectDto.getProjectDoc())){
            projectDao.insertProjectChangeInfo(projectId, loginUserId, "文档", "文档", "项目文档");
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
        projectDao.insertProjectInfo(projectDto,loginUserId);
        if(projectDto.getProjectLabelString() != null && projectDto.getProjectLabelString() != ""){
            editorLabel(projectDto.getProjectLabelString(), projectDto.getProjectId(), "项目");
        }
        if(projectDto.getTaskLabelString() != null && projectDto.getTaskLabelString() != ""){
            editorLabel(projectDto.getTaskLabelString(), projectDto.getProjectId(), "任务");
        }
        return searchProjectDetail(model, loginUserId, projectDto.getProjectId());
    }

    /**
     * 返回项目未完成任务数
     * @param projectId
     * @return
     */
    public int searchUnfinishTaskNum(Integer projectId){
        return projectDao.searchUnfinishTaskNum(projectId);
    }












}


