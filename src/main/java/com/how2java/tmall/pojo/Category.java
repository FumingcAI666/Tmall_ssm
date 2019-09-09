package com.how2java.tmall.pojo;

import java.util.List;

public class Category {
	private Integer id;

	private String name;

	// 非数据库
	private int num;

	private String sex;

	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + ", num=" + num + ", sex=" + sex + ", products=" + products
				+ "]";
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	/* 如下是非数据库字段 */
	private List<Product> products;

	private List<List<Product>> productsByRow;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public List<List<Product>> getProductsByRow() {
		return productsByRow;
	}

	public void setProductsByRow(List<List<Product>> productsByRow) {
		this.productsByRow = productsByRow;
	}
}
