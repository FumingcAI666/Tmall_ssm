package com.how2java.tmall.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.how2java.tmall.mapper.CategoryMapper;
import com.how2java.tmall.pojo.Category;
import com.how2java.tmall.pojo.CategoryExample;
import com.how2java.tmall.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	CategoryMapper categoryMapper;

	@Override
	public void add(Category category) {
		categoryMapper.insert(category);
	}

	@Override
	public void delete(int id) {
		categoryMapper.deleteByPrimaryKey(id);
	}

	@Override
	public Category get(int id) {
		return categoryMapper.selectByPrimaryKey(id);
	}

	@Override
	public void update(Category category) {
		categoryMapper.updateByPrimaryKeySelective(category);
	}
	
	@Override
	public List<Category> list() {
		CategoryExample example = new CategoryExample();
		example.setOrderByClause("id desc");
		return categoryMapper.selectByExample(example);
	}

	@Override
	public List<Category> listcount() {
		return categoryMapper.selectCountExample();
	}

	@Override
	public List<Category> listsex() {
		return categoryMapper.selectSexExample();
	}
}
