package com.internousdev.zen.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class DestinationAddAction extends ActionSupport implements SessionAware {
	private String user_id;
	public Map<String, Object> session;

	public String execute() {
		String result=SUCCESS;

		// ログインユーザIDを取得
		user_id = (String) session.get("loginUserId");

		return result;
	}

	// ゲッターセッター
	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
