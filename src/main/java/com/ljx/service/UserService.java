package com.ljx.service;


import com.ljx.dto.HomeTaskGraphDto;
import com.ljx.dto.UserDto;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

//Service层接口
public interface UserService {

	/**
	 * 检验用户登录
	 * @param userDto
	 * @param model
	 * @param request
	 * @return String
	 */
	String checkLogin(UserDto userDto, Model model, HttpServletRequest request, HttpServletResponse response);

	boolean findById(String userId);

	String registerByUserId(UserDto userDto, Model model);

	List<HomeTaskGraphDto> homeTaskGraph(int projectId);

    void operateCookie(UserDto userDto, Model model, HttpServletRequest request, HttpServletResponse response);
}
