package org.studyeasy.dao;

import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.studyeasy.entity.*;

import org.studyeasy.config.DatabaseConfig;

public class UsersDAO {
	public List<UserEntity> listusers(){
		List<UserEntity> usersList = new ArrayList<>();
		Connection connection = DatabaseConfig.getConnection();
		String query = "select * from users";
		PreparedStatement preparedStatement;
		try {
			preparedStatement = connection.prepareStatement(query);
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				usersList.add(new UserEntity(rs.getInt("user_id"), rs.getString("username"), rs.getString("email")));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return usersList;
	}
	
	public void addUser(UserEntity user) {
		try {
			Connection connection = DatabaseConfig.getConnection();
			String userName = user.getUsername();
			String email = user.getEmail();
			String query = "INSERT INTO users (username, email) VALUES (?, ?)";
			PreparedStatement statement = connection.prepareStatement(query);
			statement.setString(1, userName);
			statement.setString(2, email);
			statement.executeUpdate();
			
			} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public void updateUser(UserEntity user) {
		try {
			Connection connection = DatabaseConfig.getConnection();
			String query = "UPDATE users SET username = ?, email = ? WHERE user_id = ?";
			PreparedStatement statement = connection.prepareStatement(query);
			statement.setString(1, user.getUsername());
			statement.setString(2, user.getEmail());
			statement.setInt(3, user.getUser_id());
			statement.executeUpdate();
			
			} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	
	public void deleteUser(int user_id) {
		try {
			Connection connection = DatabaseConfig.getConnection();
			String query = "DELETE FROM users WHERE user_id = ?";
			PreparedStatement statement = connection.prepareStatement(query);
			statement.setInt(1, user_id);
			statement.executeUpdate();
			
			} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public UserEntity findById(int id) {
	    UserEntity user = null;
	    String sql = "SELECT * FROM users WHERE user_id = ?";
	    try (Connection connection = DatabaseConfig.getConnection();
	         PreparedStatement ps = connection.prepareStatement(sql)) {
	        ps.setInt(1, id);
	        try (ResultSet rs = ps.executeQuery()) {
	            if (rs.next()) {
	                user = new UserEntity(
	                        rs.getInt("user_id"),
	                        rs.getString("username"),
	                        rs.getString("email")
	                );
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return user;
	}

}
