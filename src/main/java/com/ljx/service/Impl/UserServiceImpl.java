package com.ljx.service.Impl;

import com.alibaba.fastjson.JSON;
import com.ljx.dto.HomeTaskGraphDto;
import com.ljx.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ljx.dao.UserDao;
import com.ljx.service.UserService;
import org.springframework.ui.Model;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	/**
	 * 用户登录
	 */
	@Override
	public String checkLogin(UserDto userDto, Model model, HttpServletRequest request, HttpServletResponse response) {
		UserDto user = userDao.findByUserId(userDto.getUserId());
		if(user != null && user.getUserPwd().equals(userDto.getUserPwd())){
			model.addAttribute("user", user);
			model.addAttribute("userJson", JSON.toJSON(user));
			operateCookie(userDto, model, request, response);
			return "personal";
		}
		request.setAttribute("error_username","用户名不存在或密码错误！");
		return "login.jsp";
	}

	@Override
	public boolean findById(String userId){
		UserDto userDto = userDao.findByUserId(userId);
		if(userDto == null){
			return true;
		}
		return false;
	}

	@Override
	public String registerByUserId(UserDto userDto, Model model){
		if(findById(userDto.getUserId())){
			userDao.registerByUserId(userDto);
			model.addAttribute("user", userDto);
			return "personal";
		}
		return "register";
	}

	@Override
	public List<HomeTaskGraphDto> homeTaskGraph(int projectId){
		List<HomeTaskGraphDto> homeTaskGraphDtos= new ArrayList<>();
		Date date = new Date();
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		for(int i = 0; i < 7 ; i++){
			homeTaskGraphDtos.add(userDao.findTaskGraphData(projectId, calendar.getTime()));
			calendar.set(Calendar.DAY_OF_MONTH, -1);
		}
		return homeTaskGraphDtos;
	}

	@Override
	public void operateCookie(UserDto userDto, Model model, HttpServletRequest request, HttpServletResponse response){
        Cookie loginIdCookie = new Cookie("loginId", userDto.getUserId());
        Cookie loginPwdCookie = new Cookie("loginPwd", userDto.getUserPwd());
        //设置Cookie的路经
        loginIdCookie.setPath(request.getContextPath()+"/");
        loginPwdCookie.setPath(request.getContextPath()+"/");

        if(userDto.getRememberMe() != null && "on".equals(userDto.getRememberMe())){
            //保存时间为7天
            loginIdCookie.setMaxAge(7*24*60*60);
            loginPwdCookie.setMaxAge(7*24*60*60);
        }else{
            //不保存Cookie
            loginIdCookie.setMaxAge(0);
            loginPwdCookie.setMaxAge(0);
        }
        //加入Cookie到响应头
        response.addCookie(loginIdCookie);
        response.addCookie(loginPwdCookie);
    }
}

