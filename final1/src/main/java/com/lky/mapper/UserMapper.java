package com.lky.mapper;

import com.lky.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    // 查询指定用户名和密码的User
    User getUser(@Param("username") String username, @Param("password") String password);
    // 保存指定用户名和密码的user
    void saveUser(@Param("username") String username, @Param("password") String password);
}
