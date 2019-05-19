package com.ljx.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSON;
import com.ljx.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ljx.service.UserService;

@Controller
@RequestMapping("/user")
@SessionAttributes("user")
public class UserController {
	
	@Autowired
	private UserService userService;

	/**
	 * 访问login页面
	 */
	@RequestMapping("/login")
	public String login(){
		return "login";
	}

	@RequestMapping("/index")
	public String index(){
		return "index";
	}

	@RequestMapping("/about")
	public String about(){
		return "about";
	}

	@RequestMapping("/personal")
	public String personal(){
		return "personal";
	}

    @RequestMapping("/userMessagePage")
    public String userMessagePage(){
        return "/user/userMessage";
    }

    /**
     * 登录
     */
	@RequestMapping("/checkLogin")
	public String checkLogin(UserDto userDto, Model model, HttpServletRequest request, HttpServletResponse response){
		return userService.checkLogin(userDto, model, request, response);
	}

	@RequestMapping("/outLogin")
	public String outLogin(HttpSession session){
		//通过session.invalidata()方法来注销当前的session
		session.invalidate();
		return "login";
	}

	@RequestMapping("/registerPage")
	public String registerPage(){
		return "register";
	}

	@RequestMapping("/register")
	public String register(UserDto userDto, Model model){
		return userService.registerByUserId(userDto, model);
	}
}
