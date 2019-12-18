package com.lky.service;
import com.lky.entity.User;
public interface UserService {
    User getUser(String username, String password);
    void insertUser(String username, String password);
}