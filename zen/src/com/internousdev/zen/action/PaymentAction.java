package com.internousdev.zen.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.zen.dao.CartDAO;
import com.internousdev.zen.dao.DestinationAddDAO;
import com.internousdev.zen.dto.CartDTO;
import com.internousdev.zen.dto.DestinationAddDTO;
import com.internousdev.zen.util.CSRFUtil;
import com.opensymphony.xwork2.ActionSupport;

public class PaymentAction extends ActionSupport implements SessionAware {
	private String user_id;
	private String loginUserId;
	private Map<String, Object> session;

	private ArrayList<CartDTO> cartList;
	private String errorCartList;

	public CartDAO cartDAO = new CartDAO();
	public CartDTO cartDTO = new CartDTO();

	private String token;
	private int latestAddress;
	private ArrayList<DestinationAddDTO> addressList = new ArrayList<DestinationAddDTO>();

	public String execute() throws SQLException {
		String result = SUCCESS;
		String loginFlg = "yes";

		user_id = (String) session.get("loginUserId");

		if (user_id == null) {
			session.put("target", "payment");
			return "login";
		}

		cartList = cartDAO.select(user_id, loginFlg);

		if (cartList.isEmpty()) {
			errorCartList = "商品をお選びください。";
			return ERROR;
		}
		// PaymentDAO paymentDAO=new PaymentDAO();
		// ArrayList<PaymentDTO>
		// cartList=paymentDAO.getPaymentInfo(loginUserId);

		// 宛先情報選択
		DestinationAddDAO destinationAddDAO = new DestinationAddDAO();
		addressList = destinationAddDAO.getDestinationList(user_id);
		if (!(addressList.isEmpty())) {
			int length = addressList.size();
			latestAddress = addressList.get(length - 1).getId();
		}

		session.put("latestAddress", latestAddress);
		session.put("addressList", addressList);

		token = new CSRFUtil().makeToken();
		session.put("token", token);

		return result;

	}

	public String getLoginUserId() {
		return loginUserId;
	}

	public void setLoginUserId(String loginUserId) {
		this.loginUserId = loginUserId;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public int getLatestAddress() {
		return latestAddress;
	}

	public void setLatestAddress(int latestAddress) {
		this.latestAddress = latestAddress;
	}

	public String getLoginuserId() {
		return loginUserId;
	}

	public void setLoginuserId(String loginuserId) {
		this.loginUserId = loginuserId;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public ArrayList<DestinationAddDTO> getAddressList() {
		return addressList;
	}

	public void setAddressList(ArrayList<DestinationAddDTO> addressList) {
		this.addressList = addressList;
	}

	public ArrayList<CartDTO> getCartList() {
		return cartList;
	}

	public void setCartList(ArrayList<CartDTO> cartList) {
		this.cartList = cartList;
	}

	public String getErrorCartList() {
		return errorCartList;
	}

	public void setErrorCartList(String errorCartList) {
		this.errorCartList = errorCartList;
	}

}
