package com.ljx.service;


import com.ljx.dto.HomeTaskGraphDto;
import com.ljx.dto.UserDto;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

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

	String registerByUserId(UserDto userDto, Model model, HttpServletResponse response);

	void changePwd(UserDto userDto, Model model,HttpServletResponse response);

	List<HomeTaskGraphDto> homeTaskGraph(int projectId);

    void operateCookie(UserDto userDto, Model model, HttpServletRequest request, HttpServletResponse response);

	String userMessage(String loginUserId, @RequestParam(value="pn",defaultValue="1")Integer pn, Model model);

	void cancelApply(String userId, Integer projectId, HttpServletResponse response);

	void agreeApply(String userId, Integer projectId, String type, HttpServletResponse response);

	void editorAuthority(String userId, Integer projectId, String type, HttpServletResponse response);

	String personal(Integer projectId, String loginUserId, Model model,HttpServletRequest request);


}
