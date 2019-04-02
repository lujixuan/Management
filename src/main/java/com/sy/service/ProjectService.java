package com.sy.service;

import com.sy.dto.UserDto;

public interface ProjectService {



    //检验用户登录
    UserDto checkLogin(String userId, String userPwd);

    boolean findById(String userId);

    void registerByUserId(UserDto userDto);
}
