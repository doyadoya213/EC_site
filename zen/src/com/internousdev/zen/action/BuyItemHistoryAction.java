package com.internousdev.zen.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.zen.dao.BuyItemHistoryDAO;
import com.internousdev.zen.dto.BuyItemHistoryDTO;
import com.opensymphony.xwork2.ActionSupport;


public class BuyItemHistoryAction extends ActionSupport implements SessionAware{

	private Map<String,Object> session;


		private ArrayList<BuyItemHistoryDTO>buyItemHistoryList;

	    private String message;

	    private int deleteFlg;

	    private String user_id;

        public BuyItemHistoryDAO dao=new BuyItemHistoryDAO();

		public String execute()throws SQLException{

	       String user_id=session.get("loginUserId").toString();

	        buyItemHistoryList=dao.getBuyItemHistory(user_id);

	    if(deleteFlg==1){
	    int res=dao.buyItemHistoryDeleteAll(user_id);
	    if(res>0){
	        this.message="全ての履歴を削除しました。";
	    }else{
		    this.message="削除に失敗しました。";
	    }

	    }
//	    String result = SUCCESS;
//	    return result;
	    return SUCCESS;
	    }


public Map<String, Object> getSession() {
	return session;
}

public void setSession(Map<String, Object> session) {
	this.session = session;
}

public ArrayList<BuyItemHistoryDTO> getBuyItemHistoryList() {
	return buyItemHistoryList;
}

public void setBuyItemHistoryList(ArrayList<BuyItemHistoryDTO> buyItemHistoryList) {
	this.buyItemHistoryList = buyItemHistoryList;
}

public String getMessage() {
	return message;
}

public void setMessage(String message) {
	this.message = message;
}

public int getDeleteFlg() {
	return deleteFlg;
}

public void setDeleteFlg(int deleteFlg) {
	this.deleteFlg = deleteFlg;
}

public String getUser_id() {
	return user_id;
}


public void setUser_id(String user_id) {
	this.user_id = user_id;
}


}

//	public Map<String,Object>session;
//	public ArrayList<BuyItemHistoryDTO> buyItemHistoryDTOList;
//	private String deleteFlg;
//	private String message;
//
//
//	private BuyItemHistoryDAO BuyItemHistoryDAO=new BuyItemHistoryDAO();
//
//
//
//
//	public String execute()throws SQLException{
//
//
//		if(!session.containsKey("user_id")){
//			return ERROR;
//		}
//		if(deleteFlg==null){
//
//			String purchase_history_info=session.get("user_id").toString();
//			buyItemHistoryDTOList = BuyItemHistoryDAO.getBuyItemHistory(purchase_history_info);
//			}else if(deleteFlg.equals("1")){
//				delete();
//			}
//		String result=SUCCESS;
//		return result;
//	}
//
//	public void delete()throws SQLException{
//
//		String userId=session.get("user_id").toString();
//
//		int res= BuyItemHistoryDAO.buyItemHistoryDeleteAll(userId);
//
//		if(res>0){
//			buyItemHistoryDTOList=null;
//			setMessage("商品情報を正しく削除しました。");
//		}else if(res==0){
//			setMessage("商品情報の削除に失敗しました。");
//
//		}
//	}
//
//	public void setDeleteFlg(String deleteFlg){
//		this.deleteFlg=deleteFlg;
//	}
////	@Override
//
//
//
//	public void setSession(Map<String,Object>session){
//		this.session=session;
//	}
//
//	public String getMessage(){
//		return this.message;
//	}
//	public void setMessage(String message){
//		this.message=message;
//	}
//
//	public ArrayList<BuyItemHistoryDTO> getBuyItemHistoryDTOList() {
//		return buyItemHistoryDTOList;
//	}
//
//	public void setBuyItemHistoryDTOList(ArrayList<BuyItemHistoryDTO> buyItemHistoryDTOList) {
//		this.buyItemHistoryDTOList = buyItemHistoryDTOList;
//	}
//
//	public Map<String, Object> getSession() {
//		return session;
//	}
//
//	public String getDeleteFlg() {
//		return deleteFlg;
//	}
//
//
//
//}
//
//
