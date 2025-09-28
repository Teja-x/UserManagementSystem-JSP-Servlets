package org.studyeasy.controller;

import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.studyeasy.entity.*;

import org.studyeasy.config.DatabaseConfig;
import org.studyeasy.dao.UsersDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/usercontroller")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		switch (page) {
		case "listusers":
			request.setAttribute("title", "List Users");
			listusers(request, response);
			break;
		case "adduser":
			request.setAttribute("title", "Add User");
	        request.getRequestDispatcher("/adduser.jsp").forward(request, response);
	        break;
		case "updateuser":
	        request.setAttribute("title", "Update User");
	        UserEntity user = new UsersDAO().findById(Integer.parseInt(request.getParameter("user_id")));
	        request.setAttribute("user", user);
	        request.getRequestDispatcher("/updateuser.jsp").forward(request, response);
	        break;
		case "deleteuser":
			deleteUser(request, response);
			break;
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		switch (page) {
		case "adduser":
			addUser(request, response);
			break;
		case "updateuser":
			updateUser(request, response);
			break;
		}
	}
	
	public void listusers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		List<UserEntity> usersList = new ArrayList<>();
		usersList = new UsersDAO().listusers();
		request.setAttribute("userslist", usersList);
		request.getRequestDispatcher("/listusers.jsp").forward(request, response);
	}
	
	public void addUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		UserEntity user = new UserEntity(request.getParameter("uname"), request.getParameter("emailId"));
		new UsersDAO().addUser(user);
		listusers(request, response);
		//request.getRequestDispatcher("/listusers.jsp").forward(request, response);
	}
	
	public void updateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int id = Integer.parseInt(request.getParameter("user_id"));
		UserEntity user = new UserEntity(id, request.getParameter("uname"), request.getParameter("emailId"));
		new UsersDAO().updateUser(user);
		listusers(request, response);
		//request.getRequestDispatcher("/listusers.jsp").forward(request, response);
	}
	
	public void deleteUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//UserEntity user = new UserEntity(request.getParameter("username"), request.getParameter("email"));
		int id = Integer.parseInt(request.getParameter("user_id"));
		new UsersDAO().deleteUser(id);
		listusers(request, response);
		//request.getRequestDispatcher("/listusers.jsp").forward(request, response);
	}

}
