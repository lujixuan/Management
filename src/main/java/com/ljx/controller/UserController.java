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
import org.springframework.web.bind.annotation.RequestParam;
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
	public String personal(Integer projectId,String loginUserId,  Model model,HttpServletRequest request){
		return userService.personal(projectId, loginUserId, model,request);
	}

    @RequestMapping("/userMessagePage")
    public String userMessagePage(String loginUserId, @RequestParam(value="pn",defaultValue="1")Integer pn, Model model){
		return userService.userMessage(loginUserId, pn, model);
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
	public String register(UserDto userDto, Model model, HttpServletResponse response){
		return userService.registerByUserId(userDto, model, response);
	}

	@RequestMapping("/ChangePwd")
	public void changePwd(UserDto userDto, Model model, HttpServletResponse response){
		userService.changePwd(userDto, model, response);
	}

	@RequestMapping("/cancelApply")
	public void cancelApply(String userId, Integer projectId, HttpServletResponse response){
		userService.cancelApply(userId, projectId, response);
	}

	@RequestMapping("/agreeApply")
	public void agreeApply(String userId, Integer projectId,String type, HttpServletResponse response){
		userService.agreeApply(userId, projectId, type, response);
	}

	@RequestMapping("/editorAuthority")
	public void editorAuthority(String userId, Integer projectId,String type, HttpServletResponse response){
		userService.editorAuthority(userId, projectId, type, response);
	}
}
