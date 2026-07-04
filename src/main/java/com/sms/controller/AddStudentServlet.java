package com.sms.controller;

import java.io.*;

import com.sms.dao.StudentDAO;
import com.sms.model.Student;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/addStudent")
public class AddStudentServlet extends HttpServlet {
	
        private static final long serialVersionUID=1L;
        
        @Override
        protected void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
        	
        	String name=req.getParameter("name");
        	String email=req.getParameter("email");
        	String course=req.getParameter("course");
        	
        	Student student=new Student(name,email,course);
        	
        	StudentDAO dao=new StudentDAO();
        	
        	boolean status=dao.addStudent(student);
        	
        	if(status) {
        		res.getWriter().println("<h2 style='color:green'>Student Added Sucessfully");
        				
        	}else {
        		res.getWriter().println("<h2 style='color:red'>Failed to Add Student");
        	}
        }
}
