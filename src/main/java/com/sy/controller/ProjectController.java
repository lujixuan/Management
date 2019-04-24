package com.sy.controller;

import com.sy.dto.ProjectDto;
import com.sy.dto.UserDto;
import com.sy.service.ProjectService;
import com.sy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

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
    public String searchProject(ProjectDto projectDto, Model model){
        model.addAttribute("project",projectServivce.searchProject(projectDto));

        return "project/searchProject";
    }


}
