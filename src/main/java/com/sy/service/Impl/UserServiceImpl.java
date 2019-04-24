package com.sy.service.Impl;

import com.sy.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sy.dao.UserDao;
import com.sy.service.UserService;

import java.util.List;

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

	@Override
	public boolean findById(String userId){
		UserDto userDto = userDao.findByUserId(userId);
		if(userDto == null){
			return true;
		}
		return false;
	}

	@Override
	public void registerByUserId(UserDto userDto){
		userDao.registerByUserId(userDto);
	}

	/**
	 * 根据id查找用户
	 */
	@Override
	public UserDto findUserById(int id) {
		UserDto user = userDao.findUserById(id);
		return user;
	}

	/**
	 * 查询所有用户
	 */
	@Override
	public List<UserDto> findAll() {
		List<UserDto> allUser = userDao.findAll();
		return allUser;
	}
}
