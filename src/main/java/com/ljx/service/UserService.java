package com.ljx.service;


import com.ljx.dto.HomeTaskGraphDto;
import com.ljx.dto.UserDto;

import java.util.List;

//Service层接口
public interface UserService {
	
	//检验用户登录
	UserDto checkLogin(String userId, String userPwd);

	boolean findById(String userId);

	void registerByUserId(UserDto userDto);

	List<HomeTaskGraphDto> homeTaskGraph(int projectId);
}
