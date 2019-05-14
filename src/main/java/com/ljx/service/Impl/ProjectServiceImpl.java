package com.ljx.service.Impl;

import com.ljx.dao.ProjectDao;
import com.ljx.dto.ProjectDto;
import com.ljx.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
