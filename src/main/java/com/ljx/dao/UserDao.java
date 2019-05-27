package com.ljx.dao;

import com.ljx.dto.*;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

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

	List<UserDto> listProjectUser(@Param(value = "projectId") Integer projectId);

	void updatePwd(UserDto userDto);

	HomeTaskGraphDto findTaskGraphData(@Param(value = "projectId") int projectId, @Param(value = "finishDate") Date date);

	List<UserMessage> listUserMessage(@Param(value = "userId") String userId);

	void deleteProjectInfo(@Param(value = "userId")String userId, @Param(value = "projectId")Integer projectId);

	void updateProjectInfo(@Param(value = "userId")String userId, @Param(value = "projectId")Integer projectId, @Param(value = "type") String type);

	List<DountDto> searchDountData(@Param(value = "projectId")Integer projectId);

	Integer searchUnfinishTaskNum(ProjectDto projectDto);


	//UserDto registerByUserId(@Param("userId") String userId,@Param("userPwd") String userPwd,@Param("userName") String userName);
	//UserDto registerByUserId(@Param("userId")String userId,@Param("userPwd")String userPwd,@Param("userName") String userName);
}
