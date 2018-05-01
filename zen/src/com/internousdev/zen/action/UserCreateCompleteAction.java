package com.internousdev.zen.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.zen.dao.LoginDAO;
import com.internousdev.zen.dao.ProductListDAO;
import com.internousdev.zen.dao.UserCreateCompleteDAO;
import com.internousdev.zen.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;


public class UserCreateCompleteAction extends ActionSupport implements SessionAware{

	private String family_name;
	private String first_name;
	private String family_name_kana;
	private String first_name_kana;
	private String sex;
	private String email;
	private String loginUserId;
	private String password;
	private Map<String, Object> session;
	
	private String message;
	private final String SUCCESS_MESSAGE = "ユーザーの登録が完了致しました。";
	private final String ERROR_MESSAGE = "ユーザー登録に失敗しました。申し訳ありませんが、もう一度入力してください。";
	
	

	public String execute() throws SQLException{
		String result;
		int confirm = 0;
		
		
		ProductListDAO productDAO = new ProductListDAO();
		LoginDAO loginDAO=new LoginDAO();
    	LoginDTO loginDTO=new LoginDTO();
		UserCreateCompleteDAO userCreateCompleteDAO = new UserCreateCompleteDAO();
				
		family_name = session.get("family_name").toString();
		family_name_kana = session.get("family_name_kana").toString();
		first_name_kana = session.get("first_name_kana").toString();
		sex = session.get("sex").toString();
		email = session.get("email").toString();
		loginUserId = session.get("loginUserId").toString();
		password = session.get("password").toString();
		confirm = userCreateCompleteDAO.createUser(family_name, first_name, family_name_kana, first_name_kana, sex, email, loginUserId, password);
		

		
		if(!(loginUserId.equals(""))){//Idが空欄ではないとき
			if(!(password.equals(""))){//passも空欄ではないとき
				loginDTO =loginDAO.select(loginUserId,password);
				boolean isExistsUser = loginDAO.isExistsUser(loginUserId, password);
				if(!(isExistsUser)){
					return ERROR;
				}
				if(!(loginDAO.existsLoginUserId(loginUserId))){//ユーザーIDがない
					result=ERROR;
				}else{
					//ログイン判定
					if(loginUserId.equals(loginDTO.getLoginUserId()) && password.equals(loginDTO.getLoginPassword())){//二つとも一致した場合
						loginDAO.login(loginDTO);

						result=SUCCESS;

						//Mapセッション情報の更新をする
						session.put("loginUserId",loginDTO.getLoginUserId());
						session.put("password",loginDTO.getLoginPassword());
						session.put("loginFirstName",loginDTO.getFirstName());
						session.put("loginFlg",true);//ログインフラグ立て
					}
				}
			}
		}
		
		
		String tempUserId = null;

		if ((String) session.get("tempUserId") != null) {
			tempUserId = session.get("tempUserId").toString();
			System.out.println("this is tempUserId in LoginAction"+tempUserId);
			int count = loginDAO.replaceUserId(tempUserId, loginUserId);
			if (count == 0) {
				return ERROR;
			}
		}
		
		if(confirm == 0){
			message = ERROR_MESSAGE;
			return ERROR;
		}else{
			message = SUCCESS_MESSAGE;
			return SUCCESS;
		}
		//ゲストが購入使用とした商品をログインしたときに保持する
//	public String  execute(){
//		String result = ERROR;
//		loginDTO = loginDAO.getLoginUserInfo(loginUserId,loginPassword);
//		session.put("loginUser",loginDTO);
//	}
//		if(((ProductDTO) session.get("loginUser")).getLoginFlg()){
//			result = SUCCESS;
//			ProductDTO buyItemDTO = ProductListDAO.getProductListInfo();
//			
//			session.put("login_user_id",loginDTO.getLoginFlg());
//			session.put("id",buyItemDTO.getProduct_id());
//			session.put("buyItem_name",buyItemDTO.getProduct_name_kana());
//			session.put("buyItem_price",buyItemDTO.getPrice());
//		}
//		session.put("loginUser", loginDTO);
	
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


	@Override
	public void setSession(Map<String,Object>session){
		this.session = session;
	}

	public Map<String, Object> getSession() {
		return session;
	}





	public String getLoginUserId() {
		return loginUserId;
	}





	public void setLoginUserId(String loginUserId) {
		this.loginUserId = loginUserId;
	}





	public String getMessage() {
		return message;
	}





	public void setMessage(String message) {
		this.message = message;
	}





	public String getSUCCESS_MESSAGE() {
		return SUCCESS_MESSAGE;
	}





	public String getERROR_MESSAGE() {
		return ERROR_MESSAGE;
	}

	
}