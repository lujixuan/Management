package com.sy.service;


import com.sy.dto.UserDto;

import java.util.List;

//Service层接口
public interface UserService {
	
	//检验用户登录
	UserDto checkLogin(String userId, String userPwd);

	boolean findById(String userId);

	void registerByUserId(UserDto userDto);

	UserDto findUserById(int id);

	List<UserDto> findAll();
}
