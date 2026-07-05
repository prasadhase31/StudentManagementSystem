package com.sms.controller;

import java.io.IOException;
import java.util.List;

import com.sms.dao.StudentDAO;
import com.sms.model.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewStudents")
public class ViewStudentsServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        StudentDAO dao = new StudentDAO();

        List<Student> studentList = dao.getAllStudents();

        request.setAttribute("studentList", studentList);

        request.getRequestDispatcher("viewStudents.jsp")
               .forward(request, response);
    }
}