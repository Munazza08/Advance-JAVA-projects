package com.employee;

import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class DbListener implements ServletContextListener  
{
	public void contextInitialized(ServletContextEvent evt) 
	{
		ServletContext context=evt.getServletContext();
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/jsp10","root","mysql");
			Statement st=cn.createStatement();
			st.execute("create table if not exists employeeinfo(eid int primary key,firstname varchar(20),lastname varchar(20),phone varchar(20),emailid varchar(50),department varchar(30),salary int,status char(3),unique(phone),unique(emailid))");
			context.setAttribute("st",st);
			st.execute("create table if not exists userinfo(userid varchar(30) primary key,password varchar(20),name varchar(20),phone varchar(20),unique(phone))");
			st.execute("create table if not exists timeinfo(tid int primary key auto_increment,eid int,outtime varchar(20),intime varchar(20),totaltime varchar(20),date date)");
			PreparedStatement pssave=cn.prepareStatement("insert into employeeinfo values(?,?,?,?,?,?,?,?)");
			context.setAttribute("save",pssave);
			PreparedStatement pssearch=cn.prepareStatement("select * from employeeinfo where eid=?");
			context.setAttribute("search",pssearch);
			PreparedStatement psupdate=cn.prepareStatement("update employeeinfo set firstname=?,lastname=?,phone=?,emailid=?,department=?,salary=? where eid=?");
			context.setAttribute("update",psupdate);
			PreparedStatement psdelete=cn.prepareStatement("delete from employeeinfo where eid=?");
			context.setAttribute("delete",psdelete);
			PreparedStatement psusave=cn.prepareStatement("insert into userinfo values(?,?,?,?)");
			context.setAttribute("usave",psusave);
			PreparedStatement psusearch=cn.prepareStatement("select * from userinfo where userid=?");
			context.setAttribute("usearch",psusearch);
			PreparedStatement psemplist=cn.prepareStatement("select eid,firstname,lastname from employeeinfo where status=?");
			context.setAttribute("emplist",psemplist);
			PreparedStatement psoutinsert=cn.prepareStatement("insert into timeinfo(eid,outtime,intime,totaltime,date) values(?,?,?,?,?)");
			context.setAttribute("outinsert",psoutinsert);
			PreparedStatement psstatusupdate=cn.prepareStatement("update employeeinfo set status=? where eid=?");
			context.setAttribute("statusupdate", psstatusupdate);
			PreparedStatement psintimeupdate=cn.prepareStatement("update timeinfo set intime=?,totaltime=? where intime=? and eid=?");
			context.setAttribute("intimeupdate", psintimeupdate);
			PreparedStatement psouttime=cn.prepareStatement("select outtime from timeinfo where intime=? and eid=?");
			context.setAttribute("outtime", psouttime);
			PreparedStatement psanydate=cn.prepareStatement("select * from timeinfo where date=?");
			context.setAttribute("anydate", psanydate);
			PreparedStatement psdatebetween=cn.prepareStatement("select * from timeinfo where date between ? and ?");
			context.setAttribute("datebetween", psdatebetween);
			PreparedStatement psanydate1=cn.prepareStatement("select * from timeinfo where date=? and eid=?");
			context.setAttribute("anydate1", psanydate1);
			PreparedStatement psdatebetween1=cn.prepareStatement("select * from timeinfo where date between ? and ? and eid=?");
			context.setAttribute("datebetween1", psdatebetween1);
			System.out.println("Connedted and table created");
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}
}
