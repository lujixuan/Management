package com.sy.service.Impl;

import com.sy.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sy.dao.UserDao;
import com.sy.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	/* 
	 * 检验用户登录业务
	 * 
	 */
	@Override
	public UserDto checkLogin(String userId, String userPwd) {
		
		UserDto userDto = userDao.findByUserId(userId);
		if(userDto != null && userDto.getUserPwd().equals(userPwd)){
		
			return userDto;
		}
		return null;
	}
}
