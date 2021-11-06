package com.ting.dao;

import com.ting.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {

    User queryUser(@Param("username") String username,@Param("password") String password);

    int addUser(User user);

    int update(User user);



}
