package com.how2java.tmall.service;
 
import java.util.List;

import com.how2java.tmall.pojo.User;

public interface UserService {
	//注册 添加用户
	void add(User c);
	//删除用户
    void delete(int id);
    //更改
    void update(User c);
    //获取
    User get(int id);
    //
    List list();
    //判断用户名是否存在
    boolean isExist(String name);
    //
    User get(String name, String password);
    
    // 根据传过来的字符串处理
	List<User> selectage(String category);
}

