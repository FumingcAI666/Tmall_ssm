package com.how2java.tmall.pojo;

public class User {
	private Integer id;
	private String name;
	private String password;
	private String email;
	private String age;
	private String sex;

	private int count;

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age == null ? null : age.trim();
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex == null ? null : sex.trim();
	}

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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password == null ? null : password.trim();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email == null ? null : email.trim();
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", age=" + age
				+ ", sex=" + sex + ", count=" + count + "]";
	}

	public String getAnonymousName() { // name值显示时，保留name中第一个和最后一个字符，屏蔽中间字符，设置为*
		if (null == name)
			return null;

		if (name.length() <= 1)
			return "*";

		if (name.length() == 2)
			return name.substring(0, 1) + "*";

		char[] cs = name.toCharArray();
		for (int i = 1; i < cs.length - 1; i++) {
			cs[i] = '*';
		}
		return new String(cs);
	}
}