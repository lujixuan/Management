package com.sy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSON;
import com.sy.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sy.service.UserService;

@Controller
@RequestMapping("/user")
@SessionAttributes("user")
public class UserController {
	
	@Autowired
	private UserService userServivce;
	
	//正常访问login页面
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

    /**
     * 登录
     * @param userDto
     * @param model
     * @param request
     * @return
     */
	@RequestMapping("/checkLogin")
	public String checkLogin(UserDto userDto, Model model, HttpServletRequest request){
		userDto = userServivce.checkLogin(userDto.getUserId(), userDto.getUserPwd());
		if(userDto != null){
			model.addAttribute("user", userDto);
			model.addAttribute("userJson", JSON.toJSON(userDto));
			return "personal";
		}
		request.setAttribute("error_username","用户名不存在！");
		return "login";
	}

	@RequestMapping("/anotherpage")
	public String hrefpage(){
		return "anotherpage";
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
		UserDto userDto1 = userDto;
		if(userServivce.findById(userDto.getUserId())){
			userServivce.registerByUserId(userDto);
			model.addAttribute("user", userDto);
			return "personal";
		}
		return "about";
	}
}
