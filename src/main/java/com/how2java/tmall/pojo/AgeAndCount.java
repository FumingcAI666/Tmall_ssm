package com.how2java.tmall.pojo;

public class AgeAndCount {
	private String age;
	
	private int count;
	
	private String category;

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "AgeAndCount [age=" + age + ", count=" + count + ", category=" + category + "]";
	}


}
