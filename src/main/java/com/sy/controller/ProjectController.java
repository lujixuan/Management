package com.sy.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sy.dto.ProjectDto;
import com.sy.dto.UserDto;
import com.sy.service.ProjectService;
import com.sy.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
//这里用了@SessionAttributes，可以直接把model中的user(也就key)放入其中
//这样保证了session中存在user这个对象
//@SessionAttributes("project")
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
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        List<ProjectDto> projects = projectServivce.searchProject(projectDto);
        //将用户信息放入PageInfo对象里
        PageInfo page = new PageInfo(projects,5);
        model.addAttribute("pageInfo", page);

        return "project/searchProject";
    }

    @RequestMapping("/SearchProjectPage")
    public String searchProject(){
        return "/project/searchProject";
    }

    @RequestMapping("/CreatProject")
    public String creatProject(){
        return "project/creatProject";
    }

    @RequestMapping("/MyProject")
    public String myProject(Model model, String loginUserId, @RequestParam(value="pn",defaultValue="1")Integer pn){
        PageHelper.startPage(pn, 5);
        ProjectDto projectDto = new ProjectDto();
        projectDto.setLoginUserId(loginUserId);
        List<ProjectDto> projects = projectServivce.searchProject(projectDto);
        PageInfo page = new PageInfo(projects,5);
        model.addAttribute("pageInfo", page);
        return "project/myProject";
    }

    @RequestMapping("/projectInfo")
    public String projectInfo(Model model, Integer projectId){
        ProjectDto projectDto = new ProjectDto();
        projectDto.setProjectId(projectId);
        ProjectDto projectInfo = projectServivce.searchProjectDetail(projectId);
        model.addAttribute("projectInfo", projectInfo);
        return "project/projectDetail";
    }

}
