package org.studyeasy.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.*;
import java.io.IOException;
import org.studyeasy.*;
import org.studyeasy.dao.UsersDAO;
import org.studyeasy.entity.UserEntity;


@WebServlet("/home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		switch (page) {
		case "home":
			request.setAttribute("title", "Homepage");
			request.getRequestDispatcher("/index.jsp").forward(request, response);
			break;
		default:
			request.getRequestDispatcher("/error.jsp").forward(request, response);
			break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
