package com.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@MultipartConfig
public class UploadFile extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out = response.getWriter();
		
		Part p = request.getPart("file");
		String FileName = p.getSubmittedFileName();
		String description = request.getParameter("description");
		String product_name = request.getParameter("product_name");
		String price = request.getParameter("price");
		String category = request.getParameter("category");
		
		//out.println("details: "+FileName+"remark: "+remark);
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejsp","root","user");
		PreparedStatement ps = con.prepareStatement("insert into products(image,description,product_name,price,category) values(?,?,?,?,?)");
		ps.setString(1, FileName);
		ps.setString(2, description);
		ps.setString(3, product_name);
		ps.setString(4, price);
		ps.setString(5, category);
		
		int i = ps.executeUpdate();
		if(i==1) {
			//System.out.println("uploaded successfully");
			String path = getServletContext().getRealPath("")+"images";
			
			File file = new File(path);
			p.write(path+File.separator+FileName);
			System.out.println(path);
		}else {
			System.out.println("problem in server");
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
}
