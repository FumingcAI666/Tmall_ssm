package com.how2java.tmall.mapper;

import com.how2java.tmall.pojo.AgeAndCount;
import com.how2java.tmall.pojo.User;
import com.how2java.tmall.pojo.UserExample;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    List<User> selectByExample(UserExample example);

	List<User> selectage(@Param(value="category") String category);
}

