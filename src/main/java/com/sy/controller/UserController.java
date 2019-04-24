package com.sy.controller;

import javax.servlet.http.HttpSession;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sy.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sy.service.UserService;

import java.util.List;

@Controller
@RequestMapping("/user")

//这里用了@SessionAttributes，可以直接把model中的user(也就key)放入其中
//这样保证了session中存在user这个对象
@SessionAttributes("user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
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
		userDto = userService.checkLogin(userDto.getUserId(), userDto.getUserPwd());
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
		if(userService.findById(userDto.getUserId())){
			userService.registerByUserId(userDto);
			model.addAttribute("user", userDto);
			return "personal";
		}
		return "fail";
	}

	/**
	 * 查询所有用户
	 * @param model
	 * @return
	 */
	@RequestMapping("getAllUser")
	public String getAllUser(Model model){
		List<UserDto> user = userService.findAll();
		model.addAttribute("userList",user);
		return "allUser";
	}

	/**
	 * 查询单个用户
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/getUser")
	public String getUser(int id,Model model){
		model.addAttribute("user", userService.findUserById(id));
		return "editUser";
	}

	/**
	 * 分页查询用户信息
	 * @param pn 默认从第一页开始  请求参数
	 * @param model
	 * @return
	 */
	@RequestMapping("userInfo")
	public String getUsers(@RequestParam(value="pn",defaultValue="1")Integer pn, Model model){
		//从第一条开始 每页查询五条数据
		PageHelper.startPage(pn, 5);
		List<UserDto> users = userService.findAll();
		//将用户信息放入PageInfo对象里
		PageInfo page = new PageInfo(users,5);
		model.addAttribute("pageInfo", page);
		return "index";
	}
}
