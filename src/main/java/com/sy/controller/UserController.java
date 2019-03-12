package com.sy.controller;

import javax.servlet.http.HttpSession;

import com.sy.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sy.service.UserService;

@Controller
@RequestMapping("/user")

//这里用了@SessionAttributes，可以直接把model中的user(也就key)放入其中
//这样保证了session中存在user这个对象
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
	
	//表单提交过来的路径
	@RequestMapping("/checkLogin")
	public String checkLogin(UserDto userDto, Model model){
		//调用service方法
		userDto = userServivce.checkLogin(userDto.getUserId(), userDto.getUserPwd());
		//若有user则添加到model里并且跳转到成功页面
		if(userDto != null){
			model.addAttribute("user", userDto);
			return "personal";
		}
		return "fail";
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
		return "fail";
	}
}
