package dao;

import java.sql.*;
import java.io.*;
import java.util.Properties;
public class MyConnection 
{
	private MyConnection() {}
	private static Connection conn;
	static Connection getConnection() throws ClassNotFoundException,SQLException,IOException
	{
		if(conn==null)
		{
			FileReader fr=new FileReader("E:\\Menu\\MyConn.properties");
			Properties p=new Properties();
			p.load(fr);
			
			String driverName=p.getProperty("driverName");
			String url=p.getProperty("url");
			String uname=p.getProperty("uname");
			String upass=p.getProperty("upass");
		
			Class.forName(driverName);
			conn=DriverManager.getConnection(url,uname,upass);
		}
	return conn;
	}
}

