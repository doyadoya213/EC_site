package com.internousdev.zen.dto;

public class MyPageDTO {
    private String familyName;
	private String firstName;
	private String familyNameKana;
    private String firstNameKana;
    private String sex;
    private String email;
    private String userId;
    private String password;

    public String getFamilyName(){
    	return familyName;
    }

    public void setFamilyName(String familyName){
    	this.familyName = familyName;
    }

    public String getFirstName(){
    	return firstName;
    }

    public void setFirstName(String firstName){
    	this.firstName = firstName;
    }

    public String getFamilyNameKana(){
    	return familyNameKana;
    }

    public void setFamilyNameKana(String familyNameKana){
    	this.familyNameKana = familyNameKana;
    }

    public String getFirstNameKana(){
    	return firstNameKana;

    }

    public void setFirstNameKana(String firstNameKana){
    	this.firstNameKana = firstNameKana;
    }

    public String getSex(){
    	return sex;
    }

    public void setSex(String sex){
    	this.sex = sex;
    }

    public String getEmail(){
    	return email;
    }

    public void setEmail(String email){
    	this.email = email;
    }

    public String getUserId(){
    	return userId;
    }

    public void setUserId(String userId){
    	this.userId = userId;
    }

    public String getPassword(){
    	return password;
    }

    public void setPassword(String password){
    	this.password = password;
    }


}
