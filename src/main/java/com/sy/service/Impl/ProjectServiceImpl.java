package com.sy.service.Impl;

import com.sy.dao.ProjectDao;
import com.sy.dao.UserDao;
import com.sy.dto.ProjectDto;
import com.sy.dto.UserDto;
import com.sy.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;

@Service
public class ProjectServiceImpl implements ProjectService {

    @Autowired
    private ProjectDao projectDao;

    @Override
    public List<ProjectDto> searchProject(ProjectDto projectDto){
        return projectDao.listProject(projectDto);
    }

    @Override
    public ProjectDto searchProjectDetail(Integer projectId){
        return projectDao.searchProjectDetail(projectId);
    }
}
