package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BLManager;
import com.pojo.Student;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	Student s=new Student();
	BLManager b=new BLManager();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id1 = request.getParameter("id");
		int id = Integer.parseInt(id1);
		
		s=b.serchById(id);
		HttpSession ses = request.getSession();
		ses.setAttribute("list", s);
		
		response.sendRedirect("Update.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
	
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String mobile=request.getParameter("mobile");
		String dateofbirth=request.getParameter("dateofbirth");
		String gender=request.getParameter("gender");
		String age=request.getParameter("age");
		
		s.setAddress(address);
		s.setAge(age);
		s.setDateofbirth(dateofbirth);
		s.setEmail(email);
		s.setFname(fname);
		s.setGender(gender);
		s.setLname(lname);
		s.setMobile(mobile);
		
		b.updateStud(s);
		
		response.sendRedirect("View.jsp");
	}

}
