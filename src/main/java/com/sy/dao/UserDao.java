package com.sy.dao;

import org.apache.ibatis.annotations.Param;

import com.sy.dto.UserDto;

public interface UserDao {
	
	
	/**
	 * 查找用户名和密码
	 * @param userId 登录用户名
	 * @return
	 */
	UserDto findByUserId(String userId);

	
	/**
	 * 注册用户和密码
	 * @param username 用户名
	 * @param password 密码
	 * @return
	 */
	//UserDto registerByUsernameAndPassword(@Param("username")String username,@Param("password")String password);
}
