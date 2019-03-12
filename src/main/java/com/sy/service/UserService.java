package com.sy.service;


import com.sy.dto.UserDto;

//Service层接口
public interface UserService {
	
	//检验用户登录
	UserDto checkLogin(String userId, String userPwd);

}
