package com.internousdev.zen.dto;

import java.util.Map;

public class UserCreateDTO {
	private int id;
	private String family_name;
	private String first_name;
	private String family_name_kana;
	private String first_name_kana;
	private String sex;
	private String email;
	private String loginUserId;
	private String password;
	private Map<String, Object> session;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getFamily_name() {
		return family_name;
	}
	
	public void setFamily_name(String family_name) {
		this.family_name = family_name;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getFamily_name_kana() {
		return family_name_kana;
	}
	public void setFamily_name_kana(String family_name_kana) {
		this.family_name_kana = family_name_kana;
	}
	public String getFirst_name_kana() {
		return first_name_kana;
	}
	public void setFirst_name_kana(String first_name_kana) {
		this.first_name_kana = first_name_kana;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUser_id() {
		return loginUserId;
	}
	public void setUser_id(String loginUserId) {
		this.loginUserId = loginUserId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	


}
