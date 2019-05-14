package com.ljx.dao;

import com.ljx.dto.HomeTaskGraphDto;
import com.ljx.dto.UserDto;
import org.apache.ibatis.annotations.Param;

import java.util.Date;

public interface UserDao {
	
	
	/**
	 * 查找用户名和密码
	 * @param userId 登录用户名
	 * @return
	 */
	UserDto findByUserId(String userId);

	
	/**
	 * 注册用户和密码
	 * @return
	 */
	void registerByUserId(UserDto userDto);

	HomeTaskGraphDto findTaskGraphData(@Param(value = "projectId") int projectId, @Param(value = "finishDate") Date date);

	//UserDto registerByUserId(@Param("userId") String userId,@Param("userPwd") String userPwd,@Param("userName") String userName);
	//UserDto registerByUserId(@Param("userId")String userId,@Param("userPwd")String userPwd,@Param("userName") String userName);
}
