package com.how2java.tmall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.how2java.tmall.pojo.User;
import com.how2java.tmall.service.UserService;
import com.how2java.tmall.util.Page;

@Controller
@RequestMapping("")
public class AgeController {
	@Autowired
	UserService userService;

	@RequestMapping("admin_ageandcount_list")
	public String ageandcountlist(Model model, Page page) {
		PageHelper.offsetPage(page.getStart(), page.getCount());
		return "admin/listage";
	}

	@RequestMapping("admin_agecount_list")
	public String agelist(Model model, Page page, @RequestParam("category") String category) {
		PageHelper.offsetPage(page.getStart(), page.getCount());
		System.out.println("agelist取到的数据:" + category);
		List<User> ac = (List<User>) userService.selectage(category);
		model.addAttribute("ac", ac);
		System.out.println("agelist要传到页面:" + ac);
		return "admin/listage";
	}
}
