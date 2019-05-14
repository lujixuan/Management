package com.ljx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/user")
//这里用了@SessionAttributes，可以直接把model中的user(也就key)放入其中
//这样保证了session中存在user这个对象
//@SessionAttributes("project")
public class TaskController {

    @RequestMapping("/SearchTaskPage")
    public String searchTask(){
        return "/task/searchTask";
    }

    @RequestMapping("/CreateTaskPage")
    public String createTask(){
        return "/task/createTask";
    }

    @RequestMapping("/MyTaskPage")
    public String myTask(){
        return "/task/myTask";
    }

    @RequestMapping("/TaskDetailPage")
    public String taskDetail(){
        return "/task/taskDetail";
    }



}
