package com.internousdev.zen.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.zen.util.DBConnector;

		public class UserCreateIdCheckDAO {

		
			public static boolean getloginUserId(String loginUserId) {

				DBConnector db = new DBConnector();
				Connection con = db.getConnection();
				boolean result = false;

				String sql = "SELECT * FROM user_info WHERE user_id = ? ";

				
				try {
					PreparedStatement preparedStatement = con.prepareStatement(sql);
					preparedStatement.setString(1, loginUserId);

					ResultSet rs = preparedStatement.executeQuery();

					if (rs.next()) {
						result = true;
					}
					
					
				} catch (Exception e) {
					e.printStackTrace();
					
					
				} finally {
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}

				return result;

			}

		
	}


