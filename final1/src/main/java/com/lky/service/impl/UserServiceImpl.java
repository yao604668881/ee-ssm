package com.lky.service.impl;

import com.lky.entity.User;
import com.lky.mapper.UserMapper;
import com.lky.service.UserService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    SqlSession sqlSession;
    @Override
    @Transactional(readOnly = true)
    public User getUser(String username, String password) {
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        User user = mapper.getUser(username, password);
        System.out.println(user);
        return user;
    }
    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void insertUser(String username, String password) {
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        mapper.saveUser(username, password);
    }
}