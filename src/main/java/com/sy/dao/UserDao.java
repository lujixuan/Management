package com.sy.dao;

import org.apache.ibatis.annotations.Param;

import com.sy.dto.UserDto;

import java.util.List;

public interface UserDao {


	/**
	 * 查找用户名和密码
	 *
	 * @param userId 登录用户名
	 * @return
	 */
	UserDto findByUserId(String userId);


	/**
	 * 注册用户和密码
	 * @return
	 */
	void registerByUserId(UserDto userDto);

	void saveUser(UserDto user);

	boolean updateUser(UserDto user);

	boolean deleteUser(int id);

	UserDto findUserById(int id);

	List<UserDto> findAll();
}
