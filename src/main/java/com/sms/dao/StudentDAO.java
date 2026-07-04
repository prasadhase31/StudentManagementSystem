package com.sms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.sms.model.Student;
import com.sms.util.DBConnection;
public class StudentDAO {
    
	public boolean addStudent(Student student) {
		
		boolean status=false;
		
		try {
			Connection con=DBConnection.getConnection();
			
			String sql = "insert into Student(name,email,course) values(?,?,?)";
		
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1,student.getName());
			ps.setString(2,student.getEmail());
			ps.setString(3,student.getCourse());
			
			int rows=ps.executeUpdate();
			
			if(rows > 0) {
				status=true;
			}
			ps.close();
			con.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}
