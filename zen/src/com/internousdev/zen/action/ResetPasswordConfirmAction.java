package com.internousdev.zen.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ResetPasswordConfirmAction extends ActionSupport implements SessionAware{

	private String loginUserId;
	private String loginPassword;
	private String loginPasswordConfirm;
	private Map<String, Object> session;
	private List<String> loginUserIdList = new ArrayList<String>();
	private List<String> loginPasswordList = new ArrayList<String>();
	private List<String> loginPasswordConfirmList = new ArrayList<String>();

	public String execute() {
		String result=SUCCESS;
		System.out.println("---------------------");
		System.out.println("LOGINID:"+loginUserId);
		System.out.println("PASSWORD:"+loginPassword);
		System.out.println("PASSWORDCONFIRM:"+loginPasswordConfirm);
		System.out.println("---------------------");

		if (!(loginPassword.equals(loginPasswordConfirm))) {
		   loginPasswordList.add("入力されたパスワードが異なります。");
		   result = ERROR;
		}
		if (loginUserId.equals("")) {
			loginUserIdList.add("ログインIDを入力してください。");
			result = ERROR;
		}
		if (loginPassword.equals("")) {
			loginPasswordList.add("パスワードを入力してください。");
			result = ERROR;
		}
		if (loginPasswordConfirm.equals("")) {
			loginPasswordConfirmList.add("パスワード再設定を入力してください。");
			result = ERROR;
		}
		if (loginUserId.length() < 0 && loginUserId.length() > 8) {
			loginUserIdList.add("パスワードは1文字以上8文字以内で表示してください。");
			result = ERROR;
		}
		if (loginPassword.length() < 0 && loginPassword.length() > 16) {
			loginPasswordList.add("パスワードは1文字以上16文字以内で表示してください。");
			result = ERROR;
		}
		if (loginPasswordConfirm.length() < 0 && loginPasswordConfirm.length() > 16) {
			loginPasswordConfirmList.add("パスワードは1文字以上16文字以内で表示してください。");
			result = ERROR;
		}
		if (loginUserId.equals("[^0-9a-zA-Z_]")) {
			loginUserIdList.add("入力は半角英数で入力してください。");
			result = ERROR;
		}
		if (loginPassword.equals("[^0-9a-zA-Z_]")) {
			loginPasswordList.add("入力は半角英数で入力してください。");
			result = ERROR;
		}
		if (loginPasswordConfirm.equals("[^0-9a-zA-Z_]")) {
			loginPasswordConfirmList.add("入力は半角英数で入力してください。");
			result = ERROR;
		}

				return  result;
			}

	public String getLoginUserId() {
		return loginUserId;
	}

	public void setLoginUserId(String loginUserId) {
		this.loginUserId = loginUserId;
	}

	public String getLoginPassword() {
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}

	public String getLoginPasswordConfirm() {
		return loginPasswordConfirm;
	}

	public void setLoginPasswordConfirm(String loginPasswordConfirm) {
		this.loginPasswordConfirm = loginPasswordConfirm;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public List<String> getLoginUserIdList() {
		return loginUserIdList;
	}

	public void setLoginUserIdList(List<String> loginUserIdList) {
		this.loginUserIdList = loginUserIdList;
	}

	public List<String> getLoginPasswordList() {
		return loginPasswordList;
	}

	public void setLoginPasswordList(List<String> loginPasswordList) {
		this.loginPasswordList = loginPasswordList;
	}

	public List<String> getLoginPasswordConfirmList() {
		return loginPasswordConfirmList;
	}

	public void setLoginPasswordConfirmList(List<String> loginPasswordConfirmList) {
		this.loginPasswordConfirmList = loginPasswordConfirmList;
	}



}