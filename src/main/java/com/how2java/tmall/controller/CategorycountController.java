package com.how2java.tmall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import com.how2java.tmall.pojo.Category;
import com.how2java.tmall.service.CategoryService;
import com.how2java.tmall.util.Page;
import com.github.pagehelper.PageHelper;

@Controller
@RequestMapping("")
public class CategorycountController {
	@Autowired
	CategoryService categoryService;

	@RequestMapping("admin_categorycount_list")
	public String list(Model model, Page page) {
		PageHelper.offsetPage(page.getStart(),page.getCount());
		
        List<Category> cs= (List<Category>)categoryService.listcount();
       
        System.out.println("CategorycountController从数据库取到的数据："+cs);
        model.addAttribute("cs", cs);
        
        return "admin/listCategorycount";
	}
	
	
	@RequestMapping("admin_sexandcount_list")
	public String sexlist(Model model, Page page) {
		PageHelper.offsetPage(page.getStart(),page.getCount());
		
        List<Category> sexlist= (List<Category>)categoryService.listsex();
        
        System.out.println("从数据库取到的东西："+sexlist);
        
        model.addAttribute("sexlist", sexlist);
        
        return "admin/listsex";
	}


}
